defmodule ChatAppWeb.RoomChannel do
  use Phoenix.Channel

  def join("room:all", _message, socket) do
    {:ok, socket}
  end

  def join("room:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast_from(socket, "new_msg", %{body: body})
    {:noreply, socket}
  end
end
