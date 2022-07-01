# PhxDigest

** elixir 脚本生成的打包前端代码工具 **

## Required
- v1.5.6(phoenix v1.5.6)
```
Erlang/OTP 22 [erts-10.7.2.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

Elixir 1.10.4 (compiled with Erlang/OTP 21)
```
- v1.6.10(phoenix v1.6.10)
```
Erlang/OTP 24 [erts-12.2] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit]

Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `phx_digest` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:phx_digest, "~> 1.6.10"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/phx_digest](https://hexdocs.pm/phx_digest).


## How to Use
- v1.5.6
* build it first : `mix escript.build`
* then run : `./phx_digest priv/static priv/static`

- v1.6.10
* build it first : `mix escript.build`
* then run : `./phx_digest priv/static priv/static`
* `mix phx.digest.clean --all -o priv/static`: `./phx_digest clean_all priv/static`
* `mix phx.digest.clean --age 600 --keep 3`: `./phx_digest clean priv/static 600 3`

