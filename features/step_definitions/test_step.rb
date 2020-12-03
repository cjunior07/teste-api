Dado('que faco a chamada no site do trello') do
  @response_teste = trello.client.get_list
end

Entao("valido o codigo {int}") do |code|
  expect(@response_teste.code).to eql(code)
end

Entao("o campo name com {string}") do |name|
  expect(@response_teste['data']['list']['name']).to eql(name)
end
