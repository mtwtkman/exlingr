defmodule ExLingr.SessionTest do
  use ExUnit.Case

  @username System.get_env("LINGR_USERNAME")
  @password System.get_env("LINGR_PASSWORD")

  test "session interfaces run correctly" do
    json = ExLingr.create_session @username, @password
    assert json["session"] == ExLingr.Config.get
    assert json["session"] == (ExLingr.verify_session)["session"]
    ExLingr.destroy_session
    assert ExLingr.destroy_session == nil
  end
end
