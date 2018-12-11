# distillery_phoenix

This is sample phoenix with [distillery](https://github.com/bitwalker/distillery).

```
$ mix deps.get
$ MIX_ENV=prod mix ecto.create
$ MIX_ENV=prod mix release
$ POOL=50 _build/prod/rel/distillery_phoenix/bin/distillery_phoenix console
iex>:observer.start()
```
