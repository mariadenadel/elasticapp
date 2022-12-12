module Elastic
  class Book
    def initialize
      @client = Elasticsearch::Client.new(log: true)
    end

    def search_by_description(word)
      @client.search(index:'books', q: word, body: { fields: [{ field: 'description' }] })['hits']['hits']
      # @client.search(index:'books', q: word, field: 'description')['hits']['hits']
    end
  end
end
