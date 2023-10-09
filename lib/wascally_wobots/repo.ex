defmodule WascallyWobots.Repo do
  use Ecto.Repo,
    otp_app: :wascally_wobots,
    adapter: Ecto.Adapters.Postgres
end
