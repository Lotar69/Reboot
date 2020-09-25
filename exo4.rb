# You are about to leave usa and have some money left
# over.  The exchange rate is 100 dols = 37 pounds.
# a) Produce a table for 10, 20, 30 ... 100 dols showing
# what you would get back in pounds
dols = 100
pounds = 37
conversion = pounds / dols
init = 10
teapot = 75
#FAIRE UNE BOUCLE QUI INDIQUE TOUS LES 10 DOLLARS LE MONTANT EN POUNDS
while init <= 100
  calcul = init * conversion

  if init >= teapot
    restant_dol = init - teapot
    restant_pound =  restant_dol * conversion
    p "j'ai #{init} dollars soit #{calcul} pounds, je peux m'acheter ma teiere. Il me reste #{restant_dol} dollars soit #{restant_pound} pounds."
  else
    p "j'ai #{init} dollars soit #{calcul} pounds, je ne peux pas m'acheter ma teiere."
  end
  init += 10
end

# b) You see a teapot for sale at the airport shop for 75 dols.
# Add extra info to each line of your earlier answer - “you
# can’t afford it” or “you can afford it and that would leave
# you with xxxxxxxx pounds after the conversion back”
# Constant Erate (so WILL be available in method :clin_d'œil:
