class SocksController < ApplicationController
  def index
    @socks = Sock.all
    @socks = policy_scope(Sock)
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
end
