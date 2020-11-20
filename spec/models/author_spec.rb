require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'should have the specified first_name' do
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
  end
end
