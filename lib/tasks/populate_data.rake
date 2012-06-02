require 'csv'

namespace :db do
  def convert_grade(grade)
    case grade
      when 0
        "Kindergarten"
      when 9
        "Highschool"
      else
        grade
    end
  end

  desc "Fill database with sample data"
  task populate: :environment do
    CSV.foreach("/Users/tvu/science.csv") do |row|
      subject, grade, section, subsection, subsection2, description = row[0], row[1], row[2], row[3], row[4], row[5]
      unless sub_obj = Subject.find_by_name(subject)
        sub_obj = Subject.new
        sub_obj.name = subject
        sub_obj.save!
      end

      unless grade_obj = Grade.find_by_name(convert_grade(grade.to_i))
        grade_obj = Grade.new
        grade_obj.name = convert_grade(grade.to_i)
        grade_obj.save!
      end

      new_teks = Teks.new
      new_teks.grade = grade_obj
      new_teks.subject = sub_obj
      new_teks.section = section
      new_teks.subsection = subsection
      new_teks.subsection2 = subsection2
      new_teks.description = description
      new_teks.save!

      row[6..-1].each do |word|
        next if word.nil?
        keyword = Keyword.new
        keyword.name = word
        keyword.teks = new_teks
        keyword.save!
      end
    end
  end
end