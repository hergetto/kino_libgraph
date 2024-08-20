import vis from "vis-network";

export function init(ctx, content) {
  const { nodes, edges, type } = content;

  const container = ctx.root;

  const data = {
    nodes,
    edges,
  };

  const options = {
    autoResize: true,
    height: "400px",
    edges: {
      arrows: {
        to: {
          enabled: type === "directed",
        },
      },
    },
  };

  new vis.Network(container, data, options);
}
