#monster.rb
class Monster
  attr_reader :nama, :serang
  
  def initialize(nama, darah, serang)
    @nama = nama
    @darah = darah
    @serang = serang
  end

  def to_s
    if @serang > 0
      "#{@nama}[#{@serang}]"
    else
      "#{@nama}[X]"
    end
  end

  def serangan(monster)
    monster.terima_kerusakan(@serang)
    terima_kerusakan = (0.5 * monster.serang)
    
    puts "#{@nama} menyerang lawan #{monster.nama}, memberikan #{@serang.to_f} kerusakan dan mengambil #{0.5 *monster.serang} kerusakan"
  end

  def terima_kerusakan(amount)
    @darah -= amount
  end
end
