require 'rails_helper'

describe "Index paper page", type: :feature do
  before do
    papers = FactoryBot.create_list(:paper, 2)
    @paper1 = papers[0]
    @paper2 = papers[1]
    @paper2.update(year: @paper2.year - 1, title: "Some other book the author wrote")
  end

  it "should filter papers with other years out" do
    visit (papers_path + "?year=" + String(@paper2.year))
    expect(page).to_not have_text(@paper1.title) 
  end

  it "should show papers with the correct year" do
    visit (papers_path + "?year=" + String(@paper2.year))
    expect(page).to have_text(@paper2.title) 
  end

end