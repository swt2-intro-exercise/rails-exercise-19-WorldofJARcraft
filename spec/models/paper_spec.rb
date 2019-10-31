require 'rails_helper'
RSpec.describe Paper, type: :model do
  it "should not validate without title" do
    paper = Paper.new(venue:"Some venue", year:2002)
    expect(paper).to_not be_valid
  end

  it "should not validate without venue" do
    paper = Paper.new(title:"Some title", year:2002)
    expect(paper).to_not be_valid
  end

  it "should not validate without year" do
    paper = Paper.new(title:"Some title", venue:"Some venue")
    expect(paper).to_not be_valid
  end

  it "should only accept numeric years" do
    paper = Paper.new(title:"Some title", venue:"Some venue", year:"Some year")
    expect(paper).to_not be_valid
  end

  it "should only accept integer years" do
    paper = Paper.new(title:"Some title", venue:"Some venue", year:19.3)
    expect(paper).to_not be_valid
  end

  it "should have many authors" do
    paper = Paper.new(title:"Some title", venue:"Some venue", year:2019)
    paper.save
    expect(paper.authors).to be_empty
  end


end
