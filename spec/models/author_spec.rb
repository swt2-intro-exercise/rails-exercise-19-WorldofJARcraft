require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'should show the full author name' do
    author = Author.new('Alan', 'Turing', 'turing.com')
    expect(author.first_name).to(eq('Alan'))
    expect(author.last_name).to(eq('Turing'))
    expect(author.homepage).to(eq('turing.com'))
    expect(author.name).to(eq('Alan Turing'))
  end
end
