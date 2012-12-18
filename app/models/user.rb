class User < ActiveRecord::Base
 
  attr_accessible :username, :password ,:password_confirmation, :role, :userlogin
  has_secure_password
  
  
  ROLES = %w[guest admin]

  def role?(base_role)
      ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
  
  def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    product = find_by_id(row["id"]) || new
    product.attributes = row.to_hash.slice(*accessible_attributes)
    product.save!
  end
 end

 def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Csv.new(file.path, nil, :ignore)
  when ".xls" then Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
 end
  
end
