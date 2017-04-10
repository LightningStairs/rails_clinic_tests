require "rails_helper"

describe "user views clinics" do
  let!(:clinic1) { create(:clinic, title: "Eben's Totally Awesome Clinic") }
  let!(:clinic2) { create(:clinic, title: "Amanda <3 Dogs") }
  let!(:clinic3) { create(:clinic, title: "Mike's Breakfast Corner") }
  let!(:clinic4) { create(:clinic, title: "Blitz of Baked Goods") }

  before(:each) do
    visit clinics_path
  end

  xit "lists the clinics" do
    expect(page).to have_content("Eben's Totally Awesome Clinic")
    expect(page).to have_content("Amanda <3 Dogs")
    expect(page).to have_content("Mike's Breakfast Corner")
    expect(page).to have_content("Blitz of Baked Goods")
  end

  xit "has links to each clinic" do
    expect(page).to have_link(nil, href: clinic_path(clinic1))
    expect(page).to have_link(nil, href: clinic_path(clinic2))
    expect(page).to have_link(nil, href: clinic_path(clinic3))
    expect(page).to have_link(nil, href: clinic_path(clinic4))
  end

  xit "has a link to create a new clinic" do
    expect(page).to have_link(nil, href: new_clinic_path)
  end
end
