# PhxDigest

** elixir 脚本生成的打包前端代码工具 **

## Required

```
Erlang/OTP 22 [erts-10.7.2.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

Elixir 1.10.4 (compiled with Erlang/OTP 21)
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `phx_digest` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:phx_digest, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/phx_digest](https://hexdocs.pm/phx_digest).


## How to Use

* build it first : `mix escript.build`
* then run : `./phx_digest priv/static priv/static`