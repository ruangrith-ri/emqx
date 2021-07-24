defmodule EmqxConfigHelper.MixProject do
  use Mix.Project

  def project do
    [
      app: :emqx_config_helper,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.12",
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
      {:cuttlefish, github: "emqx/cuttlefish", tag: "v4.0.1"},
      {:hocon, github: "emqx/hocon"}
    ]
  end
end