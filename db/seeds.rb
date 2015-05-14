require 'roo'

class Import
  def self.data(sheet, klass)
    header = sheet.row(1)
    (2..sheet.last_row).each do |i|
      row = Hash[[header, sheet.row(i)].transpose]
      data_attr = row.to_hash.select { |k, v| klass.constantize.column_names.include? k }
      object = klass.constantize.new(data_attr)
      object.save!
    end
  end
end

sheets = Roo::Excelx.new("./ca_health_plan_rates.xlsx")

Import.data(sheets.sheet("regions"), 'ZipCode')
Import.data(sheets.sheet("health_plans"), 'HealthPlan')