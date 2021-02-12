require "rails_helper"

describe "search index" do
  describe "displays" do
    it "shows a list of all the nations members" do
      visit "/search"

      expect(page).to have_content("Afiko")
      expect(page).to have_content("Azula")
    end
  end
end
