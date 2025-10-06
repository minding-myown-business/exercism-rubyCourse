class LocomotiveEngineer
  def self.generate_list_of_wagons(*args) = args
  #   raise 'Please implement the LocomotiveEngineer.generate_list_of_wagons method'
  # end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    # raise 'Please implement the LocomotiveEngineer.fix_list_of_wagons method'

    # Proud of this one yk
    (@first, @second, *@rest) = each_wagons_id
    each_wagons_id = [*@rest, @first, @second]
    # Capture the locomotive, spread rest of array onto the result to be returned
    @one, *each_wagons_id = each_wagons_id
    return [@one, *missing_wagons, *each_wagons_id]
  end

  def self.add_missing_stops(hash, **kv_pairs) = {**hash, stops: kv_pairs.values}
  #   raise 'Please implement the LocomotiveEngineer.add_missing_stops method'
  # end

  def self.extend_route_information(route, more_route_information) = { **route, **more_route_information }
  #   raise 'Please implement the LocomotiveEngineer.extend_route_information method'
  # end
end
