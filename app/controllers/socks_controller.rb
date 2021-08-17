class SocksController < ApplicationController
  before_action :skip_authorization, only: :index
  before_action :set_sock, only: [:show, :edit, :update, :destroy]

  def index
    # @socks = Sock.all
    @socks = policy_scope(Sock)
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
    params.require(:sock).permit(:name, :description, :color, :size, :price, :photo_url, :style)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_sock
    @sock = Sock.find(params[:id])
    authorize @sock
  end
end
