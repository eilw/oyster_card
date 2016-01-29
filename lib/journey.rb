class Journey


  MINIMUM_FARE = 1
  PENALTY_FARE = 6

  attr_reader :journey_details, :entry_station, :exit_station

  def initialize
    @journey_details = {:entry_station => nil, :exit_station => nil}
  end

  def start_journey(entry_station)
    @entry_station = entry_station
    @journey_details[:entry_station] = entry_station
  end

  def end_journey(exit_station)
    @exit_station = exit_station
    @journey_details[:exit_station] = exit_station
  end

  def fare
    complete? ? MINIMUM_FARE : PENALTY_FARE
  end

  def complete?
    @entry_station && @exit_station
  end

end
