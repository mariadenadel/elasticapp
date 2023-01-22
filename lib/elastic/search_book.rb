module Elastic
  class SearchBook
    def initialize
      @client = Elasticsearch::Client.new(log: true)
    end

    def search_by(word, field)
      query = {
        "query": {
          "match_phrase": {
            field => word
          }
        }
      }
      @client.search(index:'books', body: query)['hits']['hits']
    end
  end
end
