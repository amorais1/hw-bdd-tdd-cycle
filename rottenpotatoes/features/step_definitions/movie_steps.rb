Given(/^the following movies exist:$/) do |movies_table|
  # table is a Cucumber::Ast::Table
 # pending # express the regexp above with the code you wish you had
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |title, director|
  # pending # express the regexp above with the code you wish you had
  movie= Movie.find_by_title(title)
  expect(movie.director).to eq(director)
end