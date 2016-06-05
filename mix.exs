defmodule UToken.Mixfile do
  use Mix.Project

  def project do
    [app: :u_token,
     version: "0.0.2",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  defp description do
    """
    Generates random tokens from arbitrary character sets.
    """
  end

  defp package do
    [
      name: :u_token,
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["James Harton"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jamesotron/u_token",
               "Docs"   => "https://hexdocs.pm/u_token"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.11.5", optional: true}
    ]
  end
end
