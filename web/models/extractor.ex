defmodule TradingApi.Extractor do
  use HTTPoison.Base

  @domain "https://rates.fxcm.com/ShowAllCharts?s=EURUSD&period=short&page=mobile_m"

  def process_url(url) do
    @domain
  end

  def process_response_body(html) do

    %{
      data: Floki.find(html, "b")
      |> List.first
      |> elem(2)
      |> List.first
      |> String.split(" /")
      |> List.first
      |> String.to_float
      |> IO.inspect

    }

    # |> Enum.fetch(0)
    # |> Enum.map(&TradingApi.Extractor.extract_data/1)
  end

  def fetch do
    TradingApi.Extractor.start
    case TradingApi.Extractor.get("/") do
      {:ok, response}   -> {:ok, response.body}
      {:error, reason}  -> {:ok, "Something went wrong"}
    end
  end

end
