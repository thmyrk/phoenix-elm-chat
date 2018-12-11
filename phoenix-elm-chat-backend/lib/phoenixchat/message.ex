defmodule Phoenixchat.Message do
  use Ecto.Schema
  import Ecto.Changeset

  def get_messages(limit \\ 20) do
    Phoenixchat.Repo.all(Phoenixchat.Message, limit: limit)
  end

  schema "messages" do
    field :message, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:name, :message])
    |> validate_required([:name, :message])
  end
end
