Dado("Login com {string} e {string}") do |email, password|
  goto_login
  login_with(email, password)
end

Dado("que eu gosto muito de {string}") do |cat|
  find("a[href='/search/new']").click
  find("img[src$='#{cat.downcase}.png']").click

  # ... img[src$] ------ busca pelo categoria ----- no caso ----- "Rock"

  # metodo downcase do Ruby ---- transforma todo o texto em caixa baixa

end

Quando("toco a seguinte canção:") do |table|
  @parody = table.rows_hash

  # o "@" foi acrescentado para permitir que a variavel "parody"

  # possa ser acessada em qualquer um dos outros steps

  # e não somente nesse step em especifico

  find("a", text: @parody[:banda]).click

  song = find(".song-item", text: @parody[:parodia])
  song.find(".fa-play-circle").click

  # conceito de Escopo do Capybara

end

Então("essa paródia deve ficar em modo de reprodução") do
  song_play = find(".playing")
  expect(song_play).to have_text @parody[:parodia]

  # expect ----- RSpec

  # to have_text ---- traz o texto do objeto/variavel "parody" que guarda as musicas

  # passa como referencia o objeto "parodia" da tabela que traz o nome da musica

  # Eu busco o elemento que está em execução

  # E pergunto se dentro desse elemento existe o texto "Sprints de Luta Sptrints de Gloria"

  # Se tiver o texto quer dizer que ele está tocando

  # exatamente a musica que eu coloquei em modo de reprodução

end
