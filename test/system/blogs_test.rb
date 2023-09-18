require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  test "creating a valid Blog" do
    visit blogs_url
    click_on "New blog"

    fill_in "Title", with: 'Hello'
    fill_in "Content", with: 'World!'
    click_on "Create Blog"

    assert_text "Blog was successfully created"
  end

  test "creating an invalid Blog" do
    visit blogs_url
    click_on "New blog"

    fill_in "Title", with: ''
    fill_in "Content", with: 'World!'
    click_on "Create Blog"

    assert_text "The change you wanted was rejected." # fails
  end
end
