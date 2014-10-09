defmodule ExLingr.SessionTest do
  use ExUnit.Case

  @username System.get_env("LINGR_USERNAME")
  @password System.get_env("LINGR_PASSWORD")

  setup do
    ExLingr.start
  end

  test "create session" do
    json = ExLingr.creat_session System.get_env(@username, @password)
    assert json["session"] == ExLingr.Config.get
  end

  test "verify session" do
    json = ExLingr.verify_session
    assert json["session"] == ExLingr.Config.get
  end

  test "destroy session" do
    ExLingr.destroy_session
    assert [] == ExLingr.Config.get
  end
end
