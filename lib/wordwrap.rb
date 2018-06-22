class Wordwrap
  def self.wrap(string, wrapping_point)
    # return string if string.length <= wrapping_point
    # ^^^
    # For some reason the above line breaks my tests completely if I use this
    # instead of the if/else
    if string.length <= wrapping_point
      string
    else
      break_column = string[0...wrapping_point].rindex(" ") || wrapping_point
      #https://teamtreehouse.com/community/index-vs-rindex
      string[0...break_column].strip + "\n" + wrap(string[break_column..-1].strip, wrapping_point)
      #https://apidock.com/rails/Array/wrap/class
    end
  end
end

#Focus is to find location of newline, then work to find whether there is a
# relevant space to put the newline. (Rather than focussing on spaces and then
# dealing with mid-word splits as an exception).
