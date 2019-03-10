# distillery_phoenix

This is sample application of [phoenix](https://github.com/phoenixframework/phoenix) with [distillery](https://github.com/bitwalker/distillery).

## How to build release

```
$ mix deps.get
$ MIX_ENV=prod mix release
```

## Running migrations

```
$ DATABASE_URL=DATABASE_URL _build/prod/rel/distillery_phoenix/bin/distillery_phoenix create_database
$ DATABASE_URL=DATABASE_URL _build/prod/rel/distillery_phoenix/bin/distillery_phoenix migrate
$ DATABASE_URL=DATABASE_URL _build/prod/rel/distillery_phoenix/bin/distillery_phoenix seed
```

##  Runtime configuration

```
$ POOL=50 _build/prod/rel/distillery_phoenix/bin/distillery_phoenix console
iex>:observer.start()
```
