defmodule KinoLibgraph.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "Libgraph integration with Livebook"
  @source_url "https://github.com/hergetto/kino_libgraph"

  def project do
    [
      app: :kino_libgraph,
      version: @version,
      description: @description,
      name: "KinoLibgraph",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {KinoLibgraph.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:kino, "~> 0.13.0"},
      {:libgraph, "~> 0.16.0"},
      {:ex_doc, "~> 0.34.2", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "components",
      source_url: @source_url,
      source_ref: "v#{@version}",
      extras: ["guides/components.livemd"]
    ]
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => @source_url
      }
    ]
  end
end
