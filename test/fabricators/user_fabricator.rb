# frozen_string_literal: true

Fabricator(:user) do
  email 'test@test.email.com'
  username 'test.user'
  password 'test.password'
end
