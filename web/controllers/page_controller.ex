defmodule TradingApi.PageController do
  use TradingApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
