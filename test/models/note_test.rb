require "test_helper"

class NoteTest < ActiveSupport::TestCase
  test "should not save note without title" do
    note = Note.new
    assert_not note.save, "Saved note without a title"
  end

  test "should not save note without body" do
    note = Note.new
    assert_not note.save, "Saved note without a body"
  end
end
