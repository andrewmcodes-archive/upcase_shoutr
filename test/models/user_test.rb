require "test_helper"

describe User do
  subject { Fabricate(:user) }

  it { assert subject.valid? }
  it { assert_kind_of User, subject }
  it { assert subject.email }
  it { assert subject.username }
  it { assert subject.password }
  it { assert subject.encrypted_password }
  it { assert subject.remember_token }

  describe "associations" do
    it "has shouts" do
      assert defined? subject.shouts
    end
  end
end
