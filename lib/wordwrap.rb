class Wordwrap
  def self.wrap(string, wrapping_point)
    # return string if string.length <= wrapping_point
    if string.length <= wrapping_point
      string
    else
      string[0...wrapping_point] + "\n" + string[wrapping_point..-1]
    end
  end
end
