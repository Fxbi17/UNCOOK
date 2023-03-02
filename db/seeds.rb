# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

p "Cleaning database"
User.destroy_all
Menu.destroy_all
MenuDish.destroy_all
IngredientDish.destroy_all
Dish.destroy_all
Ingredient.destroy_all
p "Database cleaned"

p 'Creating users'
user1 = User.create!(email: 'fabio@uncook.co', password: '123456')
user2 = User.create!(email: 'bruno@uncook.co', password: '123456')
p 'Users created'

p 'Creating dishes'
# dish6.photo.attach(io: File.open('app/assets/images/tiramisu.jpeg'), filename: "tiramisu.jpeg", content_type: "image/jpeg")

dish1 = Dish.create!(
  name: "Moroccan lamb tongue",
  description: "Melt-in-your-mouth lamb and warming Moroccan spices – this lamb tagine recipe is perfect served with warm flatbreads.",
  recipie: "1. Put all the vegetables in the broth in the saucepan with the 2 tongues and bring to the boil.\n
    2. Reduce heat and cook for 45 minutes.\n
    3. Drain the tongues, peel them and cut them into slices.\n
    4. In another saucepan, heat the oil and brown the carrots, onion and celery.\n
    5. When the vegetables are nicely browned, add a ladle of the cooking broth.\n
    6. Bring to a simmer, adding a little broth if necessary. Add the diced candied lemon and the tongues 10 minutes before the end of cooking.",
  numpers: 6-8
)
dish1.photo.attach(io: File.open('app/assets/images/moroccan-lamb-tagine.jpg'), filename: "moroccan-lamb-tagine.jpg", content_type: "image/jpg")

dish2 = Dish.create!(
  name: "Chicken tikka masala",
  description: "Chicken tikka masala is a dish of chunks of roasted marinated chicken in a spiced curry sauce.",
  recipie: "1. Whisk the garlic, yoghurt, spices and ginger together in a bowl. Add the chicken, stir to coat, then cover and refrigerate for at least an hour and up to overnight.\n
    2. Heat half the oil in a large, heavy-based pot and add the cumin seeds. Cook for 1 minute, then add the onion, ginger and garlic. Cook for 8-10 minutes over a medium heat, until the onion is softened. Add all the remaining ingredients except the cream and cook, covered, for 10 minutes. Remove the lid, add the cream and simmer for 5 minutes.\n
    3. Thread chicken onto skewers, and arrange on the prepared baking sheet.\n
    4. Heat the remaining oil in a large frying pan and cook the chicken in batches, until just cooked through. Add to the curry sauce and cook together for a further 5 minutes.\n
    5. Serve the curry garnished with coriander, alongside plenty of rice and naan or paratha.",
  numpers: 6
)
dish2.photo.attach(io: File.open('app/assets/images/tikkamasala.jpg'), filename: "tikkamasala.jpg", content_type: "image/jpg")

dish3 = Dish.create!(
  name: "Grilled chicken",
  description: "Sweet, spicy and aromatic, these grilled chicken thighs pack a punch. Great served with flaky roti or steamed white rice. ",
  recipie: "1. Blitz the lemongrass, ginger and garlic in a food processor until finely ground. Add the coconut milk, lime juice, turmeric, sugar and salt and blitz again. Add the sambal and stir to combine. Reserve one-third of the marinade in a small container in the refrigerator. Place the remaining marinade in a large bowl along with the chicken. Cover and chill for 4-6 hours. \n
    2. Heat the barbecue to medium-high. Grill the chicken for 4-5 minutes each side. Remove from the heat and let rest for 3 minutes. While the chicken is cooking, bring the reserved marinade to a simmer in a small saucepan and cook until orange and reduced. Drizzle over the cooked chicken or serve alongside. \n
    3. In a jar, shake together the oil, lime juice, caster sugar and garlic. In a large bowl, toss together the remaining ingredients. Drizzle over the dressing and serve alongside the chicken. ",
  numpers: 6
)
dish3.photo.attach(io: File.open('app/assets/images/sambalchicken.jpg'), filename: "saambalchicken.jpg", content_type: "image/jpg")

dish4 = Dish.create!(
  name: "Tamari-glazed Salmon",
  description: "I have long been a fan of brown rice, and here its nubbly texture is the perfect foil for the rich salmon with sesame, tamari and chilli.",
  recipie: "1.Cook the brown rice according to the packet instructions, drain well and set aside.\n
    2.Combine the ginger, sesame oil, tamari, garlic and chilli in a container. Add the salmon and toss to coat. Set aside for 10 minutes to marinate.\n
    3. Heat 2 tablespoons of the oil in a large frying pan over a medium-high heat. Add half the salmon and cook, turning, for 2-3 minutes, until just cooked. Remove and repeat with the remaining salmon, reserving the marinade. Set aside to rest, loosely covered with foil.\n
    4. Add the remaining oil to the frying pan, then add the spring onions and broccolini and cook for 2 minutes. Add the rice wine, edamame beans, reserved marinade and cook, stirring, for 3-4 minutes, until the liquid has reduced slightly. Add the rice to the pan for 3-4 minutes, until heated through. Spoon the rice and vegetables onto 4 serving plates and top with the salmon. Top with the chilli oil and sesame seeds to serve.",
  numpers: 4
)
dish4.photo.attach(io: File.open('app/assets/images/tamarisalmon.jpg'), filename: "tamarisalmon.jpg", content_type: "image/jpg")


