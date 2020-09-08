/obj/item/clothing/under/football
	name = "Unga Bunga jersey"
	desc = "A football jersey of the Unga Bunga United, U.B.U."
	icon_state = "football_red"
	item_state = "football_red"
	worn_state = "football_red"
	force = 0.0
	throwforce = 0.0
	var/player_number = 0

/obj/item/clothing/under/football/flamengo
	name = "flamengo shirt with yellow shorts"
	desc = "A C.R. Flamengo football shirt, with yellow swimming trunks."
	icon_state = "flamengo"
	item_state = "flamengo"
	worn_state = "flamengo"
	player_number = 10

/obj/item/clothing/under/football/red
	name = "Unga Bunga jersey"
	desc = "A football jersey of the Unga Bunga United, U.B.U."
	icon_state = "football_red"
	item_state = "football_red"
	worn_state = "football_red"

/obj/item/clothing/under/football/red/goalkeeper
	name = "Unga Bunga goalkeeper jersey"
	desc = "A football jersey of the goalkeeper of Unga Bunga United, U.B.U."
	icon_state = "football_red_gk"
	item_state = "football_red_gk"
	worn_state = "football_red_gk"

/obj/item/clothing/under/football/blue
	name = "Chad Town jersey"
	desc = "A football jersey of the Chad Town Football Club, C.T.F.C."
	icon_state = "football_blue"
	item_state = "football_blue"
	worn_state = "football_blue"

/obj/item/clothing/under/football/blue/goalkeeper
	name = "Chad Town goalkeeper jersey"
	desc = "A football jersey of the goalkeeper of Chad Town Football Club, C.T.F.C."
	icon_state = "football_blue_gk"
	item_state = "football_blue_gk"
	worn_state = "football_blue_gk"
///////////CUSTOM JERSEY//////////////
/obj/item/clothing/under/football/custom
	name = "football jersey"
	desc = "A football team's official jersey."
	var/uncolored = FALSE
	var/shirt_color = 0
	var/shorts_color = 0
	var/shorts_sides_color = 0
	var/shirt_sides_color = 0
	var/shirt_sleeves_color = 0
	var/shirt_hstripes_color = 0
	var/shirt_vstripes_color = 0
	item_state = "football_custom"
	icon_state = "football_custom"
	worn_state = "football_custom"
	heat_protection = LOWER_TORSO|UPPER_TORSO
	color = "#FFFFFF"
	New()
		..()
		spawn(5)
			uncolored = TRUE


/obj/item/clothing/under/football/custom/attack_self(mob/user as mob)
	if (uncolored)
		if (!shorts_color)
			var/input = WWinput(user, "Shorts - Choose a color:", "Shirt Color" , "#FFFFFF", "color")
			if (input == null || input == "")
				return
			else
				shorts_color = input

		if (!shorts_sides_color)
			var/input = WWinput(user, "Shorts Stripes - Choose a color:", "Shirt Color" , "#FFFFFF", "color")
			if (input == null || input == "")
				return
			else
				shorts_sides_color = input

		if (!shirt_color)
			var/input = WWinput(user, "Shirt - Choose a color:", "Shirt Color" , "#FFFFFF", "color")
			if (input == null || input == "")
				return
			else
				shirt_color = input

		if (!shirt_sides_color)
			var/input = WWinput(user, "Shirt Collar - Choose a color:", "Shirt Color" , "#FFFFFF", "color")
			if (input == null || input == "")
				return
			else
				shirt_sides_color = input

		if (!shirt_sleeves_color)
			var/input = WWinput(user, "Shirt Sleeves - Choose a color:", "Shirt Color" , "#FFFFFF", "color")
			if (input == null || input == "")
				return
			else
				shirt_sleeves_color = input

		if (!shirt_hstripes_color)
			var/input = WWinput(user, "Shirt Horizontal Stripes - Choose a color:", "Shirt Color" , "#FFFFFF", "color")
			if (input == null || input == "")
				return
			else
				shirt_hstripes_color = input

		if (!shirt_vstripes_color)
			var/input = WWinput(user, "Shirt Vertical Stripes - Choose a color:", "Shirt Color" , "#FFFFFF", "color")
			if (input == null || input == "")
				return
			else
				shirt_vstripes_color = input

		if (shirt_color && shorts_color && shorts_sides_color && shirt_sides_color && shirt_sleeves_color && shirt_hstripes_color && shirt_vstripes_color)
			uncolored = FALSE
			var/image/shirt = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "football_custom_shirt")
			shirt.color = shirt_color
			var/image/shorts = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "football_custom_shorts")
			shorts.color = shorts_color
			var/image/shorts_sides = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "football_custom_shorts_sides")
			shorts_sides.color = shorts_sides_color
			var/image/shirt_sides = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "football_custom_shirt_sides")
			shirt_sides.color = shirt_sides_color
			var/image/shirt_sleeves = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "football_custom_shirt_sleeves")
			shirt_sleeves.color = shirt_sleeves_color
			var/image/shirt_vstripes = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "football_custom_shirt_vstripes")
			shirt_vstripes.color = shirt_vstripes_color
			var/image/shirt_hstripes = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "football_custom_shirt_hstripes")
			shirt_hstripes.color = shirt_hstripes_color
			overlays += shirt
			overlays += shorts
			overlays += shorts_sides
			overlays += shirt_sides
			overlays += shirt_sleeves
			overlays += shirt_vstripes
			overlays += shirt_hstripes
			return
	else
		..()
