defmodule PhxDigest.Gzip do
  @moduledoc ~S"""
  Gzip compressor for Phoenix.Digester
  """
  @gzippable_exts [
    ".js",
    ".map",
    ".css",
    ".txt",
    ".text",
    ".html",
    ".json",
    ".svg",
    ".eot",
    ".ttf"
  ]
  def compress_file(file_path, content) do
    if Path.extname(file_path) in @gzippable_exts do
      {:ok, :zlib.gzip(content)}
    else
      :error
    end
  end

  def file_extensions do
    [".gz"]
  end
end
