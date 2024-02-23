/* Simple Expert System (dessert identification).
   Start with ?- go. */

go :- hypothesize(Dessert),
      write('I guess that dessert is '),
      write(Dessert), nl, undo.

/* Hypotheses to be tested */
hypothesize(churros) :- churros, !.
hypothesize(stollen) :- stollen, !.
hypothesize(brunsli) :- brunsli, !.
hypothesize(macarons) :- macarons, !.
hypothesize(tiramisu) :- tiramisu, !.
hypothesize(taiyaki) :- taiyaki, !.
hypothesize(tanghulu) :- tanghulu, !.
hypothesize(kue_lapis) :- kue_lapis, !.
hypothesize(dalgona) :- dalgona, !.
hypothesize(ladoo) :- ladoo, !.
hypothesize(baklava) :- baklava, !.
hypothesize(kunafa) :- kunafa, !.
hypothesize(muhallabia) :- muhallabia, !.
hypothesize(maamoul) :- maamoul, !.
hypothesize(basbousa) :- basbousa, !.
hypothesize(qatayef) :- qatayef, !.
hypothesize(balah_alsham) :- balah_alsham, !.
hypothesize(um_ali) :- um_ali, !.
hypothesize(kleja) :- kleja, !.
hypothesize(luqaimat) :- luqaimat, !.
hypothesize(not_in_my_memory). /* no diagnosis */

/* Dessert identification rules */
churros :- european, dessert, spain,
           verify(cylindrical_shape),
           verify(golden_color),
           verify(sugar_and_cinnamon_coated),
           verify(chocolate_or_caramel_flavors).

stollen :- european, dessert, germany,
           verify(loaf_shape),
           verify(goldenbrown_color),
           verify(powdered_sugar_coated),
           verify(marzipan_flavor).

brunsli :- european, dessert, switzerland,
           verify(square_or_diamond_shape),
           verify(darkbrown_color),
           verify(icing_sugar_coated),
           verify(chocolate_flavor).

macarons :- european, dessert, france,
            verify(smooth_and_rounded_shape),
            verify(vibrant_color),
            verify(buttercream_coated),
            verify(caramel_and_vanilla_flavor).

tiramisu :- european, dessert, italy,
            verify(layers_shape),
            verify(lightbrown_color),
            verify(powdered_chocolate_coated),
            verify(coffee_flavor).
/*asia*/
taiyaki :- east_asian, dessert, japan,
            verify(have_tai_fish_shape),
            verify(have_differently_shaped_versions),
            verify(common_filling_is_red_bean_paste).

tanghulu :- east_asian, dessert, china,
            verify(layers_of_fruits),
            verify(have_glass_texture).

kue_lapis :- east_asian, dessert, indonesia,
            verify(have_many_colours),
            verify(eating_on_eid).

dalgona :- east_asian, dessert, korea,
            verify(have_flat_shape),
            verify(could_be_game).

ladoo :- east_asian, dessert, india,
            verify(the_most_international_Indian_dessert),
            verify(eating_on_occasions).
/*arab*/
baklava :- arabic, dessert,
           verify(layers_of_phyllo_dough),
           verify(nut_filling),
           verify(sweet_syrup).

kunafa :- arabic, dessert,
          verify(layers_of_filo_pastry),
          verify(cheese_filling).

muhallabia :- arabic, dessert,
              verify(pudding_texture),
              verify(rose_water_flavor),
              verify(pistachio_garnish).

maamoul :- arabic, dessert,
           verify(dough),
           verify(dates_or_nuts_filling),
           verify(powdered_sugar_coated).

basbousa :- arabic, dessert,
            verify(semolina_cake),
            verify(sweet_syrup_soaked),
            verify(almond_garnish).

qatayef :- arabic, dessert,
           verify(pancake_like),
           verify(small_and_round),
           verify(cheese_or_nut_filling).

balah_alsham :- arabic, dessert,
                verify(small_rectangular),
                verify(syrup_or_honey).

um_ali :- arabic, dessert,
          verify(bread_pudding),
          verify(milk_and_nuts),
          verify(baked_until_golden).

kleja :- arabic, dessert,
           verify(pastry_dough),
           verify(cardamom_flavor),
           verify(date_filling).

luqaimat :- arabic, dessert,
            verify(deep_fried_dough),
            verify(dusted_with_sugar_syrup).

/* Classification rules */
spain :- verify(made_in_madrid), !.
germany :- verify(made_in_hamburg), !.
switzerland :- verify(made_in_bern), !.
france :- verify(made_in_bordeaux), !.
italy :- verify(made_in_milan), !.
japan :- verify(street_food), !.
china :- verify(traditional_food), !.
indonesia :- verify(resembles_dutch_lazuli_cake), !.
korea :- verify(popular_since_sixties), !.
india :- verify(weddings_and_parties_sweets), !.

dessert :- verify(crispy), !.
dessert :- verify(sweet_bread), !.
dessert :- verify(cookies), !.
dessert :- verify(small_cake), !.
dessert :- verify(layers_of_coffee), !.
/*asia*/
dessert :- verify(goldfish_shaped), !.
dessert :- verify(covered_with_sugar), !.
dessert :- verify(layers_of_rice_cake), !.
dessert :- verify(caramelizing), !.
dessert :- verify(ball_shaped), !.
/*arab*/
dessert :- verify(layers_of_phyllo_dough), !.
dessert :- verify(pastry), !. /*kunafa*/
dessert :- verify(pudding),!. /*muhallabia*/
dessert :- verify(dough), !. /*maamoul*/
dessert :- verify(semolina), !.
dessert :- verify(pancake), !. /*qatayef*/
dessert :- verify(honey), !. /*balah_alsham*/
dessert :- verify(milk_and_nuts).
dessert :- verify(cardamom), !. /*kleja*/
dessert :- verify(fried_dough), !.

european :- verify(popular_in_france_mexico_portugal), !.
european :- verify(popular_in_uk_poland_spain), !.
european :- verify(popular_in_uk_germany_france), !.
european :- verify(popular_in_romania_belgium_netherlands), !.
european :- verify(popular_in_sweden_ukraine_italy), !.

east_asian :- verify(popular_because_of_anime), !.
east_asian :- verify(popular_because_of_tiktok), !.
east_asian :- verify(popular_in_malaysia_too), !.
east_asian :- verify(popular_because_squid_game_series), !.
east_asian :- verify(popular_in_pakistan_too), !.

arabic :- verify(popular_in_syria_and_turkey), !. /*baklava*/
arabic :- verify(popular_in_levant), !. /*kunafa*/
arabic :- verify(popular_in_egypt), !. /*muhallabia*/
arabic :- verify(popular_in_saudi_levant), !. /*maamoul*/
arabic :- verify(popular_in_egypt), !. /*basbousa*/
arabic :- verify(popular_in_syria), !. /*qatayef*/
arabic :- verify(popular_in_syria), !. /*balah_alsham*/
arabic :- verify(popular_in_egypt), !. /*um_ali*/
arabic :- verify(popular_in_Saudi), !. /*kleja*/ 
arabic :- verify(popular_in_saudi_and_turkey), !. /*luqaimat*/
ask(Question) :- 
        write('Does the dessert have the following attribute: '), 
        write(Question), write('? '), 
         read(Response), nl, 
         ( (Response == yes ; Response == y) 
         -> assert(yes(Question)) ; 
         assert(no(Question)), fail). 
:- dynamic yes/1,no/1. 
/* How to verify something */ 
verify(S) :- (yes(S) -> true ; (no(S) -> fail ; ask(S))). 

/* undo all yes/no assertions */ 
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail. 
undo.