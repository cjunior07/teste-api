#language: pt

@Get
Funcionalidade: Get no site trello

  @Buscar_info_site_trello
  Cenario: Buscar informacoes no site trello
    Dado que faco a chamada no site do trello
    Entao valido o codigo 200 
    E o campo name com "Professional"