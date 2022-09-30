require "application_system_test_case"

class NoticesTest < ApplicationSystemTestCase
  setup do
    @notice = notices(:one)
  end

  test "visiting the index" do
    visit notices_url
    assert_selector "h1", text: "Notices"
  end

  test "should create notice" do
    visit notices_url
    click_on "New notice"

    fill_in "Cuerpo", with: @notice.cuerpo
    fill_in "Encabezado", with: @notice.encabezado
    fill_in "Link", with: @notice.link
    fill_in "Tipo", with: @notice.tipo
    click_on "Create Notice"

    assert_text "Notice was successfully created"
    click_on "Back"
  end

  test "should update Notice" do
    visit notice_url(@notice)
    click_on "Edit this notice", match: :first

    fill_in "Cuerpo", with: @notice.cuerpo
    fill_in "Encabezado", with: @notice.encabezado
    fill_in "Link", with: @notice.link
    fill_in "Tipo", with: @notice.tipo
    click_on "Update Notice"

    assert_text "Notice was successfully updated"
    click_on "Back"
  end

  test "should destroy Notice" do
    visit notice_url(@notice)
    click_on "Destroy this notice", match: :first

    assert_text "Notice was successfully destroyed"
  end
end
