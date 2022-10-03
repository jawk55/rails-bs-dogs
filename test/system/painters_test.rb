require "application_system_test_case"

class PaintersTest < ApplicationSystemTestCase
  setup do
    @painter = painters(:one)
  end

  test "visiting the index" do
    visit painters_url
    assert_selector "h1", text: "Painters"
  end

  test "should create painter" do
    visit painters_url
    click_on "New painter"

    fill_in "Name", with: @painter.name
    click_on "Create Painter"

    assert_text "Painter was successfully created"
    click_on "Back"
  end

  test "should update Painter" do
    visit painter_url(@painter)
    click_on "Edit this painter", match: :first

    fill_in "Name", with: @painter.name
    click_on "Update Painter"

    assert_text "Painter was successfully updated"
    click_on "Back"
  end

  test "should destroy Painter" do
    visit painter_url(@painter)
    click_on "Destroy this painter", match: :first

    assert_text "Painter was successfully destroyed"
  end
end