/////////SHOES////////////////////////
/obj/item/clothing/shoes/football
	name = "football trainers"
	desc = "A pair of football trainers."
	icon_state = "football"
	item_state = "football"
	worn_state = "football"
	armor = list(melee = 60, arrow = 5, gun = FALSE, energy = 25, bomb = 50, bio = 10, rad = FALSE)
	siemens_coefficient = 0.6
	force = 0.0
	throwforce = 0.0

////////////GLOVES/////////////////
/obj/item/clothing/gloves/goalkeeper/red
	name = "red goalkeeper gloves"
	initial_name = "red goalkeeper gloves"
	icon_state = "red"
	item_state = "redgloves"

/obj/item/clothing/gloves/goalkeeper/blue
	name = "blue goalkeeper gloves"
	initial_name = "blue goalkeeper gloves"
	icon_state = "blue"
	item_state = "bluegloves"

/mob/living/human/var/obj/item/football/football = null

/obj/item/football
	name = "ball"
	desc = "A classic black and white football."
	icon = 'icons/obj/football.dmi'
	icon_state = "football"
	force = 0.0
	throwforce = 0.0
	throw_speed = 0.5
	throw_range = 9
	item_state = "football"
	w_class = 4.0
	layer = 6
	opacity = FALSE
	density = FALSE
	allow_spin = FALSE

	var/mob/living/human/owner = null
	var/mob/living/human/last_owner = null
/obj/item/football/proc/update_movement()
	if (owner)
		src.dir = owner.dir
		src.forceMove(owner.loc)
	return

/obj/item/football/Crossed(mob/living/human/user)
	if (!owner && !user.football)
		owner = user
		user.football = src
		return
	else
		..()

/obj/item/football/attack_hand(mob/user as mob)
	var/area/A = get_area(src)
	if (ishuman(user))
		var/mob/living/human/H = user
		if (!istype(A, /area/caribbean/football/blue/goalkeeper) && !istype(A, /area/caribbean/football/red/goalkeeper))
			return
		else if (!(findtext(H.original_job_title, "goalkeeper")))
			return
		else
			if (owner)
				owner.football = null
				owner = null
	..()
//goal posts
/obj/effect/step_trigger/goal
	name = "goalpost"
	var/team = null
/obj/effect/step_trigger/goal/Trigger(var/atom/movable/A)
	if (istype(A, /obj/item/football) && team)
		if (istype(map, /obj/map_metadata/football))
			var/obj/map_metadata/football/MF = map
			MF.reset_ball()
			MF.scores[team] += 1
			var/obj/item/football/FB = A
			world << "<font size=4 color='orange'>GOAL! <b>[FB.last_owner ? FB.last_owner : "Unknown"] [FB.last_owner ? "([FB.last_owner.ckey])" : ""]</b> scores for <b>[team]</b>!</font>"
			FB.last_owner = null
			return

/obj/effect/step_trigger/goal/red
	name = "UBU goalpost"
	team = "U.B.U."

/obj/effect/step_trigger/goal/blue
	name = "CTFC goalpost"
	team = "C.T.F.C."