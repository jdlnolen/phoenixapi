defmodule TradingApi.Router do
  use TradingApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TradingApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", TradingApi do
    pipe_through :api
    get "/eurusd", AssetController, :eurusd
  end

  # Other scopes may use custom stacks.
  # scope "/api", TradingApi do
  #   pipe_through :api
  # end
end
