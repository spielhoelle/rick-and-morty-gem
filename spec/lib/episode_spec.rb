require 'spec_helper'

describe Rickmorty::Episode do
  describe "status" do
    it "200 ok" do
      episodes = Rickmorty::Episode.new
      expect(episodes.validate_api_status).to be(200)
    end
  end

  describe "get all" do
    it "return all episodes" do
      episodes = Rickmorty::Episode.new
      episodes.all.each do |c|
        expect(c.empty?).to_not be(true)
      end
    end
    it 'return a Episode by id' do
      episodes = Rickmorty::Episode.new
      expect(episodes.by_id(1).empty?).to_not be(true)
    end

    it 'return null for a wrong id' do
      episodes = Rickmorty::Episode.new
      result = episodes.by_id(99999999)
      expect(result["error"]).to eq("Episode not found")
    end

  end

  describe "Episodes.search()" do
    it 'search for Name and check if they are in response' do
      arg = ["Pilot", "Lawnmower Dog"]
      episodes = Rickmorty::Episode.new
      arg.each do |name|
        episodes.search(name).each do |char|
          expect(char["name"].downcase.include?(name.downcase)).to be(true)
        end
      end
    end
  end
end

