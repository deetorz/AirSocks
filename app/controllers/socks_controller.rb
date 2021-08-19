class SocksController < ApplicationController
  before_action :authenticate_user!, except: [ :home, :index, :show]
  before_action :set_sock, only: [:show, :edit, :update, :destroy]

  def index
    # @socks = Sock.all
    @socks = policy_scope(Sock)
    if params[:query].present?
      sql_query = " \
      socks.name @@ :query \
      OR socks.description @@ :query \
      OR socks.color @@ :query \
      OR socks.style @@ :query \
      OR socks.address @@ :query \
      "
      @socks = Sock.where(sql_query, query: "%#{params[:query]}%")
    else
      @socks = policy_scope(Sock)
    end
    # the `geocoded` scope filters only socks with coordinates (latitude & longitude)
    @markers = @socks.geocoded.map do |sock|
      {
        lat: sock.latitude,
        lng: sock.longitude,
        info_window: render_to_string(partial: "info_window", locals: { sock: sock })
      }
    end
  end

  def show
  end

  def new
    @sock = Sock.new
    authorize @sock
  end

  def create
    @sock = Sock.new(sock_params)
    @sock.user = current_user
    authorize @sock
    if @sock.save
      redirect_to @sock, notice: 'Sock added!'
    else
      render :new
    end
  end

  private

  def sock_params
    params.require(:sock).permit(:name, :description, :color, :size, :price, :photo, :style, :address)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_sock
    @sock = Sock.find(params[:id])
    authorize @sock
  end
end
