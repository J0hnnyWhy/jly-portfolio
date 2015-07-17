require 'rails_helper'

describe "add an experience process" do
  it "adds an experience" do
    skill = Skill.create(:name => 'html')
    visit skill_path(skill.id)
    click_on 'Add an Experience'
    fill_in 'Description', :with => 'done that'
    click_on 'Create Experience'
    expect(page).to have_content 'done that'
  end

  it "returns an error if not filled in" do
    skill = Skill.create(:name => 'html')
    visit skill_path(skill.id)
    click_on 'Add an Experience'
    fill_in 'Description', :with => ''
    click_on 'Create Experience'
    expect(page).to have_content 'error'
  end
end
