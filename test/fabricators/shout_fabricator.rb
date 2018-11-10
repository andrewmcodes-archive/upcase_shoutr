# frozen_string_literal: true

Fabricator(:shout) do
  body 'test shout body'
  user { Fabricate(:user) }
end
