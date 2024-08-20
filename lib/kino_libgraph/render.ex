defmodule KinoLibgraph.Render do
  use Kino.JS, assets_path: "lib/assets/vis-network/build"

  @doc false
  @spec static(Graph.t()) :: Kino.JS.t()
  def static(graph) when is_struct(graph, Graph) do
    data = graph_data(graph)
    Kino.JS.new(__MODULE__, data)
  end

  defp graph_data(graph) do
    nodes =
      Graph.vertices(graph)
      |> Enum.map(&vertex_data(graph, &1))

    edges =
      Graph.edges(graph)
      |> Enum.map(&edge_data(graph, &1))

    %{
      nodes: nodes,
      edges: edges,
      type: graph.type
    }
  end

  defp vertex_data(graph, vertex) do
    labels = Graph.vertex_labels(graph, vertex)

    label =
      if labels == [] do
        vertex
      else
        labels |> Enum.join(", ")
      end

    %{
      id: vertex,
      label: label
    }
  end

  defp edge_data(_graph, %Graph.Edge{} = edge) do
    %{
      from: edge.v1,
      to: edge.v2,
      label: edge.label
    }
  end
end
