defmodule Phoenixchat.Repo do
  use Ecto.Repo,
    otp_app: :phoenixchat,
    adapter: Ecto.Adapters.Postgres
end
