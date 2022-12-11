module Elastic
  class Book
    def initialize
      @client = Elasticsearch::Client.new(log: true)
    end

    def search_by_description(word)
      @client.search(q: word)["_source"]
    end
  end
end
