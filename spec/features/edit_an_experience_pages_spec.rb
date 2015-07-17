require 'rails_helper'

describe "edit an experience process" do
  it "edits an experience" do
    skill = Skill.create(:name => 'html')
    experience = Experience.create(:description => 'been there', :skill_id => skill.id)
    visit skill_path(experience.skill_id)
    click_on 'Edit'
    fill_in 'Description', :with => 'done that'
    click_on 'Update Experience'
    expect(page).to have_content 'done that'
  end
end