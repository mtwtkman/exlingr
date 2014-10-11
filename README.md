Exlingr
=======

This is client module for Lingr.

At the first, need to run `Exlingr.start`.
Next, run `ExLingr.create_session` to create session.

```sh
iex(1)d> ExLingr.start
{:ok, [:idna, :hackney, :httpoison]}
iex(2)> ExLingr.create_session System.get_env("LINGR_USERNAME"), System.get_env("LINGR_PASSWORD")
%{"nickname" => "boku", "public_id" => "ZTHu0v", "session" => "dSYJgX",
  "status" => "ok", "user" => %{"name" => "boku", "username" => "boku"}}
```
