require "rails_helper"

describe "welcome index" do
  describe "displays" do
    it "brings me to the search page when I select a nation and click submit" do
      visit "/"

      expect(page).to have_select('nation', :selected => 'Fire Nation')

      click_button("Search For Members")

      expect(current_path).to eq('/search')
    end
  end
end
