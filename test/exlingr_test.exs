defmodule ExLingrTest do
  use ExUnit.Case

  test "startup configure" do
    account_info =
    [ username: System.get_env("LINGR_USERNAME"),
      password: System.get_env("LINGR_PASSWORD") ]
    ExLingr.configure(account_info)

    assert ExLingr.Config.get == account_info
  end
end
