puts "Tic Tac Toe'ya hoş geldiniz.\nOyuncu --> X\nBilgisayar --> O\nOyun tahtası aşağıdaki gibidir:"
puts " 1 | 2 | 3 \n 4 | 5 | 6 \n 7 | 8 | 9 "
while 1
  numaralar = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  bilgisayar = 0
  sayac = 5
  n1 = " "
  n2 = " "
  n3 = " "
  n4 = " "
  n5 = " "
  n6 = " "
  n7 = " "
  n8 = " "
  n9 = " "
  oyun = " #{n1} | #{n2} | #{n3} \n #{n4} | #{n5} | #{n6} \n #{n7} | #{n8} | #{n9} "
  while sayac != 0
    print "_______________________________________________\nİstediğiniz lokasyonun numarasını giriniz [1-9]: "
    numara = gets.chomp.to_i
    if numaralar.include?(numara)
      numaralar.delete(numara)
      case numara
      when 1
        n1 = "X"
      when 2
        n2 = "X"
      when 3
        n3 = "X"
      when 4
        n4 = "X"
      when 5
        n5 = "X"
      when 6
        n6 = "X"
      when 7
        n7 = "X"
      when 8
        n8 = "X"
      when 9
        n9 = "X"
      end
      oyun = " #{n1} | #{n2} | #{n3}\n #{n4} | #{n5} | #{n6}\n #{n7} | #{n8} | #{n9} "
      if n1 != " " && n1 == n2 && n1 == n3
        if n1 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n1 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n4 != " " && n4 == n5 && n4 == n6
        if n4 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n4 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n7 != " " && n7 == n8 && n7 == n9
        if n7 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n7 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n1 != " " && n1 == n4 && n1 == n7
        if n1 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n1 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n2 != " " && n2 == n5 && n2 == n8
        if n2 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n2 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n3 != " " && n3 == n6 && n3 == n9
        if n3 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n3 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n1 != " " && n1 == n5 && n1 == n9
        if n1 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n1 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n3 != " " && n3 == n5 && n3 == n7
        if n3 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n3 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif numaralar.empty?
        puts "Berabere bitti!"
        puts oyun
        break
      end
      bilgisayar = numaralar.sample
      numaralar.delete(bilgisayar)
      puts "Bilgisayarın seçtiği: #{bilgisayar}"
      case bilgisayar
      when 1
        n1 = "O"
      when 2
        n2 = "O"
      when 3
        n3 = "O"
      when 4
        n4 = "O"
      when 5
        n5 = "O"
      when 6
        n6 = "O"
      when 7
        n7 = "O"
      when 8
        n8 = "O"
      when 9
        n9 = "O"
      end
      oyun = " #{n1} | #{n2} | #{n3}\n #{n4} | #{n5} | #{n6}\n #{n7} | #{n8} | #{n9} "
      if n1 != " " && n1 == n2 && n1 == n3
        if n1 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n1 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n4 != " " && n4 == n5 && n4 == n6
        if n4 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n4 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n7 != " " && n7 == n8 && n7 == n9
        if n7 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n7 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n1 != " " && n1 == n4 && n1 == n7
        if n1 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n1 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n2 != " " && n2 == n5 && n2 == n8
        if n2 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n2 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n3 != " " && n3 == n6 && n3 == n9
        if n3 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n3 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n1 != " " && n1 == n5 && n1 == n9
        if n1 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n1 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif n3 != " " && n3 == n5 && n3 == n7
        if n3 == "X"
          puts "~Kazandınız!~"
          puts oyun
          break
        elsif n3 == "O"
          puts "~Kaybettiniz!~"
          puts oyun
          break
        end
      elsif numaralar.empty?
        puts "Berabere bitti!"
        puts oyun
        break
      end
      puts oyun
      sayac -= 1
    else
      puts "Hatalı girdi!"
    end
  end
  while 1
    print "Tekrar oynamak ister misiniz?[Y/N]: "
    tekrar = gets.chomp
    if tekrar == 'Y'
      break
    elsif tekrar == 'N'
      exit
    else
      puts "Hatalı girdi!"
    end
  end
end
