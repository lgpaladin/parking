require "application_system_test_case"

class ParksTest < ApplicationSystemTestCase
  setup do
    @park = parks(:one)
  end

  test "visiting the index" do
    visit parks_url
    assert_selector "h1", text: "Parks"
  end

  test "creating a Park" do
    visit parks_url
    click_on "New Park"

    fill_in "Address", with: @park.address
    fill_in "Building type", with: @park.building_type
    fill_in "Car type", with: @park.car_type
    fill_in "Coordinates", with: @park.coordinates
    fill_in "Free place count", with: @park.free_place_count
    fill_in "Place count", with: @park.place_count
    fill_in "Title", with: @park.title
    click_on "Create Park"

    assert_text "Park was successfully created"
    click_on "Back"
  end

  test "updating a Park" do
    visit parks_url
    click_on "Edit", match: :first

    fill_in "Address", with: @park.address
    fill_in "Building type", with: @park.building_type
    fill_in "Car type", with: @park.car_type
    fill_in "Coordinates", with: @park.coordinates
    fill_in "Free place count", with: @park.free_place_count
    fill_in "Place count", with: @park.place_count
    fill_in "Title", with: @park.title
    click_on "Update Park"

    assert_text "Park was successfully updated"
    click_on "Back"
  end

  test "destroying a Park" do
    visit parks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Park was successfully destroyed"
  end
end
