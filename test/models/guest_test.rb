require "test_helper"

describe Shout do
  subject { Guest.new }

  it { assert_kind_of Guest, subject }
  it { assert subject.email }
  it { assert_equal subject.email, "" }
end
