note = [15, 18, 12, 2]
etudiants = ["romai", "omar", "loic", "rithan"]

student = 0
while student <= 3
  if note[student] >= 10
    puts "#{etudiants[student]}, tu as eu #{note[student]} c'est passable"
  else
    puts "#{etudiants[student]}, tu as eu #{note[student]} refait l'année vieux rithan"
  end
    student += 1
end
