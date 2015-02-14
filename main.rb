# grab tree asciiart and war eagle lyrics
tree = File.read('tree.txt').split.join
war_eagle = File.read('war_eagle.txt').split.join.upcase

# method to shift alphabet
def shifted_alphabet rot
  ('A'..'Z').to_a.join[rot..-1] + ('A'..'Z').to_a.join[0...rot]
end

# shift each letter of the tree by the war eagle lyric character
encrypted_tree = tree.split('').each_with_index.map do |letter, n|
  shift_letter = war_eagle[n].ord - 65
  letter.tr(
    shifted_alphabet(shift_letter), ('A'..'Z').to_a.join
  )
end.join.scan(/.{8}/).join("\n")

# write to file
File.new("output.txt", "w").write(encrypted_tree)