# frozen_string_literal: true

def seed_from_csv(file_name)
  csv = CSV.read(Rails.root.join('db', 'lists', file_name),
                 headers: true, header_converters: :symbol)
  yield(csv)
end

seed_from_csv('profiles.csv') do |csv|
  csv.each_with_index do |row, index|
    print("--- Seeding breed #{index.next} of #{csv.count}")
    print(index.next < csv.count ? 13.chr : 10.chr)

  end
end
