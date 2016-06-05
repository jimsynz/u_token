# µToken

Micro token generates random tokens from predefined or arbitrary collections of characters.  It's pretty simple really.

## Examples

    iex> UToken.generate # defaults to (:alphanumeric, 8)
    "B8V6n4Os"

    iex> UToken.generate(:alphanumeric, 12)
    "X7ztA2POWRo3"

    iex> UToken.generate(:alpha)
    "kcnxdAsO"

    iex> UToken.generate(:numeric)
    "40042837"

    iex> UToken.generate(:upper_alpha)
    "LNUHPOGQ"

    iex> UToken.generate(:lower_alpha)
    "hohrykwd"

    iex> ~w| 🤓 😎 😉 😇 😅 😑 😡 | |> UToken.generate
    "😅😉😎🤓😡🤓🤓😡"


## Installation

[Available in Hex](https://hex.pm/packages/u_token), the package can be installed as:

  1. Add u_token to your list of dependencies in `mix.exs`:

        def deps do
          [{:u_token, "~> 0.0.1"}]
        end

