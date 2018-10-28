Fabricator(:shout) do
  body "test shout body"
  user { Fabricate(:user) }
end
