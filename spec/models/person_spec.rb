require 'rails_helper'

RSpec.describe Person, type: :model do
	let(:person) do
		person = Person.new(first_name: 'Alice', last_name: 'Smith')
	end

  it "is invalid without a first name" do
  	person.first_name = nil
  	expect(person).to_not be_valid
  end

  it "is invalid without last name" do
  	person.last_name = nil
  	expect(person).to_not be_valid
  end
end