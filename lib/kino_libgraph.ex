defimpl Kino.Render, for: Graph do
  def to_livebook(graph) do
    graph |> KinoLibgraph.Render.static() |> Kino.Render.to_livebook()
  end
end
