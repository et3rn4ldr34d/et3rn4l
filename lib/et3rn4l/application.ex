defmodule Et3rn4l.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Et3rn4lWeb.Telemetry,
      Et3rn4l.Repo,
      {DNSCluster, query: Application.get_env(:et3rn4l, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Et3rn4l.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Et3rn4l.Finch},
      # Start a worker by calling: Et3rn4l.Worker.start_link(arg)
      # {Et3rn4l.Worker, arg},
      # Start to serve requests, typically the last entry
      Et3rn4lWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Et3rn4l.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Et3rn4lWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
