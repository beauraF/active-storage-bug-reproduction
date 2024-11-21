require "test_helper"

class MessageTest < ActiveSupport::TestCase
  test "uploads an image" do
    message = Message.create!

    assert_nothing_raised do
      message.images.attach(
        io: File.open('test/fixtures/files/boris.jpeg'),
        filename: 'boris.jpeg',
        content_type: 'image/jpeg'
      )
    end
  end
end
