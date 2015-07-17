require 'rails_helper'

describe "the add a skill process" do
  it "adds a new skill" do
    visit skills_path
    click_on 'Add a Skill'
    fill_in 'Name', :with => 'Ruby'
    click_on 'Create Skill'
    expect(page).to have_content 'Skills'
  end

  it "gives error when no skill is entered" do
    visit new_skill_path
    click_on 'Create Skill'
    expect(page).to have_content 'errors'
  end
end