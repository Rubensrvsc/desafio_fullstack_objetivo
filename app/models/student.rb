class Student < ApplicationRecord
    attribute :status, :boolean, default: false

    def self.generate_csv
        CSV.generate("\uFEFF", col_sep: ';') do |csv|
            csv << column_names
            all.each do |student|
                csv << student.attributes.values_at(*column_names)
            end
        end
    end
end