dish5 = Dish.create!(
  name: "Strawberry butterflied chicken",
  description: "This is a butterflied chicken like no other. Glazed with butter, basil and balsamic and then topped with balsamic marinated strawberries, it’s worth every bite.",
  recipie: "1.Preheat the oven to 200oC.\n
    2. Spread out the sliced onion onto the bottom of a roasting dish. Place the chicken on top of the onion and pat dry.\n
    3. Melt the butter, then add the balsamic and basil.\n
    4. Brush half of this mixture all over the chicken and season.\n
    5. Cook for 20 minutes until looking golden.\n
    6. Take the chicken out of the oven and baste with the remaining butter and balsamic.\n
    7. Reduce the oven to 180oC and cook for approximately 20 minutes, until cooked through. Remove from the oven and leave to rest for 10 minutes.\n
    8. Boil the potatoes in salted water until tender and strain.\n
    9. Mix together the butter, basil and garlic.\n
    10. Gently press the potatoes with your thumbs to flatten and open up the middle.\n
    11. Place in an oven dish and smear the butter mix all over the potatoes.\n
    12. Season and put in the oven with the chicken for the second 20 minutes, until golden and crisp.\n
    13. Heat a frypan and melt the butter.\n
    14. Add the asparagus and water, season and cover and cook for 2-4 minutes.\n
    15. Place rested chicken on a serving platter.\n
    16. Pour all the pan juices into a saucepan and add the onions to the chicken platter.\n
    17. Add the brown sugar to the pan juices and bring to the boil, simmer gently for 5 minutes to reduce.\n
    18. Take off the heat and toss in the strawberries and pour over the chicken.\n
    19. Garnish with extra basil leaves. Serve with the crushed potatoes and asparagus.",
  numpers: 4
)
dish5.photo.attach(io: File.open('app/assets/images/butterfliedchicken.jpg'), filename: "butterfliedchicken.jpg", content_type: "image/jpg")

dish6 = Dish.create!(
  name: "Cumin and chilli lamb skewers",
  description: "Enjoy these Northern Chinese-inspired lamb skewers with rice and your favourite Asian greens!",
  recipie: "1. Toast the seeds and peppercorns in a dry pan over a medium heat for about 5 minutes, or until aromatic. In a mortar and pestle or spice grinder, grind the toasted components along with the salt, sugar, garlic powder, chilli flakes and chilli powder, if using, until you have a fine powder. Set aside.
    2. Trim any large surface area of fat off the lamb. Cut the fat into chunks and reserve. Cut the lamb meat into 2-3cm cubes.
    3. Blanch the lamb fat in 1 litre of boiling water over a high heat for about 4 minutes, or until solid. Remove the fat from the water and shake off excess liquid. Allow to cool slightly, then cut into 2cm cubes. Discard the blanching liquid.
    4. Peel the onion and cut into large chunks. It is only used to impart flavour to the meat. In a large bowl, combine the lamb, lamb fat, onion chunks, salt, rice wine, black pepper and white pepper. Cover and marinate in the fridge for at least 2 hours, or up to overnight.
    5. Thread the lamb and fat alternately onto the skewers, so there are 4-5 pieces of meat on each skewer. Discard the onions.
    6. Heat a grill pan or barbecue to maximum heat. Grill the skewers for 2-3 minutes on each of the 4 sides. Sprinkle a generous amount of the spice mix over the skewers each time you turn them. You should end up with charred edges on the lamb and crispy, rendered fat.",
  numpers: 3
)
dish6.photo.attach(io: File.open('app/assets/images/chillilamb.jpg'), filename: "chillilamb.jpg", content_type: "image/jpg")

dish7 = Dish.create!(
  name: "Roast salmon",
  description: "This is a remix of our classic roast salmon recipe, bringing in the tang of sumac, which works perfectly with the earthy, garlicky tahini-spiked mayo.",
  recipie: "1. Preheat the oven to 220°C fan bake.\n
    2. Lay the salmon skin side down on the lined oven tray. Combine the olive oil, garlic, pomegranate molasses, cumin seeds, sumac and salt. Brush over the salmon and bake for 12 minutes. Take care to not overcook it.\n
    3. Whisk all the ingredients together until smooth and creamy.\n
    4. Put the vinegar, sugar and salt in a small non-reactive bowl and whisk to dissolve the sugar. Add the onion, cover and refrigerate until ready to use.\n
    5. When ready to serve, garnish the salmon with the drained onion, walnuts and herbs. Serve with the Tahini Yoghurt Mayo.\n
    BONUS: Nothing compliments the oily richness of salmon better than excellent chardonnay and the Te Mata Estate Elston Chardonnay 2020 ($40) is an absolute aristocrat. Erupting with grilled lemon, nectarine and grapefruit gorgeousness, alongside scorched cashew characters, smoked citrus complexity and caramelised oak notes, it has a finish that makes you close your eyes and say “mmmph” as your shoulders drop with satisfaction and contentment.",
  numpers: 6
)
dish7.photo.attach(io: File.open('app/assets/images/tahinisalmon.jpg'), filename: "tahinisalmon.jpg", content_type: "image/jpg")

dish8 = Dish.create!(
  name: "Curry lentil soup",
  description: "Deliciously fragrant and warming, with a little kick, this soup is a sure-fire winner – feel free to serve with naan or roti on the side.",
  recipie: "1. Heat the oil in a large pot or deep frying pan and add the onion. Cook over a medium heat for 8 minutes, until softened but not coloured. Add the garlic, ginger, fish sauce and curry paste and stir to combine. Add the stock, coconut milk and lime leaves and bring to a simmer for 5 minutes. Add the kūmara and cook for a further 15 minutes, or until just cooked through. Add the lentils and beans, cook for a final 5 minutes, then serve immediately.\n
    2. Cook’s note:If you’re after an even more substantial stew-style soup, add another 400-gram tin of well-drained lentils.",
  numpers: 4
)
dish8.photo.attach(io: File.open('app/assets/images/lentilsoup.jpg'), filename: "lentilsoup.jpg", content_type: "image/jpg")

dish9 = Dish.create!(
  name: "Mushroom gnocchi",
  description: "Earthy mushroom, salty pancetta and decadent brie come together like magic in this simple yet decadent dish.",
  recipie: "1. Preheat the oven to 180°C fan bake.\n
    2. Heat the olive oil and butter in a large frying pan and cook the pancetta for 5 minutes, until crispy and golden. Remove from the pan and set aside. Add the onion to the fat remaining in the pan and cook over a gentle heat for 10 minutes. Remove from the pan and add to the pancetta. If necessary, add 1 or 2 more tablespoons of oil to the pan, season the mushrooms well with salt and pepper, then cook over a medium-high heat for 10 minutes, stirring occasionally to stop them from catching.\n
    3. While the mushrooms are cooking, boil the gnocchi according to the packet instructions, then drain well. Add the pancetta and onions to the mushrooms along with the wine and cream and cook together for 5 minutes. Add the gnocchi to the mushrooms with half of the brie and stir to combine, then spoon into an ovenproof dish and top with the remaining brie and the walnuts. Finish in the oven for 10-15 minutes before serving with a simple bitter green salad or freshly cooked green beans.\n
    BONUS: Mushrooms lend themselves perfectly to pinot noir, and the Monowai Hawke’s Bay Pinot Noir 2020 ($25) has buckets of earthy, savoury flavours, edged with tamarillo, rhubarb and baked cherry notes. Spicy and nicey with this dish.",
  numpers: 4
)
dish9.photo.attach(io: File.open('app/assets/images/gnocchi.jpg'), filename: "gnocchi.jpg", content_type: "image/jpg")

