
#For given English statements write a python program, - Facts & Rules:
#(1) jia is a woman.
#(2) john is a man.
#(3) john is healthy.
#(4) jia is healthy.
#(5) john is wealthy.
#(6) anyone is a traveler if he is healthy and wealthy.
#(7) anyone can travel if he is a traveler.
#- Goals.
#(1) Who can travel?
#(2) Who is healthy and wealthy?

import utils

from logic import *

 # answer for question 4



clauses = [expr("Man(John)"), expr("Women(Jia)"), expr("Healthy(John)"), expr("Wealthy(John)"), expr("Wealthy(Jia)"),expr("(Wealthy(x) & Healthy(x)) ==> Traveler(x)")]

KB = FolKB(clauses)
wealthy = fol_bc_ask(KB, expr("Wealthy(x)"))
healthy = fol_bc_ask(KB, expr("Healthy(x)"))
traveler = fol_bc_ask(KB, expr("Traveler(x)"))
print('Who are healthy ?')
print(list(healthy), '\n')
print('Who are wealthy ?')
print(list(wealthy), '\n')
print('Who can travel ?')
print(list(traveler))
