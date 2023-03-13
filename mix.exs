defmodule Example.MixProject do
  use Mix.Project

  def project do
    [
      app: :example,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:absinthe, "~> 1.7.1", optional: true},
      {:rivet_ident, git: "git@github.com:srevenant/rivet-ident", branch: "master"},
      {:typed_ecto_schema, "~> 0.3.0 or ~> 0.4.1"}
    ]
  end
end
