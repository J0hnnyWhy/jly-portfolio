require 'rails_helper'

describe "delete an experience process" do
  it "deletes an experience and returns to skill page" do
    skill = Skill.create(:name => 'html')
    experience = Experience.create(:description => 'been there', :skill_id => skill.id)
    visit skill_path(experience.skill_id)
    click_on 'Delete'
    expect(page).to have_content 'John Young'
  end
end
