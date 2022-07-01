defmodule PhxDigest.MixProject do
  use Mix.Project

  def project do
    [
      app: :phx_digest,
      version: "1.5.6",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript(),
      description: description(),
      package: package(),
      source_url: "https://github.com/yangcancai/phx_digest"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jsx, "~> 3.0.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp escript do
    [main_module: PhxDigest.CLI]
  end
  defp description() do
    "a tool com from mix phx.digest"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "phx_digest",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*
                ),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/yangcancai/phx_digest"}
    ]
  end
end
