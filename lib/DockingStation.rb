class DockingStation

  def release
    @bikes[0].working? ? @bikes[0] : "nope"
  end

  def dock(bike)
    @bikes = [bike]
  end

  def bikes
    @bikes
  end

  def works?(bike)
    bike.working?
  end

end