defmodule WascallyWobotsWeb.HelloControllerTest do
  use WascallyWobotsWeb.ConnCase

  alias WascallyWobots.Example.Hello

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "hello" do
    test "says hello", %{conn: conn} do
      conn = get(conn, ~p"/api/hello")
      assert json_response(conn, 200)["data"] == %{ "message" => "Hello world!" }
    end
  end
end
