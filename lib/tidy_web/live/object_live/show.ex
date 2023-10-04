defmodule TidyWeb.ObjectLive.Show do
  use TidyWeb, :live_view
  alias Tidy.Object

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:object, Object.get_object!(id))}
  end

  defp page_title(:show), do: "Show Object"
  defp page_title(:edit), do: "Edit Object"
end
