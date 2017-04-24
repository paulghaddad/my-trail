require "rails_helper"

feature "User signs up" do
  scenario "using valid credentials" do
    visit new_user_registration_path
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    click_button "Sign up"

    expect(current_path).to eq(root_path)
  end
end
