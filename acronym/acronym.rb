class Acronym
  def self.abbreviate(str)
    @result = ""
    str.split(/[\ -]/).each do |word|
      (@result += word.split("")[word =~ /[a-zA-Z]/].upcase) if word and (word != "")
    end
    return @result
  end
end