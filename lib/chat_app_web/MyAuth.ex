defmodule ChatAppWeb.MyAuth do
  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    conn |> assign :current_user, %{id: "001"}
  end
end
