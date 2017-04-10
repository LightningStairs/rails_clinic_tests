require "rails_helper"

describe "user view clinic details" do
  let!(:clinic) {
    create(:clinic,
      title: "Eben's Totally Awesome Clinic",
      description: "A totally awesome clinic about clinics. It's a meta-clinic.",
      offered_at: Time.now
    )
  }

  before(:each) do
    visit clinic_path(clinic)
  end

  xit "shows the clinic details" do
    expect(page).to have_content("Eben's Totally Awesome Clinic")
    expect(page).to have_content("It's a meta-clinic.")
    expect(page).to have_content(Date.today.to_s)
  end

  xit "links back to the index page" do
    expect(page).to have_link("Back", href: clinics_path)
  end
end
