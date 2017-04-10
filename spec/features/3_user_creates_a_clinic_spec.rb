require "rails_helper"

describe "user creates a clinic" do
  let!(:clinic_count) { Clinic.count }

  before(:each) do
    visit new_clinic_path
  end

  xit "creates a new clinic with valid data" do
    fill_in("Title", with: "Blitz of Baked Goods")
    fill_in("Description", with: "Carbohydrates plus oven equals delicious.")
    fill_in("Offered at", with: "04/10/2017, 3:00 PM")
    click_button("Create Clinic")

    expect(page).to have_content("Clinic was successfully created.")
    expect(Clinic.count).to eq(clinic_count + 1)
  end

  xit "fails to create a clinic with invalid data" do
    fill_in("Description", with: "Carbohydrates plus oven equals delicious.")
    click_button("Create Clinic")

    expect(find_field("clinic_description").value).to eq("Carbohydrates plus oven equals delicious.")
    expect(page).to have_content("Title can't be blank")
    expect(Clinic.count).to eq(clinic_count)
  end
end
