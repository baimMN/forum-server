defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "alice", email: "alice@email.com"},
      %{id: 1, name: "bob", email: "bob@email.com"},
    ]
    json(conn, %{data: users})
  end
end
