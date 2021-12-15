class TextAnalyzer
  def process
    f = File.open("sample_text.txt")
    yield(f) if block_given?
    f.close
  end
end

analyzer = TextAnalyzer.new

analyzer.process do |text|
  lines = text.readlines
  return "0 paragraphs" if lines.empty?
  paragraphs = lines.count("\n") + 1

  puts "#{paragraphs} paragraphs"
end

analyzer.process do |text|
  lines = text.readlines.size
  puts "#{lines} lines"
end

analyzer.process do |text|
  words = 0
  text.each do |line|
    words += line.split(" ").size
  end
  puts "#{words} words"
end


# analyzer.process

# 3 paragraphs
# 15 lines
# 126 words