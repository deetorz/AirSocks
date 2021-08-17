class SocksController < ApplicationController
  before_action :set_sock, only: [:show, :edit, :update, :destroy]
  def index
    # @socks = Sock.all
    @socks = policy_scope(Sock)
  end

  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sock
    @sock = Sock.find(params[:id])
    authorize @sock
  end
end
