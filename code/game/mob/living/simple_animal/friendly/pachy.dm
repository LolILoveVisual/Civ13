/mob/living/simple_animal/pachy
	icon = 'icons/mob/animal_big.dmi'
	name = "Pachycephalosaurus"
	desc = "Pachy for short. Looks friendly"
	icon_state = "pachycephalosaurus"
	icon_living = "pachycephalosaurus"
	icon_dead = "pachycephalosaurus_dead"
	icon_gib = "pachycephalosaurus_dead"
	speak = list("breuuuuu!","Burrrrrr!","krrrr")
	speak_emote = list("rawr", "bur")
	emote_hear = list("rawrs","burs")
	emote_see = list("stares ferociously", "grunts")
	speak_chance = TRUE
	move_to_delay = 8
	see_in_dark = 6
	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat
	meat_amount = 6
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "kicks"
	attacktext = "kicked"
	health = 140
	mob_size = MOB_MEDIUM
	layer = 3.99
	a_intent = I_HARM
	herbivore = 1 //if it eats grass of the floor (i.e. goats, cows)
	granivore = 1 //if it will be attracted to crops (i.e. rabbits, mice, birds)
	behaviour = "defends"

	melee_damage_lower = 20
	melee_damage_upper = 36