dish10 = Dish.create!(
  name: "Jamaican BBQ burger",
  description: "Perk up dinnertime with Angel Bay’s limited-edition Jamaican Jerk BBQ Brisket Burger Patties, created in collaboration with celebrity chef Jax Hamilton.",
  recipie: "1. Preheat the grill to its highest setting.\n
    2. Combine all the ingredients except the mango, sesame seeds and herbs in a large bowl and turn to combine. Gently fold through the mango, sesame seeds and mint.\n
    3. Stir all the ingredients together and season with salt and pepper.\n
    4. Cook the burger patties according to the packet instructions. Place the cooked patties on a baking tray and top with the cheese. Place under the grill until the cheese is melting.\n
    5. Spread both the bases and tops of the brioche buns with the mayo. Layer up the bases with the lettuce, avocado, patties and the mango slaw. Add the tops.\n
    6. Serve with the fries and a side of coleslaw.",
  numpers: 4
)
dish10.photo.attach(io: File.open('app/assets/images/burger.jpg'), filename: "burger.jpg", content_type: "image/jpg")

dish11 = Dish.create!(
  name: "Baked prawns",
  description: "This is the perfect dish to serve with lots of crusty bread for mopping up all the lovely garlicky, lemony juices.",
  recipie: "1. Preheat the oven to 200°C fan bake.\n
    2. Toss the prawns with all the ingredients except the feta. Tip into a medium, shallow, ovenproof baking dish. Break the feta into large pieces and nestle into the dish. Spoon over some of the juices and a grind of pepper.\n
    3. Bake for 15 minutes, until the prawns are just cooked. Scatter over the parsley.",
  numpers: 2
)
dish11.photo.attach(io: File.open('app/assets/images/prawnsfeta.jpg'), filename: "prawnsfeta.jpg", content_type: "image/jpg")

dish12 = Dish.create!(
  name: "Beef mince wraps",
  description: "Nothing beats beef mince for a quick and tasty weeknight meal! The team at Greenlea believe that beef mince can be not only an easy way to cook but also healthy, so their mince is at least 90% lean.",
  recipie: "1. Add the finely sliced cabbage to large bowl sprinkle over 1/2 a teaspoon of salt. Using your hands massage the cabbage until it has softened slightly. Set aside.\n
    2. Heat a large frying pan on high.\n
    3. Add the mince and brown, breaking it apart with a wooden spoon as you go.\n
    4. When the mince is nearly cooked add the Rendang paste and 2 tablespoons of water, mix well.\n
    5. Once cooked through, remove the mince from the heat and set aside.\n
    6. Heat the wraps either on a ribbed skillet or in the microwave for 30 seconds.\n
    7. Assemble the wraps starting with the pickled cabbage and sprouts. Then add the mince with chopped peanuts on top.\n
    8. Garnish with mint, coriander, sliced chilli and a squeeze of lime if you like.",
  numpers: 4
)
dish12.photo.attach(io: File.open('app/assets/images/beefwraps.jpg'), filename: "beefwraps.jpg", content_type: "image/jpg")

dish13 = Dish.create!(
  name: "Leek risotto",
  description: "Peas are my favourite frozen vegetable. They pair beautifully with leeks and lemon and the herby spinach purée brings this dish alive with a zesty fresh flavour – perfect for spring!",
  recipie: "1. Bring the peas to the boil in a saucepan of salted water. Drop in the spinach and swirl together then drain immediately. Place in a food processor with the remaining ingredients and season generously. Process until smooth, scraping down the sides. Set aside.\n
    2. Heat the oil in a large saucepan over a medium heat and add the leek, garlic, bay leaf and salt. Cover and cook until the leek is tender but not coloured. Stir in the rice and cook for another minute until the rice is warm. Add the wine and stir until most of the liquid has been absorbed.\n
    3. Add the stock a ladle at a time, stirring and allowing the liquid to be absorbed before adding the next quantity. When the risotto is tender to the bite and has a creamy consistency (after about 20 minutes), stir in the lemon zest and juice and the parmesan. Season to taste then stir in the pea purée.\n
    4. Divide the risotto between plates or bowls. Top with stracciatella or mozzarella, olive oil and ground pepper. Serve immediately.",
  numpers: 4
)
dish13.photo.attach(io: File.open('app/assets/images/risotto.jpg'), filename: "risotto.jpg", content_type: "image/jpg")

dish14 = Dish.create!(
  name: "Ponsonby road",
  description: "Southern Clams are always on the menu at Ponsonby Road Bistro, available in entrée, sharing and main sizes. Flavours change regularly from the classic French style given here to Thai style, with red tamarind broth and Spanish-style, with chorizo, dry sherry and roasted red pepper broth.",
  recipie: "1. Sweat the leek, garlic & shallots in the butter with a pinch of salt and pepper until soft.\n
    2. Add chopped thyme and bay leaves, stir in mustard and add half the wine, bring to the boil, reduce for 1 minute, add the cream and reduce for a further 5 minutes.\n
    3. Heat a large saucepan over high\n
    4. Heat and add the rest of the white wine, add clams then the cream mixture. Cover and simmer until the clams open.\n
    5. Sprinkle with chopped herbs and serve with grilled sourdough and lemon wedges.",
  numpers: 4
)
dish14.photo.attach(io: File.open('app/assets/images/ponsonby.jpg'), filename: "ponsonby.jpg", content_type: "image/jpg")

