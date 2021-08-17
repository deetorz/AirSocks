class SocksController < ApplicationController
  def index
    @socks = Sock.all
    @socks = policy_scope(Sock)
  end
end
