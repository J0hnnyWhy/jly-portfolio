require 'rails_helper'

describe "delete a skill process" do
  it "deletes an experience and returns to index page" do
    skill = Skill.create(:name => 'html')
    visit skill_path(skill.id)
    click_on 'Delete Skill'
    expect(page).to have_content 'Skills'
  end
end