dish15 = Dish.create!(
  name: "Pork meatball and green soup",
  description: "This lovely fennel seed-infused broth is combined with tender pork meatballs, white beans and veges. ",
  recipie: "1. Heat the oil in a large saucepan and cook the onion, carrot, garlic, fennel seeds and bay leaves with a good pinch of salt for 5 minutes. Add the stock and simmer gently for 20 minutes.\n
    2. Place the crumbs and milk in a bowl, stir and leave for 5 minutes. Toast the seeds in a dry pan for 2 minutes, or until fragrant. Grind to a powder. Combine the remaining meatball ingredients, season and roll into walnut-sized balls. Heat the oil in a pan and cook the meatballs until golden.\n
    3. Add the peas to the soup and simmer until tender. Stir in the spinach, beans and meatballs and heat through. Divide the meatballs and soup between bowls and top with parmesan.",
  numpers: 4
)
dish15.photo.attach(io: File.open('app/assets/images/greensoup.jpg'), filename: "greensoup.jpg", content_type: "image/jpg")

dish16 = Dish.create!(
  name: "Chicken with bacon",
  description: "A classic French recipe I’ve been cooking for years, I never tire of it. A bowl of super creamy mashed potatoes and cooked green beans are the perfect accompaniments.",
  recipie: "1. Heat the olive oil and butter in a sauté pan over a medium heat. Season the chicken with salt and pepper and cook, skin side down, for 10 minutes. Turn over and cook for 2 minutes. Transfer to a plate and set aside.\n
    2. Add the onion, bacon, tarragon, garlic and a pinch of salt to the pan. Cook until the onions are soft. Add the stock and bring to a boil. Add the chicken with any juices, cover and cook over a gentle heat until the chicken is fully cooked, about 15 minutes. Whisk together the mustards and crème fraîche, stir into the pan and simmer for 5 minutes. Scatter over the parsley.",
  numpers: 2
)
dish16.photo.attach(io: File.open('app/assets/images/chickentarragon.jpg'), filename: "chickentarragon.jpg", content_type: "image/jpg")

dish17 = Dish.create!(
  name: "Mushroom pie",
  description: "With two chillies, this spicy beef pie is full-grunt, so feel free to use one if you like less heat with your melt-in-the-mouth beef.",
  recipie: "1. Spray the base of a 22cm pie dish very lightly with cooking oil spray and brush to coat the sides.\n
    2. Heat 2 tablespoons of the oil in a large ovenproof casserole and add the onion and mushrooms. Cover and cook for 10 minutes, stirring occasionally, until the onions are soft. Use a slotted spoon to transfer the vegetables to a bowl. Add more oil to the pan and brown the meat in batches, removing to a plate as it’s done.\n
    3. Return the vegetables to the pan and stir in the garlic, ginger, chillies, five spice, oyster, soy and sweet chilli sauces and bring to the boil, scraping the base of the pan to release any sticky bits. Add the orange zest, star anise and beef stock and return the meat and any juices to the pan and combine. Season. Cover the mix with a sheet of baking paper then cook over a low heat (just bubbling) for 2 hours. Remove the baking paper and continue cooking for another 2 hours. Spoon out 1 cup of sauce (no meat) and whisk with the flour, then return to the pot. Cook a further 30 minutes until the meat is very tender and the sauce is thickened. Cool completely before assembling the pie.\n
    4. Preheat the oven to 180°C fan bake.\n
    5. Cut out 2 circles of pastry, the first large enough to line the base and sides of the pie dish and the other to match the top of the pie dish. Line the tin with the bigger pastry circle.\n
    6. Remove the star anise from the filling and discard. Spoon the filling into the pastry-lined dish. Brush the lip of the exposed pastry with the egg. Place the pastry lid on top. Squash the edges to seal, trim the excess pastry and use your thumb or the tines of a fork to make a pattern around the edge. Brush with egg, sprinkle with sesame seeds and chill in the fridge for 30 minutes.\n
    7.Cook the pie for 45-50 minutes until golden.",
  numpers: 6
)
dish17.photo.attach(io: File.open('app/assets/images/mushroompie.jpg'), filename: "mushroompie.jpg", content_type: "image/jpg")

dish18 = Dish.create!(
  name: "French onion dogs",
  description: "Who doesn’t love French Onion soup? All my favourite flavours in a delicious gourmet dog, sort of like America meets France at the hot dog stand.",
  recipie: "1. Preheat the grill to its highest setting.\n
    2. Heat the oil in a sauté pan and cook the sausages until golden and fully cooked. Slice the bread rolls through the top, leaving them attached at the base. Spread both sides of the bread rolls with mustard then a layer of grated cheese. Add the bratwurst then top with caramelised onions and another good grating of cheese. Top with a sprig of thyme and place under the grill until the cheese has melted. Top with cornichons and serve immediately.\n
    3. It’s a good idea to make a double batch of these and use them on everything from pizzas, on baked potatoes with sour cream, in toasties and omelettes and alongside roasted meats.\n
    4. Heat the oil and butter in a sauté pan and add the onions, garlic and thyme. Season generously and cook for 20 minutes, stirring occasionally, until softened.\n
    5. Add the sugar and vinegar and continue to cook until deeply golden and glossy. MAKES 1¼ CUPS",
  numpers: 4
)
dish18.photo.attach(io: File.open('app/assets/images/oniondogs.jpg'), filename: "oniondogs.jpg", content_type: "image/jpg")

