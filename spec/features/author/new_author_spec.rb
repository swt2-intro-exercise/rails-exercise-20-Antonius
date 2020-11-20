require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end

  it "should have input page for author info" do
    visit new_author_path
    
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should provide a submission process" do
    visit new_author_path

    page.fill_in 'author[last_name]', with: 'Hopper'
    page.fill_in 'author[first_name]', with: 'Grace'     
    page.fill_in 'author[homepage]', with: 'https://gi.de/persoenlichkeiten/grace-hopper'

    find('input[type="submit"]').click
  end
end
