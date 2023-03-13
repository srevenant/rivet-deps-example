defmodule Example.Repo do
  @moduledoc false
  use Ecto.Repo,
    otp_app: :example,
    adapter: Ecto.Adapters.Postgres
end
