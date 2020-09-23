# injecter de la condition
# tant qu'il est pas midi "j'ai pas faim"
# a midi "j'ai faim"

heure = 8

while heure <= 12
  if heure == 9
    puts "Je crois que Omar commence à avoir faim."
  elsif heure == 12
    puts "il est #{heure} heures, j'ai faim."
  else
    puts "Il est #{heure} heures, je n'ai pas faim."
  end
  heure += 1
end
