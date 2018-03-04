module Rickmorty
  class Base
    def initialize
      @conn = Faraday.new(:url => BASE_URL) do |faraday|
        faraday.request :url_encoded
        faraday.adapter Faraday.default_adapter
      end
    end

    def all
      (JSON.parse((conn.get "#{class_name}/").body))["results"]
    end

    def by_id(id)
      JSON.parse((conn.get "#{class_name}/#{id}/").body)
    end


    def validate_api_status
      (conn.get "#{class_name}/").status
    end

    def search(str)
      (JSON.parse((conn.get "#{class_name}/?name=#{str}").body))["results"]
    end

    private

    def class_name
      self.class.name.split("::")[1].downcase
    end

    attr_reader :conn

  end
end
