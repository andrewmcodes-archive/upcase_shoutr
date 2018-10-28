require "test_helper"

describe Shout do
  subject { Fabricate(:shout) }

  it { assert subject.valid? }
  it { assert_kind_of Shout, subject }
  it { assert subject.user_id }
  it { assert subject.body }

end
