defmodule PhxDigest.CLI do
  @default_age 3600
  @default_keep 2
  def main(["clean_all", output_path]) do
    Phoenix.Digester.clean_all(output_path)
  end

  def main(["clean", output_path]) do
    main(["clean", output_path, @default_age, @default_keep])
  end

  def main(["clean", output_path, age, keep]) when is_binary(age) and is_binary(keep) do
    Phoenix.Digester.clean(output_path, String.to_integer(age), String.to_integer(keep))
  end

  def main(["clean", output_path, age, keep]) when is_integer(age) and is_integer(keep) do
    Phoenix.Digester.clean(output_path, age, keep)
  end

  def main([input_path, output_path]) do
    Phoenix.Digester.compile(input_path, output_path, true)
  end
end
