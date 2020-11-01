require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
    holiday.each do |holidays, value|
      value << supply
    end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holidays, value|
        value << supply
      end
    end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
    #   :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

  holiday_hash[season][holiday_name] = supply_array
   holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"

    holiday.each do |holidays, supply|
      array = holidays.to_s.split("_")
      new_array = []
      array.collect do |i|
        new_array << i.capitalize!
      end
      list = new_array.join (" ")
      puts "  #{list}: #{supply.join(", ")}"
    end
end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holidays, supply|
      supply.each do |x|
      if x == "BBQ"
        array << holidays
      end
end
end
end
array
end
