defmodule TradingApi.AssetController do
  use TradingApi.Web, :controller

  def eurusd(conn, _params) do
    case TradingApi.Extractor.fetch do
      {:ok, response} ->
        json(conn, response)
      {:error, reason} ->
        json(conn, reason)
    end
  end
end
