class Kedi
  attr_reader :isim
  def initialize(isim)
    @isim = isim
  end

  def kos
    "Kedi kosuyor."
  end
end

class Kaplan < Kedi    #Miras alma
  def kos
    "Kaplan kosuyor."  #Override(Uzerine yazma)
  end
end

cat = Kedi.new("Goose")
tiger = Kaplan.new("Shiva")

puts "#{cat.isim} isimli #{cat.kos}"
puts "#{tiger.isim} isimli #{tiger.kos}"


