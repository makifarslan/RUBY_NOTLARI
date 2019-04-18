class Vehicle
    # Araç'la ilgili tüm ortak akıl burada...
end

class Engine
    # Motor'la ilgili tüm ortak akıl burada...
  def start
    puts "başla"
  end
  def stop
    puts "dur"
  end
end
  
class GasolineEngine < Engine
    # Benzinli Motor
end
  
class DieselEngine < Engine
    # Dizel Motor
end

class LPGEngine < Engine
    # LPG Motor
end
  
class Car < Vehicle
    ENGINE_TYPES = {
      benzin: GasolineEngine,
      dizel: DieselEngine,
      lpg: LPGEngine
    }
  def initialize(type = :benzin)
    set_engine(type)
  end
  
  # Hafta sonu turu
  def sunday_drive
    puts "Motor tipi: #{@engine.class}"
    @engine.start
    # Gez dolaş ve dön...
    @engine.stop
  end


  def set_engine(type)
    type = type.to_sym
    unless ENGINE_TYPES.key?(type)
      raise "Hatali tip #{type}"
    end
    klass = ENGINE_TYPES[type]
    @engine = klass.new
  end

  #Motor tipi değiştirme
  def switch_engine(type)
    set_engine(type)
  end
end
  

car = Car.new
car.sunday_drive
car.switch_engine("lpg")
car.sunday_drive
