require 'pry'

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

def second_supply_for_fourth_of_july(hash)
  hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(hash, supply)
  hash[:winter][:christmas] << supply
  hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(hash, supply)
  hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(hash, season, holiday, supply_array)
  hash[season][holiday] = supply_array
end

def all_winter_holiday_supplies(hash)
  hash[:winter].values.flatten
end 

def all_supplies_in_holidays(hash)
  hash.each do |season, holiday|
     puts "#{season.capitalize}:"
     holiday.each do |holiday, item|
       puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{item.join(", ")}"
     end
  end 
end

def all_holidays_with_bbq(hash)
  hash.map do |season, holiday|
    holiday.map do |holiday, supply|
      holiday if supply.include?("BBQ")
    end 
  end.flatten.compact
end





