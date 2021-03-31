module Trello
    include HTTParty
    #url base do trello
    base_uri 'https://api.trello.com'
    #opcoes
    format :json
end