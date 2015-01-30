class Band < ActiveRecord::Base

  has_and_belongs_to_many(:venues)

  validates(:name, :presence => true)

  before_save(:capitalize_each_word_in_name)


private

  define_method(:capitalize_each_word_in_name) do
    string_to_array = []
    split_words = self.name().split(' ')
    split_words.each() do |word|
      word.capitalize!()
      string_to_array.push(word)
    end
    self.name = string_to_array.join(' ')
  end
end
