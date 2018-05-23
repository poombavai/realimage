class Distributor < ApplicationRecord	
  has_closure_tree
  has_many :distributor_allocations

  def self.check_distributor
  	puts "Enter Distributor name"
    distributor = Distributor.find_by('lower(name) = ?', gets.chomp.downcase)
  	if distributor.present?
      distributor_allocations = DistributorAllocation.where(distributor_id: distributor.id)
  	  puts "Select any one:"
  	  puts "1.Country"
  	  puts "2.Province"
  	  puts "3.City"
  	  id = gets.chomp
  	  case id
  	  when "1"
  	  	puts "Enter Country"
        country = Country.find_by(name: gets.chomp)
  	  	if country.present?
  	  	  return distributor_allocations.find_by(country_id: country.id).present?
  	    else
  	  	  puts "Country not found"
  	  	end
	    when "2"
  	  	puts "Enter Province"
  	  	province = Province.find_by(name: gets.chomp)
  	  	if province.present?
  	  	  return distributor_allocations.find_by(province_id: province.id).present?
  	    else
  	  	  puts "Province not found"
  	  	end
      when "3"
  	  	puts "Enter City"
  	  	city = City.find_by(name: gets.chomp)
  	  	if city.present?
  	  	  return distributor_allocations.find_by(city_id: city.id).present?
  	    else
  	  	  puts "City not found"
  	  	end
  	  end
  	else
  	  puts "Invalid Distributor"
  	end  	
  end

end