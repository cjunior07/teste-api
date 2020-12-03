# module APIs
module API
  class Trello
    attr_reader :client

    def initialize
      @client = Client::TrelloClient.new
    end
  end
end

module SpecHelper
  def trello
    API::Trello.new
  end
end