dish19 = Dish.create!(
  name: "Beef lasagne",
  description: "It’s a classic and for good reason. Nothing beats a bubbling, golden dish of meat ragù with a creamy cheesy sauce and blistered tomatoes.",
  recipie: "1. Preheat the oven to 170°C fan bake.\n
    2. Heat the olive oil in a large saucepan and cook the onion, carrot and oregano with a good pinch of salt for 15 minutes. Turn the heat to high and add the minces and garlic and cook until there’s no pink left in the meat, breaking it up with a spoon into small pieces.\n
    3. Stir in the tomato paste, Dijon mustard, Worcestershire and soy sauces then sprinkle over the flour and combine. Cook for 2 minutes then stir in the stock and tomatoes and season well. Cover and simmer gently for 40 minutes, stirring occasionally.\n
    4. Melt the butter in a large saucepan and stir in the flour to make a smooth paste. Cook for 2 minutes, stirring constantly, then whisk in the milk in 3 lots until smooth. Bring to the boil then simmer for 5 minutes until thick and glossy. Stir in the parmesan and nutmeg and season generously.\n
    5. Spread a thin layer of béchamel in the base of a large ovenproof dish or sauté pan then cover with lasagne sheets, bringing them up the side of the dish. Spoon over half each of the beef ragù, grated mozzarella and the béchamel. Repeat to make one more layer. Place the tomatoes on top and grate over a layer of parmesan.\n
    6. Bake for 40 minutes, or until a knife will easily slide through the layers and the top is bubbling and golden. Leave for 15 minutes before serving.\n
    Cooks note: The beef ragù can be made 3 days ahead and the béchamel, 2 days ahead of assembling and baking.",
  numpers: 8
)
dish19.photo.attach(io: File.open('app/assets/images/lasagne.jpg'), filename: "lasagne.jpg", content_type: "image/jpg")

dish20 = Dish.create!(
  name: "Honey-roasted duck legs",
  description: "Duck is a rich meat that cooks to a melting tenderness and works well with many seasonal fruits. I served it here over a slice of potato gratin with green beans and toasted almonds.",
  recipie: "1. Preheat the oven to 180°C fan bake.\n
    2. Season the flesh side of the duck with salt and pepper. Heat the oil in a large ovenproof sauté pan over medium heat and add the duck, skin side down. Cook until the skin is golden. Turn skin side up, brush with 1 tablespoon of honey, season with salt and pepper then cover and roast for 30 minutes. Uncover and cook for a further 15 minutes, or until very tender. Transfer the duck to a plate and cover to keep warm.\n
    3. Pour most of the fat out of the pan, leaving any sticky bits behind. Add the vinegar and the remaining honey and let it bubble up. Add the apricots cut side down then add the stock. Simmer for about 8 minutes, occasionally spooning the pan juices over the apricots until they’re tender but not collapsing. Gently whisk in the butter a little piece at a time, to make a glossy sauce. Season with salt and pepper if needed.\n
    4. Place the duck legs on serving plates with your vegetables of choice. Add the apricots and spoon over the pan sauce.",
  numpers: 4
)
dish20.photo.attach(io: File.open('app/assets/images/duck.jpg'), filename: "duck.jpg", content_type: "image/jpg")

dish21 = Dish.create!(
  name: "Fennel, salami and chilli pizza",
  description: "A hit of aniseed from the fennel pairs beautifully with a good salami, a kick of chilli and rich molten cheese.",
  recipie: "1. Preheat the oven to 225°C fan bake. Place a heavy flat baking tray in to preheat.\n
    2. Brush the dough with a little olive oil then spread with the tomato sauce, leaving a border around the edge. Lay the salami over the top. Toss the fennel slices with a little olive oil and arrange on top then dot over the cheese. Slide the pizza, still on the paper, onto the hot baking tray and bake for about 12 minutes, or until puffed and golden, turning for even browning if necessary.\n
    3. Scatter over chilli flakes to taste then the reserved fennel fronds, if desired. Serve immediately.\n
    4. Combine the flour, yeast, salt and sugar in a large bowl. Tip in the combined water and oil and bring together to make a soft shaggy dough. Tip onto a lightly floured bench and bring together with your hands. Knead for 5 minutes until smooth and elastic.\n
    5. Place in a large, oiled bowl and turn the dough to lightly coat in the oil. Cover with plastic wrap. Set aside in a draught-free place for 1½-2 hours to double in size.\n
    6. When the dough has risen, remove from the bowl and divide in half.\n
    7. Dust with flour then place on a sheet of baking paper and roll out or flatten the dough with your fingers to the desired shape.\n
    BONUS: This dough makes two pizzas and can be made 2 days ahead of using. If making ahead, cover and refrigerate after the initial kneading or divide between 2 large sealable plastic bags. Use straight from the fridge when ready to assemble and cook. If only making 1 pizza, freeze the other half of the dough in a plastic bag for another day.",
  numpers: 1
)
dish21.photo.attach(io: File.open('app/assets/images/pizza.png'), filename: "pizza.png", content_type: "image/png")

p 'Dishes created'

