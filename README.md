# KinoLibgraph

[![Docs](https://img.shields.io/badge/hex.pm-docs-8e7ce6.svg)](https://hexdocs.pm/kino_libgraph)
[![build](https://github.com/hergetto/kino_libgraph/actions/workflows/branch-workflow.yml/badge.svg)](https://github.com/hergetto/kino_libgraph/actions/workflows/branch-workflow.yml)

[Libgraph](https://github.com/bitwalker/libgraph) integration with [Kino](https://github.com/livebook-dev/kino) for [Livebook](https://github.com/livebook-dev/livebook) using [vis-network](https://github.com/visjs/vis-network).

## Installation

To use KinoLibgraph with Livebook, you only have to run `Mix.install/2`:

```elixir
Mix.install([
  {:kino_libgraph, "~> 0.1.0"}
])
```

## Example

```elixir
directed_graph =
  Graph.new()
  |> Graph.add_edges([
    {:b, :c, weight: -2},
    {:a, :b, weight: 1},
    {:c, :d, weight: 3},
    {:b, :d, weight: 4}
  ])
```

Outputs:

![Graph](assets/image.png)
