# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     DistilleryPhoenix.Repo.insert!(%DistilleryPhoenix.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

%DistilleryPhoenix.Article{
  title: "This is awesome",
  body: "AWESOME!!"
} |> DistilleryPhoenix.Repo.insert!()
