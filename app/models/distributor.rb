class Distributor < ApplicationRecord	
  has_closure_tree

  def self.check_distributor
  	puts "Enter Distributor name"    
    distributor = Distributor.find_by('lower(name) = ?', gets.chomp.downcase)
  	if distributor.present?
      distributor_allocations = DistributorAllocation.where("distributor_id LIKE '%#{distributor.id}%'")
      puts "Enter region"
        country = Country.find_by(name: gets.chomp)
  	  	if country.present?
  	  	  return distributor_allocations.find_by(country_id: country.id).present?
          distributor_allocations.map do |e| 
            if e.included_regions.include?(i)
              return !e.excluded_regions.include?(i)
            else
              return false
            end
          end
          #distributor_allocations.map { |e| e.excluded_regions.include?(i) }
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