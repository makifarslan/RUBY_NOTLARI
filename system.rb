puts "~SİSTEME HOŞGELDİNİZ~"

$dersKodlari = {}
File.open("lessonCodes.txt", "r") do |x|
  x.each do |y|
    z = y.split(' - ')
    $dersKodlari[z[0]] = z[1].chomp
  end
end

$ogrenci = {}
File.open("students.txt", "r") do |k|
    k.each do |l|
        m = l.split(',')
    $ogrenci[m[0]] = m[1].chomp
    end
end

$teacher = {}
File.open("loginteacher.txt", "r") do |a|
    a.each do |b|
        c = b.split(',')
        $teacher[c[0]] = c[1].chomp
    end
end


def kaydet
    puts "Öğrenci numarası giriniz:"
    numara = gets.chomp
    puts "Ders kodu giriniz:"
    dersKodu = gets.chomp
    puts "Ders notu giriniz:"
    dersNotu = gets.chomp
    if $ogrenci.keys.include?(numara) && $dersKodlari.values.include?(dersKodu)
        File.open("#{numara}.txt", "a+") do |x|
            x.puts "#{dersKodu},#{dersNotu}"
        end
    else puts "Öğrenci numarası veya ders kodu hatalı."
  end
end

def tumDersler(ogrenciNo)
    File.open("#{ogrenciNo}.txt").each do |x|
        y = x.split(',')
        puts "#{$dersKodlari.key y[0]} = #{y[1].chomp}" 
    end
end

def tekDers(ogrenciNo)
    puts "Görmek istediğiniz dersin kodunu giriniz:"
    dersKodu = gets.chomp
    z = nil
    File.open("#{ogrenciNo}.txt").each do |x|
        y = x.split(',')
        if y[0] == dersKodu
            z = y[1]
            break
        end
    end
    if z == nil 
        puts "Böyle bir ders kodu yok veya girilmemiş."
    else
        puts z
    end
end
        

while true
    puts nil
    puts "Öğretmen girişi için 1'e basınız."
    puts "Öğrenci girişi için 2'ye basınız."
    puts "Çıkış yapmak için 0'a basınız."
    puts nil
    giris = gets.chomp
    if giris == "1"
        puts "Kullanıcı adı giriniz:"
        kullaniciAdi = gets.chomp
        puts "Şifreyi giriniz:"
        sifre = gets.chomp
        if $teacher[kullaniciAdi] == sifre
            puts "Başarıyla giriş yaptınız."
            while true
                puts "Yeni bir öğrenciye not girmek için 1, hesaptan çıkmak için 0'a basınız:"
                yeniGirdi = gets.chomp
                if yeniGirdi == "1"
                    kaydet
                elsif yeniGirdi == "0"
                    puts "Çıkış yaptınız."
                    break
                else
                    puts "Hatalı komut girdiniz."
                end
            end
        else
            puts "Kullanıcı adı veya şifre hatalı."
        end
    elsif giris == "2"
        puts "Öğrenci numarası giriniz:"
        ogrenciNo = gets.chomp
        puts "Şifreyi giriniz:"
        ogrenciSifre = gets.chomp
        if $ogrenci[ogrenciNo] == ogrenciSifre
            puts "Başarıyla giriş yaptınız."
            while true
                File.open("#{ogrenciNo}.txt", "a+")
                puts "Girilen bütün derslerinizi görmek için 1, tek bir dersinize bakmak için 2'ye, hesaptan çıkmak için 0'a basınız:"
                girdi = gets.chomp
                if girdi == "1"
                    tumDersler(ogrenciNo)
                elsif girdi == "2"
                    tekDers(ogrenciNo)
                elsif girdi == "0"
                    puts "Çıkış yaptınız."
                    break
                else
                    puts "Hatalı komut girdiniz."
                end
            end
        else
            puts "Öğrenci numarası veya şifre hatalı."
        end
    elsif giris == "0"
        puts "Güle Güle"
        break
    else
        puts "Hatalı komut girdiniz."
    end
end