require 'test_helper'

class MeetingEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get meeting_entries_new_url
    assert_response :success
  end

end
