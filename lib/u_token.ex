defmodule UToken do
  @lower_alpha_chars  ~w| a b c d e f g h i j k l m n o p q r s t u v w x y z |
  @upper_alpha_chars  ~w| A B C D E F G H I J K L M N O P Q R S T U V W X Y Z |
  @numeric_chars      ~w| 0 1 2 3 4 5 6 7 8 9 |
  @alpha_chars        @lower_alpha_chars ++ @upper_alpha_chars
  @alphanumeric_chars @alpha_chars ++ @numeric_chars

  @moduledoc """
  Generates a random token of arbitrary length out of the character set specified.
  """

  @doc """
  Generates a random token based on either the name of a predefined character
  set or a passed in enumerable.

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

  """
  def generate() do
    generate(:alphanumeric, 8)
  end

  def generate(length) when is_integer(length) do
    generate(:alphanumeric, length)
  end

  def generate(charset) do
    generate(charset, 8)
  end

  def generate(_charset, 0), do: ""

  def generate(:alphanumeric, length) do
    generate(@alphanumeric_chars, length)
  end

  def generate(:alpha, length) do
    generate(@alpha_chars, length)
  end

  def generate(:numeric, length) do
    generate(@numeric_chars, length)
  end

  def generate(:upper_alpha, length) do
    generate(@upper_alpha_chars, length)
  end

  def generate(:lower_alpha, length) do
    generate(@lower_alpha_chars, length)
  end

  def generate(enumerable, length) do
    char = enumerable |> Enum.random
    char <> generate(enumerable, length - 1)
  end
end
