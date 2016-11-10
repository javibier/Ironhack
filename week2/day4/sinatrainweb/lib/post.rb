class Post
  attr_accessor(:title, :date, :text)

  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end

  def print
    puts @title
    puts @date
    puts @text
  end
end