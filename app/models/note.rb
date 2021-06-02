class Note < ApplicationRecord
  validates :title, :body, presence: true

  def self.search_by_title(keywords)
    keywords.split.reduce(self) do |acc, word|
      acc.where "title LIKE ? ESCAPE '\\'", "%#{escape_sql_pattern word}%"
    end
  end

  private

  def self.escape_sql_pattern(pattern)
    pattern.gsub(/[%_\\]/, '\\\\\\&')
  end
end
