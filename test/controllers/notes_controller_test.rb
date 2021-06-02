require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note = Note.find_by title: "Old"
  end

  test "should get index" do
    get notes_url, as: :json
    assert_response :success
  end

  test "index should be ordered from newest to oldest" do
    get notes_url, as: :json
    results = JSON.parse @response.body, symbolize_names: true
    assert_equal %w(New Old Older), results.first(3).map{|r| r[:title] }
  end

  test "should filter properly, including substrings" do
    get notes_url,
      params: { filters: { title: 'hello' } },
      as: :json
    assert_response :success
    results = JSON.parse @response.body, symbolize_names: true
    assert_equal(
      ["Hello world!", "hello_world", "hello\\ world", "world_hello"],
      results.map{|r| r[:title] },
    )
  end

  test "should filter case insensitively" do
    get notes_url,
      params: { filters: { title: 'old' } },
      as: :json
    assert_response :success
    results = JSON.parse @response.body, symbolize_names: true
    assert_equal(
      ["Old", "Older", "This one is a little older"],
      results.map{|r| r[:title] },
    )
  end

  test "should escape SQL pattern special characters" do
    {
      '%' => ["Today's humidity: 70%"],
      '_' => ["hello_world", "world_hello"],
      '\\' => ["hello\\ world"],
      '\'' => ["Today's humidity: 70%"],
    }.each do |char, expected_results|
      get notes_url,
        params: { filters: { title: char } },
        as: :json
      assert_response :success
      results = JSON.parse @response.body, symbolize_names: true
      assert_equal expected_results, results.map {|attrs| attrs[:title]}
    end
  end

  test "should search every keyword without specific order" do
    get notes_url,
      params: { filters: { title: 'world hello' } },
      as: :json
    assert_response :success
    results = JSON.parse @response.body, symbolize_names: true
    assert_equal(
      ["Hello world!", "hello_world", "hello\\ world", "world_hello"],
      results.map{|r| r[:title] },
    )
  end

  test "should get new" do
    get new_note_url
    assert_response :success
  end

  test "should create note" do
    assert_difference('Note.count') do
      post notes_url,
        params: { note: { body: @note.body, title: @note.title } }
    end

    assert_redirected_to note_url Note.last
  end

  test "should show note" do
    get note_url(@note), as: :json
    assert_response :success
  end

  test "should get edit" do
    get edit_note_url(@note)
    assert_response :success
  end

  test "should update note" do
    patch note_url(@note),
      params: { note: { body: @note.body, title: @note.title } }
    assert_redirected_to note_url @note
  end

  test "should destroy note" do
    assert_difference('Note.count', -1) do
      delete note_url(@note)
    end

    assert_redirected_to notes_url
  end
end
