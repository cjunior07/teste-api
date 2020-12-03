# frozen_string_literal: true
module Client

  class TrelloClient
    include HTTParty
    URL_TESTE = CONFIG['urls']['url_trello']

    def get_list
      HTTParty.get("#{URL_TESTE}/1/actions/592f11060f95a3d3d46a987a")
    end
  end
end