p 'Creating ingredients'
anise = Ingredient.create!(name: "anise")
apricots = Ingredient.create!(name: "apricots")
avocado = Ingredient.create!(name: "avocados")
bacon = Ingredient.create!(name: "bacon")
balsamic = Ingredient.create!(name: "balsamic")
basil = Ingredient.create!(name: "basil")
bay_leaf = Ingredient.create!(name: "bay leaf")
bean_sprouts = Ingredient.create!(name: "bean sprouts")
beans = Ingredient.create!(name: "beans")
beef = Ingredient.create!(name: "beef")
beef_burger = Ingredient.create!(name: "beef burger")
beef_stock = Ingredient.create!(name: "beef stock")
bread = Ingredient.create!(name: "bread")
brie = Ingredient.create!(name: "brie")
broccolini = Ingredient.create!(name: "broccolini")
buns = Ingredient.create!(name: "buns")
butter = Ingredient.create!(name: "butter")
cabbage = Ingredient.create!(name: "cabbage")
caraway = Ingredient.create!(name: "caraway")
carrot = Ingredient.create!(name: "carrot")
cashews = Ingredient.create!(name: "cashews")
celery = Ingredient.create!(name: "celery")
cheddar = Ingredient.create!(name: "cheddar")
chicken = Ingredient.create!(name: "chicken")
chicken_stock = Ingredient.create!(name: "chicken stock")
chilli = Ingredient.create!(name: "chilli")
chilli_flakes = Ingredient.create!(name: "chilli flakes")
chilli_powder = Ingredient.create!(name: "chilli powder")
chives = Ingredient.create!(name: "chives")
clams = Ingredient.create!(name: "clams")
clove = Ingredient.create!(name: "clove")
coconut_milk = Ingredient.create!(name: "coconut milk")
coriander = Ingredient.create!(name: "coriander")
cornichons = Ingredient.create!(name: "cornichons")
cream = Ingredient.create!(name: "cream")
cumin = Ingredient.create!(name: "cumin")
curry = Ingredient.create!(name: "curry")
duck = Ingredient.create!(name: "duck")
edamame = Ingredient.create!(name: "edamame")
egg = Ingredient.create!(name: "egg")
fennel = Ingredient.create!(name: "fennel")
fenugreek = Ingredient.create!(name: "fenugreek")
feta = Ingredient.create!(name: "feta")
fish_sauce = Ingredient.create!(name: "fish sauce")
flour = Ingredient.create!(name: "flour")
garlic = Ingredient.create!(name: "garlic")
ginger = Ingredient.create!(name: "ginger")
gnocchi = Ingredient.create!(name: "gnocchi")
gruyere = Ingredient.create!(name: "gruyere")
honey = Ingredient.create!(name: "honey")
kumara = Ingredient.create!(name: "kumara")
lamb = Ingredient.create!(name: "lamb")
lasagne_sheets = Ingredient.create!(name: "lasagne sheets")
laurel = Ingredient.create!(name: "laurel")
leek = Ingredient.create!(name: "leek")
lemon = Ingredient.create!(name: "lemon")
lemongrass = Ingredient.create!(name: "lemongrass")
lentils = Ingredient.create!(name: "lentils")
lettuce = Ingredient.create!(name: "lettuce")
lime = Ingredient.create!(name: "lime")
lime_juice = Ingredient.create!(name: "lime juice")
lime_leaves = Ingredient.create!(name: "lime leaves")
mango = Ingredient.create!(name: "mango")
masala = Ingredient.create!(name: "masala")
mayonnaise = Ingredient.create!(name: "mayonnaise")
milk = Ingredient.create!(name: "milk")
mint = Ingredient.create!(name: "mint")
mint_leaves = Ingredient.create!(name: "mint leaves")
mozzarella = Ingredient.create!(name: "mozzarella")
mushrooms = Ingredient.create!(name: "mushrooms")
mustard = Ingredient.create!(name: "mustard")
naan = Ingredient.create!(name: "naan")
oil = Ingredient.create!(name: "oil")
olive_oil = Ingredient.create!(name: "olive oil")
onions = Ingredient.create!(name: "onions")
orange = Ingredient.create!(name: "orange")
oregano = Ingredient.create!(name: "oregano")
pancetta = Ingredient.create!(name: "pancetta")
panko = Ingredient.create!(name: "panko")
parmesan = Ingredient.create!(name: "parmesan")
parsley = Ingredient.create!(name: "parsley")
peanuts = Ingredient.create!(name: "peanuts")
peas = Ingredient.create!(name: "peas")
pepper = Ingredient.create!(name: "pepper")
peppercorns = Ingredient.create!(name: "peppercorns")
plain_flour = Ingredient.create!(name: "plain flour")
pomegranate = Ingredient.create!(name: "pomegranate")
pork = Ingredient.create!(name: "pork")
potatoes = Ingredient.create!(name: "potatoes")
prawns = Ingredient.create!(name: "prawns")
red_onion = Ingredient.create!(name: "red onion")
rendang = Ingredient.create!(name: "rendang")
rice = Ingredient.create!(name: "rice")
risotto_rice = Ingredient.create!(name: "risotto rice")
salami = Ingredient.create!(name: "salami")
salmon = Ingredient.create!(name: "salmon")
salt = Ingredient.create!(name: "salt")
sambal = Ingredient.create!(name: "sambal")
sausage = Ingredient.create!(name: "sausage")
sesame = Ingredient.create!(name: "sesame")
sesame_oil = Ingredient.create!(name: "sesame oil")
shallots = Ingredient.create!(name: "shallots")
soy_sauce = Ingredient.create!(name: "soy sauce")
spice = Ingredient.create!(name: "spice")
spinach = Ingredient.create!(name: "spinach")
strawberry = Ingredient.create!(name: "strawberry")
sugar = Ingredient.create!(name: "sugar")
sumac = Ingredient.create!(name: "sumac")
tahini = Ingredient.create!(name: "tahini")
tamari = Ingredient.create!(name: "tamari")
tarragon = Ingredient.create!(name: "tarragon")
thyme = Ingredient.create!(name: "thyme")
tomato = Ingredient.create!(name: "tomato")
tongue_of_lamb = Ingredient.create!(name: "tongue of lamb")
turmeric = Ingredient.create!(name: "turmeric")
vegetable_oil = Ingredient.create!(name: "vegetable oil")
vegetable_stock = Ingredient.create!(name: "vegetable stock")
vinegar = Ingredient.create!(name: "vinegar")
walnuts = Ingredient.create!(name: "walnuts")
water = Ingredient.create!(name: "water")
wine = Ingredient.create!(name: "wine")
worcestershire = Ingredient.create!(name: "worcestershire")
wraps = Ingredient.create!(name: "wraps")
yeast = Ingredient.create!(name: "yeast")
yoghurt = Ingredient.create!(name: "yoghurt")

p 'Ingredients created'

p "Creating links between Dishes and Ingredients"

