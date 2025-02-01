class LogLineParser
  def initialize(line)
    @line = line
    @@modified_line = @line.strip.split
  end

  def message
    #@@modified_line = @line.strip.split
    @@line2point0 = ""
    @@modified_line.each do |word|
      @@line2point0 += "#{word} " unless @@modified_line.index(word) == 0
    end
    return @@line2point0.strip
  end

  def log_level
    @@line2point0 = ""
    @@modified_line.each do |word|
      @@line2point0 += "#{word.downcase.gsub(/[:\[\]]/, "")}" if @@modified_line.index(word) == 0
    end
    return @@line2point0.strip
  end

  def reformat
    @@line2point0 = ""
    @@modified_line.each do |word|
      @@line2point0 += "#{word} " unless @@modified_line.index(word) == 0
    end
    @@line2point0 += "(#{@@modified_line[0].downcase.gsub(/[:\[\]]/, "")})"
    return @@line2point0.strip
  end
end
