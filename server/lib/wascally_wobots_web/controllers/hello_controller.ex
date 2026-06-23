defmodule WascallyWobotsWeb.HelloController do
  use WascallyWobotsWeb, :controller

  action_fallback WascallyWobotsWeb.FallbackController

  def hello(conn, _params) do
    render(conn, :index, message: "Hello world!")
  end
end
