defmodule WascallyWobotsWeb.HelloJSON do
  @doc """
  Renders a message.
  """
  def index(%{message: message}) do
    %{data: %{message: message}}
  end
end
