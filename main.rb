monster = [ucup, ucok, panji, adi, angga, rudi]

pemain1 = Pemain.new('Pemain1')
pemain1.tambah_monster(ucup)
pemain1.tambah_monster(ucok)
pemain1.tambah_monster(panji)
puts pemain1
puts ' '

pemain2 = Pemain.new('Pemain2')
pemain2.tambah_monster(adi)
pemain2.tambah_monster(angga)
pemain2.tambah_monster(rudi)
puts pemain2
puts ' '

puts '================Giliran1==============='
puts ' '

pemain1.play_turn(1, 2, pemain2)
puts ' '

puts pemain1
puts ' '

puts pemain2
puts " "

pemain2.play_turn(1, 2, pemain1)
puts ' '

puts pemain1
puts ' '

puts pemain2
puts ' '
