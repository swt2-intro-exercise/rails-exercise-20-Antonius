require 'rails_helper'

describe "Authors index page", type: :feature do
  
  it "should have table headers for name and homepage" do
    visit authors_path
    
    expect(page).to have_text('Name')
    expect(page).to have_text('Homepage')
  end
  
  it "should link to new authors page" do
    visit authors_path

    expect(page).to have_link('New', href: new_author_path)
  end

end
