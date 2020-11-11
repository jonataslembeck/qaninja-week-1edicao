Dado("Login com {string} e {string}") do |email, senha|
  goto_login #actions
  login_with(email, senha)
end

Dado("que eu gosto muito de {string}") do |categoria|
  find("a[href='/search/new']").click
  find("img[src$='#{categoria.downcase}.png']").click
end

Quando("toco a seguinte canção:") do |table|
  @parody = table.rows_hash # Colocando @, consegue usar em outros steps
  find("a", text: @parody[:banda]).click # Estratégia de scopo
  song = find(".song-item", text: @parody[:parodia])
  song.find(".fa-play-circle").click
end

Então("essa paródia deve ficar em modo de reprodução") do
  song_play = find(".playing")
  expect(song_play).to have_text @parody[:parodia]
end