defmodule WascallyWobots.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      WascallyWobotsWeb.Telemetry,
      # Start the Ecto repository
      WascallyWobots.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: WascallyWobots.PubSub},
      # Start Finch
      {Finch, name: WascallyWobots.Finch},
      # Start the Endpoint (http/https)
      WascallyWobotsWeb.Endpoint
      # Start a worker by calling: WascallyWobots.Worker.start_link(arg)
      # {WascallyWobots.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: WascallyWobots.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    WascallyWobotsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
