defmodule ExLingr.ConfigTest do
  use ExUnit.Case

  @username System.get_env("LINGR_USERNAME")
  @password System.get_env("LINGR_PASSWORD")
  @account_info [username: @username, password: @password]

  setup do
    ExLingr.Config.set(@account_info)
  end

  test "table has session" do
    assert ExLingr.Config.get != nil
  end
end
