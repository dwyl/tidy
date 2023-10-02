defmodule Tidy.Repo do
  use Ecto.Repo,
    otp_app: :tidy,
    adapter: Ecto.Adapters.Postgres
end
