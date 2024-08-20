defmodule KinoLibgraph.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    # TODO create SmartCell

    children = []
    opts = [strategy: :one_for_one, name: KinoLibgraph.Supervisor]
    Supervisor.start_link(children, opts)
  end
end