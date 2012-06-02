require 'csv'
def convert_grade(str)
  case str
    when "1st"
      1
    when "2nd"
      2
    when "3rd"
      3
    when "4th"
      4
    when "5th"
      5
    when "K"
      0
    else
      str
  end
end
def elementary_science(path)
  CSV.open("#{path}_post", 'w') do |out|
    CSV.foreach(path) do |row|
      next if row[2].nil?
      tek_no = row[2].split('.')
      section = tek_no[1]
      subsection ||= tek_no[2] if tek_no.size > 2
      ssubsection ||= tek_no[3] if tek_no.size > 3

      out << [row[0], convert_grade(row[1]), section, subsection, ssubsection].concat(row[3..-1])
    end
  end
end

def middle_science(path)
  CSV.open("#{path}_post", 'w') do |out|
    CSV.foreach(path) do |row|
      next if row[2].nil?
      tek_no = row[2].split('.')
      section = tek_no[1]
      subsection ||= tek_no[2] if tek_no.size > 2
      ssubsection ||= tek_no[3] if tek_no.size > 3

      out << [row[0], convert_grade(row[1]), section, subsection, ssubsection].concat(row[3..-1])
    end
  end
end

def high_science(path)
  CSV.open("#{path}_post", 'w') do |out|
    CSV.foreach(path) do |row|
      next if row[2].nil?
      tek_no = row[2].split('.')
      section = tek_no[0]
      subsection ||= tek_no[1] if tek_no.size > 1
      ssubsection ||= tek_no[2] if tek_no.size > 2

      out << [row[0], 9, section, subsection, ssubsection].concat(row[3..-1])
    end
  end
end

def science(path)

end
high_science(ARGV[0])