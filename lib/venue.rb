class Venue < ActiveRecord::Base

  has_and_belongs_to_many(:bands)

  validates(:name, :presence => true)

  before_save(:capitalize_each_word_in_name)


private

  define_method(:capitalize_each_word_in_name) do
    grab_each_word = []
    split_words = self.name().split(' ')
    split_words.each() do |word|
      word.capitalize!()
      grab_each_word.push(word)
    end
    self.name = grab_each_word.join(' ')
  end
end
