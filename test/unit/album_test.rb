require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
test "should not save album without title" do
  album = Album.new
  assert !album.save
end

test "should report error" do
  # some_undefined_variable is not defined elsewhere in the test case
  some_undefined_variable
  assert true
end

end
