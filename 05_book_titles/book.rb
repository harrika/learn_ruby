class Book
  attr_writer:title

  def title
    words = @title.split
    bb = []
    little = ['and','the','a','an','in','of']
    words.each do |w|
      if little.include? w
        nw = w
      else
        nw = w.capitalize
      end
      bb << nw
    end
    if little.include? bb.first
      bb[0] = bb.first.capitalize
    end
    bb.join(' ')
  end

end
