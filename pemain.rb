#pemain.rb
require_relative 'monster'

class Pemain
  attr_reader :monsters
  
  def initialize (nama)
    @nama = nama
    @monsters = []
  end

  def tambah_monster(monster)
    monsters << monster.dup
  end

  def to_s
    hasil = "#{@nama}:\n"

    @monsters.each_with_index do |monster, index|
      hasil += monster.to_s
      if index < @monsters.size - 1
        hasil += ', '
      else
        hasil += "\n"
      end
    end

    hasil
  end

  def play_turn(kartu_kita, kartu_lawan, lawan)
    print "#{@nama} "
    @monsters[kartu_kita-1].serangan(lawan.monsters[kartu_lawan-1])
  end
end
