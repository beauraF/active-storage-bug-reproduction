require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  test "uploads an image" do
    profile = Profile.create!

    assert_nothing_raised do
      profile.images.attach(
        io: File.open('test/fixtures/files/boris.jpeg'),
        filename: 'boris.jpeg',
        content_type: 'image/jpeg'
      )
    end
  end
end