# ingredients_tongue_of_lamb = [tongue_of_lamb, celery, carrot, onions, clove, laurel, thyme, salt, pepper, parsley]
IngredientDish.create!(dish_id: dish1.id, ingredient_id: tongue_of_lamb.id, quantity: "2")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: celery.id, quantity: "1 stalk")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: carrot.id, quantity: "2")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: clove.id, quantity: "1")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: laurel.id, quantity: "1")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: thyme.id, quantity: "1 sprig")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: pepper.id, quantity: "2 tbsp")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: parsley.id, quantity: "1 tbsp")
# ingredients Chicken tikka masala = [Chicken, garlic, yoghurt, masala, chilli powder, turmeric, cumin, salt, olive oil, onions, coriander, fenugreek, tomato, sugar, cream, rice, naan]
IngredientDish.create!(dish_id: dish2.id, ingredient_id: chicken.id, quantity: "800 g")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: garlic.id, quantity: "6 cloves")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: yoghurt.id, quantity: "1/2 cup")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: masala.id, quantity: "2 tbsp")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: chilli_powder.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: turmeric.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: cumin.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: olive_oil.id, quantity: "4 tbsp")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: coriander.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: fenugreek.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: tomato.id, quantity: "400 g")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: sugar.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: cream.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: rice.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: naan.id, quantity: "1")
# ingredients grilled chicken [Chicken, lemongrass, ginger, garlic, coconut milk, lime, turmeric, sugar, salt, sambal, oil, avocado, coriander, mint, red onion, chilli.]
IngredientDish.create!(dish_id: dish3.id, ingredient_id: chicken.id, quantity: "1 kg")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: lemongrass.id, quantity: "1 stalk")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: ginger.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: garlic.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: coconut_milk.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: lime.id, quantity: "1")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: lime_juice.id, quantity: "80 ml")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: turmeric.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: sugar.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: sambal.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: avocado.id, quantity: "1")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: coriander.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: mint.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: red_onion.id, quantity: "1")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: chilli.id, quantity: "1")
# ingredients tamari-glazed salmon [rice, ginger, sesame oil, tamari, garlic, chilli flakes, salmon, oil, onions, broccolini, wine, sesame seeds]
IngredientDish.create!(dish_id: dish4.id, ingredient_id: rice.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: ginger.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: sesame_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: tamari.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: garlic.id, quantity: "1 clove")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: chilli_flakes.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: salmon.id, quantity: "1 kg")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: broccolini.id, quantity: "1 bunch")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: wine.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: sesame.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: edamame.id, quantity: "1 cup")
# ingredients butterflied chicken [chicken, butter, balsamic, basil, onions, salt, pepper, strawberry, sugar, potatoes, garlic]
IngredientDish.create!(dish_id: dish5.id, ingredient_id: chicken.id, quantity: "1 kg")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: butter.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: balsamic.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: basil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: strawberry.id, quantity: "1")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: sugar.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: potatoes.id, quantity: "900 g")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: garlic.id, quantity: "1 tbsp")
# ingredients chilli lamb [coriander, cumin, peppercorns, salt, sugar, garlic, chilli flakes, chilli powder, lamb, onions, wine]
IngredientDish.create!(dish_id: dish6.id, ingredient_id: coriander.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: cumin.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: peppercorns.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: sugar.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: garlic.id, quantity: "1 clove")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: chilli_flakes.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: chilli_powder.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: lamb.id, quantity: "1000 g")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: wine.id, quantity: "1 cup")
# ingredients salmon tahini [salmon, olive oil, garlic, pomegranate, cumin, sumac, salt, yoghurt, mayonnaise, tahini, lemon, vinegar, sugar, onions]
IngredientDish.create!(dish_id: dish7.id, ingredient_id: salmon.id, quantity: "800 g")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: garlic.id, quantity: "1 clove")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: pomegranate.id, quantity: "1")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: cumin.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: sumac.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: yoghurt.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: mayonnaise.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: tahini.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: lemon.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: vinegar.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: sugar.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish7.id, ingredient_id: onions.id, quantity: "1")
# ingredients lentil soup [olive oil, onions, garlic, ginger, fish sauce, curry, chicken stock, coconut milk, lime leaves, kumara, lentils, beans, cashews]
IngredientDish.create!(dish_id: dish8.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: garlic.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: ginger.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: fish_sauce.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: curry.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: chicken_stock.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: coconut_milk.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: lime_leaves.id, quantity: "1")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: kumara.id, quantity: "1 kg")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: lentils.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: beans.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish8.id, ingredient_id: cashews.id, quantity: "1 cup")
# ingredients mushroom gnocchi [olive oil, butter, pancetta, onions, mushrooms, salt, pepper, gnocchi, wine, cream, brie, walnuts]
IngredientDish.create!(dish_id: dish9.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: butter.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: pancetta.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: mushrooms.id, quantity: "400 g")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: gnocchi.id, quantity: "500 g")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: wine.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: cream.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: brie.id, quantity: "150 g")
IngredientDish.create!(dish_id: dish9.id, ingredient_id: walnuts.id, quantity: "1 cup")
# ingredients jamaican beef burger [cabbage, carrot, red onions, lime, olive oil, salt, sugar, mango, sesame seeds, mint, mayonnaise, lemon, garlic, pepper, beef burger, cheddar, buns, lettuce, avocado]
IngredientDish.create!(dish_id: dish10.id, ingredient_id: cabbage.id, quantity: "1")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: carrot.id, quantity: "1")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: red_onion.id, quantity: "1")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: lime.id, quantity: "1")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: sugar.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: mango.id, quantity: "1")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: sesame.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: mint_leaves.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: mayonnaise.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: lemon.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: garlic.id, quantity: "2 clove")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: beef_burger.id, quantity: "600 g")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: cheddar.id, quantity: "1")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: buns.id, quantity: "4")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: lettuce.id, quantity: "1")
IngredientDish.create!(dish_id: dish10.id, ingredient_id: avocado.id, quantity: "1")
# ingredients baked prawns [10 prawns, 2 tomatoe, 1 lemon, olive oeil, 2 garlic, chilli flakes, oregano, salt, pepper, feta]
IngredientDish.create!(dish_id: dish11.id, ingredient_id: prawns.id, quantity: "10")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: tomato.id, quantity: "2")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: lemon.id, quantity: "1")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: garlic.id, quantity: "2 clove")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: chilli_flakes.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: oregano.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish11.id, ingredient_id: feta.id, quantity: "125 g")
# ingredients rendang beef wraps [500g beef, 50g rendang, cabbage, peanuts, bean sprouts, 100g bean, 12 wraps]
IngredientDish.create!(dish_id: dish12.id, ingredient_id: beef.id, quantity: "500 g")
IngredientDish.create!(dish_id: dish12.id, ingredient_id: rendang.id, quantity: "50 g")
IngredientDish.create!(dish_id: dish12.id, ingredient_id: cabbage.id, quantity: "1")
IngredientDish.create!(dish_id: dish12.id, ingredient_id: peanuts.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish12.id, ingredient_id: bean_sprouts.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish12.id, ingredient_id: beans.id, quantity: "100 g")
IngredientDish.create!(dish_id: dish12.id, ingredient_id: wraps.id, quantity: "12")
# ingredients leek risotto [peas, spinach, mint, olive oil, salt, pepper, leek, bay leaf, risotto, 5 cups vegetable stock, lemon, lemon juice, parmesan, 250 g mozzarella]
IngredientDish.create!(dish_id: dish13.id, ingredient_id: peas.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: spinach.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: mint.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: leek.id, quantity: "1")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: bay_leaf.id, quantity: "1")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: risotto_rice.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: vegetable_stock.id, quantity: "5 cup")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: lemon.id, quantity: "1")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: lime_juice.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: parmesan.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish13.id, ingredient_id: mozzarella.id, quantity: "250 g")
# ingredients ponsonby road [48 clams, butter, leek, garlic, 2 shallots, 3 thyme, 2 bay leaf, mustard, wine, 1 cup cream, parsley, chives]
IngredientDish.create!(dish_id: dish14.id, ingredient_id: clams.id, quantity: "48")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: butter.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: leek.id, quantity: "1")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: garlic.id, quantity: "1 clove")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: shallots.id, quantity: "2")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: thyme.id, quantity: "3")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: bay_leaf.id, quantity: "2")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: mustard.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: wine.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: cream.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: parsley.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish14.id, ingredient_id: chives.id, quantity: "1 tbsp")
# ingredients pork meatball [olive oil, 1 onions, 2 carrot, 2 garlic, fennel, bay leaf, salt, pepper, chicken stock, panko, milk, cumin, coriander, caraway seeds, 500 g prok, thyme, mustard, peas, spinach, beans, parmesan]
IngredientDish.create!(dish_id: dish15.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: carrot.id, quantity: "2")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: garlic.id, quantity: "2 clove")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: fennel.id, quantity: "1")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: bay_leaf.id, quantity: "1")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: panko.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: chicken_stock.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: milk.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: cumin.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: coriander.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: caraway.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: pork.id, quantity: "500 g")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: thyme.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: mustard.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: peas.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: spinach.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: beans.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish15.id, ingredient_id: parmesan.id, quantity: "1 cup")
# ingredients chicken tarragon [chicken, olive oil, butter, salt, pepper, 2 garlic, onion, 4 bacon, tarragon, mustard, cream, parsley]
IngredientDish.create!(dish_id: dish16.id, ingredient_id: chicken.id, quantity: "1")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: butter.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: garlic.id, quantity: "2 clove")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: bacon.id, quantity: "4")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: tarragon.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: mustard.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: cream.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish16.id, ingredient_id: parsley.id, quantity: "1 tbsp")
# ingredients mushroom pie [vegetable oil, onions, 400 g mushrooms, 1200 gbeef, 3 garlic, ginger, chilli, spice, soy sauce, orange, anise, feek stock, salt, pepper, plain flour, egg, cream, sesame seeds]
IngredientDish.create!(dish_id: dish17.id, ingredient_id: vegetable_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: mushrooms.id, quantity: "400 g")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: beef.id, quantity: "1200 g")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: garlic.id, quantity: "3 clove")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: ginger.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: chilli.id, quantity: "1")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: spice.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: soy_sauce.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: orange.id, quantity: "1")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: anise.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: beef_stock.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: plain_flour.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: egg.id, quantity: "1")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: cream.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish17.id, ingredient_id: sesame.id, quantity: "1 tbsp")
# ingredients french onion dogs [olive oil, 4 sausage, 4 bread, 100 g gruyere, mustard, onions, thyme, cornichons]
IngredientDish.create!(dish_id: dish18.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish18.id, ingredient_id: sausage.id, quantity: "4")
IngredientDish.create!(dish_id: dish18.id, ingredient_id: bread.id, quantity: "4")
IngredientDish.create!(dish_id: dish18.id, ingredient_id: gruyere.id, quantity: "100 g")
IngredientDish.create!(dish_id: dish18.id, ingredient_id: mustard.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish18.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish18.id, ingredient_id: thyme.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish18.id, ingredient_id: cornichons.id, quantity: "4")
# ingredients beef lasagne [olive oil, onions, carrot, oregano, salt, pepper, 500 g beef, 500 g pork, 3 garlic, mustard, worcestershire, soy sauce, plain flour, beef stock, 800 g tomato, 375 lasagne sheets, 2 mozzarella, 7 tomato, parmesan]
IngredientDish.create!(dish_id: dish19.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: onions.id, quantity: "1")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: carrot.id, quantity: "1")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: oregano.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: beef.id, quantity: "500 g")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: pork.id, quantity: "500 g")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: garlic.id, quantity: "3 clove")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: mustard.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: worcestershire.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: soy_sauce.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: plain_flour.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: beef_stock.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: tomato.id, quantity: "800 g")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: lasagne_sheets.id, quantity: "375")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: mozzarella.id, quantity: "200 g")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: tomato.id, quantity: "7")
IngredientDish.create!(dish_id: dish19.id, ingredient_id: parmesan.id, quantity: "1 cup")
# ingredients duck legs [4 leg duck, salt, pepper, olive oil, honey, vinegar, 6 apricots, chicken stock, butter]
IngredientDish.create!(dish_id: dish20.id, ingredient_id: duck.id, quantity: "4 legs")
IngredientDish.create!(dish_id: dish20.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish20.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish20.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish20.id, ingredient_id: honey.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish20.id, ingredient_id: vinegar.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish20.id, ingredient_id: apricots.id, quantity: "6")
IngredientDish.create!(dish_id: dish20.id, ingredient_id: chicken_stock.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish20.id, ingredient_id: butter.id, quantity: "1 tbsp")
# ingredients chilli pizza [olive oil, tomato, 80 g salami, fennel, 100 g mozzarella, chilli flakes, flour, salt, sugar, water]
IngredientDish.create!(dish_id: dish21.id, ingredient_id: olive_oil.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: tomato.id, quantity: "1")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: salami.id, quantity: "80 g")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: fennel.id, quantity: "1")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: mozzarella.id, quantity: "100 g")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: chilli_flakes.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: flour.id, quantity: "1 cup")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: sugar.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: water.id, quantity: "225 ml")
IngredientDish.create!(dish_id: dish21.id, ingredient_id: yeast.id, quantity: "1 tbsp")


p "Links between Dishes and Ingredients created"
