defmodule App do
  use Application

  def start(_type, _args) do
    Children = [
      CounterSuperviosr
    ]

    opts = [strategy: :one_for_one, name: App.Superviosr]
    Supervisor.start_link()

    CounterSupervisor
  end






end
