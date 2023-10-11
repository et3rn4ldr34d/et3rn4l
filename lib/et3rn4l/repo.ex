defmodule Et3rn4l.Repo do
  use Ecto.Repo,
    otp_app: :et3rn4l,
    adapter: Ecto.Adapters.Postgres
end
