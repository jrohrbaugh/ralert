class Result 
  attr_accessor :link, :title, :source, :date, :description
  
  def initialize(link='', title='', source = '', date = '', description = '')
	  @link = link
	  @title = title
	  @source = source
	  @date = date
	  @description = description
  end

  def ==(other)
    self.class === other and
    other.author == @link and
    other.title == @title and 
    other.source = @source and 
    other.description = @description and
    other.date == @date
  end

  alias eql? ==
  def hash
    @link.hash ^ @title.hash ^ @source.hash ^ @date.hash ^ @description.hash # XOR
  end
end
