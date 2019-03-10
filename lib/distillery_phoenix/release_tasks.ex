defmodule DistilleryPhoenix.ReleaseTasks do
  @dependencies [
    :postgrex,
    :ecto,
    :ecto_sql
  ]

  def otp_app, do: Application.get_application(__MODULE__)
  def repo, do: otp_app() |> Application.get_env(:ecto_repos) |> List.first()

  def create_database() do
    case repo().__adapter__.storage_up(repo().config) do
      :ok -> "Created"
      {:error, :already_up} -> "Already created"
      _ -> "Fail to create"
    end |> IO.puts()
  end

  def migrate() do
    start_application()
    start_repo()

    repo() |> Ecto.Migrator.run(migration_path(), :up, all: true)

    stop_application()
  end

  def seed() do
    start_application()
    start_repo()

    seed_file_path() |> Code.eval_file()

    stop_application()
  end

  defp start_application() do
    Logger.disable(self())
    @dependencies |> Enum.each(&Application.ensure_all_started/1)
  end

  defp start_repo() do
    repo().start_link(pool_size: 2)
  end

  def stop_application() do
    Logger.enable(self())
    :init.stop()
  end

  defp migration_path, do: priv_path_for("migrations")
  defp seed_file_path, do: priv_path_for("seeds.exs")

  defp priv_path_for(path) do
    Path.join([:code.priv_dir(otp_app()), "repo", path])
  end
end
