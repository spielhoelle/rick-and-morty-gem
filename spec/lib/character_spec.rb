require 'spec_helper'

describe Rickmorty::Character do
  describe "status" do
    it "200 ok" do
      characters = Rickmorty::Character.new
      expect(characters.validate_api_status).to be(200)
    end
  end

  describe "get all" do
    it "return all characters" do
      characters = Rickmorty::Character.new
      characters.all.each do |c|
        expect(c.empty?).to_not be(true)
      end
    end
    it 'return a Character by id' do
      characters = Rickmorty::Character.new
      expect(characters.by_id(1).empty?).to_not be(true)
    end

    it 'return null for a wrong id' do
      characters = Rickmorty::Character.new
      result = characters.by_id(99999999)
      expect(result["error"]).to eq("Character not found")
    end

  end

  describe "Characters.search()" do
    it 'search for Name and check if they are in response' do
      arg = ["Rick Sanchez", "Morty Smith"]
      characters = Rickmorty::Character.new
      arg.each do |name|
        characters.search(name).each do |char|
          expect(char["name"].downcase.include?(name.downcase)).to be(true)
        end
      end
    end
  end
end

