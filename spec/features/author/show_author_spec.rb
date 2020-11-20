require 'rails_helper'

describe "Show author page" do
  it "should show an authors info" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)

    expect(page).to have_text("Alan Turing")
  end
end
