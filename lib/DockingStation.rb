class DockingStation

  def release
  end

  def dock(bike)
    @bikes = [bike]
  end

  def bikes
    @bikes
  end

  def works?(bike)
    bike.works?
  end

end