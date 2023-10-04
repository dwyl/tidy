defmodule TidyWeb.ObjectLive.FormComponent do
  use TidyWeb, :live_component

  alias Tidy.Object

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        <%= @title %>
        <:subtitle>Use this form to manage object records in your database.</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="object-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input field={@form[:name]} type="text" label="Name" />
        <.input field={@form[:desc]} type="text" label="Desc" />
        <.input field={@form[:color]} type="text" label="Color" />
        <.input field={@form[:person_id]} type="number" label="Person" />
        <.input field={@form[:owner_id]} type="number" label="Owner" />
        <.input field={@form[:location]} type="text" label="Location" />
        <.input field={@form[:status]} type="number" label="Status" />
        <:actions>
          <.button phx-disable-with="Saving...">Save Object</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{object: object} = assigns, socket) do
    changeset = Object.change_object(object)

    {:ok,
     socket
     |> assign(assigns)
     |> assign_form(changeset)}
  end

  @impl true
  def handle_event("validate", %{"object" => object_params}, socket) do
    changeset =
      socket.assigns.object
      |> Object.change_object(object_params)
      |> Map.put(:action, :validate)

    {:noreply, assign_form(socket, changeset)}
  end

  def handle_event("save", %{"object" => object_params}, socket) do
    save_object(socket, socket.assigns.action, object_params)
  end

  defp save_object(socket, :edit, object_params) do
    case Object.update_object(socket.assigns.object, object_params) do
      {:ok, object} ->
        notify_parent({:saved, object})

        {:noreply,
         socket
         |> put_flash(:info, "Object updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      # coveralls-ignore-next-line
      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp save_object(socket, :new, object_params) do
    case Object.create_object(object_params) do
      {:ok, object} ->
        notify_parent({:saved, object})

        {:noreply,
         socket
         |> put_flash(:info, "Object created successfully")
         |> push_patch(to: socket.assigns.patch)}

      # coveralls-ignore-next-line
      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    assign(socket, :form, to_form(changeset))
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end
