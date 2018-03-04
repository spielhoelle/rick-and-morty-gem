require 'spec_helper'

describe Rickmorty::Location do
  describe "status" do
    it "200 ok" do
      location = Rickmorty::Location.new
      expect(location.validate_api_status).to be(200)
    end
  end

  describe "get all" do
    it "return all location" do
      location = Rickmorty::Location.new
      location.all.each do |c|
        expect(c.empty?).to_not be(true)
      end
    end
    it 'return a Location by id' do
      location = Rickmorty::Location.new
      expect(location.by_id(1).empty?).to_not be(true)
    end

    it 'return null for a wrong id' do
      location = Rickmorty::Location.new
      result = location.by_id(99999999)
      expect(result["error"]).to eq("Location not found")
    end

  end

  describe "Locations.search()" do
    it 'search for Name and check if they are in response' do
      arg = ["Earth", "Abadango"]
      location = Rickmorty::Location.new
      arg.each do |name|
        location.search(name).each do |char|
          expect(char["name"].downcase.include?(name.downcase)).to be(true)
        end
      end
    end
  end
end

