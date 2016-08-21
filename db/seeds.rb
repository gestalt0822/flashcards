# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"
# words_csv = CSV.readlines("db/words.csv")
# words_csv.shift
# words_csv.each do |row|
# Word.create(words: row[1], meaning: row[2], wrong1: row[3], wrong2: row[4]) # end

CSV.foreach('db/words.csv', encoding: 'Shift_JIS:UTF-8') do |row|
Model.create(words: row[1], meaning: row[2], wrong1: row[3], wrong2: row[4]) end