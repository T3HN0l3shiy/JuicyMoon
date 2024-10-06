/obj/item/arm_masseur
	name = "Руки массажиста"
	desc = "Руки, что сейчас будут мять чье-то тело, дарить расслабление и спокойствие. А может вы будете использовать массаж как злобную пытку?."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "arm_masseur"
	var/masseu_speed = 20 //внести в список скорость массажа

/obj/item/arm_masseur/attack(mob/living/target, mob/living/carbon/human/user)

	if(ishuman(target))
		var/mob/living/carbon/human/H = target

		var/target_limb

		target_limb = zone2body_parts_covered_complicated(user.zone_selected)

		if (target_limb)
			to_chat (user, span_warning("Выбери часть тела для сотворения магии!"))
			return

		if (target == user)
			to_chat (user, span_warning("Вы тянитесь себе за спину в попытке помассировать затекшие мышцы. Лучше попросить кого-то сделать это!"))
			return

		for(var/A in items_on_target)
			var/obj/item/worn_clothes = A
			if(worn_clothes.body_parts_covered & target_limb)
				to_chat (user, span_warning("Выбраная часть тела закрыта одеждой"))
				return
//Узнать как можно улучшить этот ужас, может классы? Может через координаты матрицы? Может есть другой путь, который я не знаю?
		switch (user.zone_selected){

			case(BODY_ZONE_HEAD || BODY_ZONE_PRECISE_EYES || BODY_ZONE_PRECISE_MOUTH)
				switch (user.a_intent) {
					case(user.a_intent == INTENT_HELP)
						user.visible_message(
							pick (span_lewd ("Массаж головы, зеленый 1"),
							span_lewd ("Массаж головы, зеленый 2"),
							span_lewd ("Массаж головы, синий 3")))
					case(user.a_intent == INTENT_DISARM)
						user.visible_message(
							pick (span_lewd ("Массаж головы, синий 1"),
							span_lewd ("Массаж головы, синий 2"),
							span_lewd ("Массаж головы, синий 3")))
					case(user.a_intent == INTENT_GRAB)
						user.visible_message(
							pick (span_lewd ("Массаж головы, желтый 1"),
							span_lewd ("Массаж головы, желтый 2"),
							span_lewd ("Массаж головы, желтый 3")))
					case(user.a_intent == INTENT_HARM)
						user.visible_message(
							pick (span_lewd ("Массаж головы, красный 1"),
							span_lewd ("Массаж головы, красный 2"),
							span_lewd ("Массаж головы, красный 3")))}

			case(BODY_ZONE_CHEST)
				switch (user.a_intent){
					case(user.a_intent == INTENT_HELP)
						user.visible_message(
							pick (span_lewd ("Массаж спины, зеленый 1"),
							span_lewd ("Массаж спины, зеленый 2"),
							span_lewd ("Массаж спины, синий 3")))
					case(user.a_intent == INTENT_DISARM)
						user.visible_message(
							pick (span_lewd ("Массаж спины, синий 1"),
							span_lewd ("Массаж спины, синий 2"),
							span_lewd ("Массаж спины, синий 3")))
					case(user.a_intent == INTENT_GRAB)
						user.visible_message(
							pick (span_lewd ("Массаж спины, желтый 1"),
							span_lewd ("Массаж спины, желтый 2"),
							span_lewd ("Массаж спины, желтый 3")))
					case(user.a_intent == INTENT_HARM)
						user.visible_message(
							pick (span_lewd ("Массаж спины, красный 1"),
							span_lewd ("Массаж спины, красный 2"),
							span_lewd ("Массаж спины, красный 3")))}

			case(BODY_ZONE_L_ARM || BODY_ZONE_R_ARM)
				switch (user.a_intent){
					case(user.a_intent == INTENT_HELP)
						user.visible_message(
							pick (span_lewd ("Массаж рук, зеленый 1"),
							span_lewd ("Массаж рук, зеленый 2"),
							span_lewd ("Массаж рук, синий 3")))
					case(user.a_intent == INTENT_DISARM)
						user.visible_message(
							pick (span_lewd ("Массаж рук, синий 1"),
							span_lewd ("Массаж рук, синий 2"),
							span_lewd ("Массаж рук, синий 3")))
					case(user.a_intent == INTENT_GRAB)
						user.visible_message(
							pick (span_lewd ("Массаж рук, желтый 1"),
							span_lewd ("Массаж рук, желтый 2"),
							span_lewd ("Массаж рук, желтый 3")))
					case(user.a_intent == INTENT_HARM)
						user.visible_message(
							pick (span_lewd ("Массаж рук, красный 1"),
							span_lewd ("Массаж рук, красный 2"),
							span_lewd ("Массаж рук, красный 3")))}

			case(BODY_ZONE_PRECISE_GROIN)
				switch (user.a_intent){
					case(user.a_intent == INTENT_HELP)
						user.visible_message(
							pick (span_lewd ("Массаж ягодиц и паха, зеленый 1"),
							span_lewd ("Массаж ягодиц и паха, зеленый 2"),
							span_lewd ("Массаж ягодиц и паха, синий 3")))
					case(user.a_intent == INTENT_DISARM)
						user.visible_message(
							pick (span_lewd ("Массаж ягодиц и паха, синий 1"),
							span_lewd ("Массаж ягодиц и паха, синий 2"),
							span_lewd ("Массаж ягодиц и паха, синий 3")))
					case(user.a_intent == INTENT_GRAB)
						user.visible_message(
							pick (span_lewd ("Массаж ягодиц и паха, желтый 1"),
							span_lewd ("Массаж ягодиц и паха, желтый 2"),
							span_lewd ("Массаж ягодиц и паха, желтый 3")))
					case(user.a_intent == INTENT_HARM)
						user.visible_message(
							pick (span_lewd ("Массаж ягодиц и паха, красный 1"),
							span_lewd ("Массаж ягодиц и паха, красный 2"),
							span_lewd ("Массаж ягодиц и паха, красный 3")))}

			case(BODY_ZONE_R_LEG || BODY_ZONE_L_LEG)
				switch (user.a_intent){
					case(user.a_intent == INTENT_HELP)
						user.visible_message(
							pick (span_lewd ("Массаж ног и бедер, зеленый 1"),
							span_lewd ("Массаж ног и бедер, зеленый 2"),
							span_lewd ("Массаж ног и бедер, синий 3")))
					case(user.a_intent == INTENT_DISARM)
						user.visible_message(
							pick (span_lewd ("Массаж ног и бедер, синий 1"),
							span_lewd ("Массаж ног и бедер, синий 2"),
							span_lewd ("Массаж ног и бедер, синий 3")))
					case(user.a_intent == INTENT_GRAB)
						user.visible_message(
							pick (span_lewd ("Массаж ног и бедер, желтый 1"),
							span_lewd ("Массаж ног и бедер, желтый 2"),
							span_lewd ("Массаж ног и бедер, желтый 3")))
					case(user.a_intent == INTENT_HARM)
						user.visible_message(
							pick (span_lewd ("Массаж ног и бедер, красный 1"),
							span_lewd ("Массаж ног и бедер, красный 2"),
							span_lewd ("Массаж ног и бедер, красный 3")))}}

/obj/item/arm_masseur/afterattack(mob/living/target, mob/living/carbon/human/user)










