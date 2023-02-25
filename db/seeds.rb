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
dish1 = Dish.create!(
  name: "Pizza",
  description: "Pizza is a round, flat base topped with sauce, cheese, and toppings,
                baked in a wood-fired oven, with a pizzetta being a small version
                made by a pizzaiolo.",
  recipie: "1. Preheat oven to 500 degrees F (260 degrees C).,\n
    2. Roll out dough into a 12-inch circle on a lightly floured surface.,\n
    3. Spread pizza sauce over dough, leaving a 1/2-inch border.,\n
    4. Sprinkle mozzarella cheese over sauce, leaving a 1/2-inch border.,\n
    5. Top with pepperoni, mushrooms, and green pepper.,\n
    6. Bake in preheated oven for 10 to 12 minutes, or until crust is golden brown.\n
    7. Cut into wedges and serve.",
  numpers: 4
)
dish1.photo.attach(io: File.open('app/assets/images/pizza.jpeg'), filename: "pizza.jpeg", content_type: "image/jpeg")

dish2 = Dish.create!(
  name: "Pasta",
  description: "Pasta is a traditional Italian staple food, made from unleavened
                durum wheat flour and water or eggs, formed into shapes and cooked,
                also referring to various pasta dishes, dating back to 1154 in Sicily.",
  recipie: "1. Bring a large pot of lightly salted water to a boil.,\n
    2. Cook pasta in the boiling water, stirring occasionally until cooked through but still firm to the bite, about 12 minutes. Drain.,\n
    3. Place pasta in a large bowl. Add marinara sauce, and toss to coat.,\n
    4. Sprinkle with Parmesan cheese, and serve.",
  numpers: 3
)
dish2.photo.attach(io: File.open('app/assets/images/pates.jpeg'), filename: "pates.jpeg", content_type: "image/jpeg")

dish3 = Dish.create!(
  name: "Risotto",
  description: "Risotto is a creamy Italian rice dish with broth from meat, fish,
                or vegetables, made with Carnaroli/Vialone Nano rice or often Arborio,
                achieved by toasting rice and gradually adding liquid.",
  recipie: "1. Heat olive oil in a large saucepan over medium heat.,\n
    2. Add onion and cook until tender, about 5 minutes. Stir in rice and cook until lightly toasted, about 3 minutes. Stir in wine and cook until absorbed, about 2 minutes. Stir in broth, 1/2 cup at a time, and cook until absorbed before adding more. Season with salt and pepper. Cook until rice is tender and creamy, about 20 minutes. Stir in peas and Parmesan cheese. Serve immediately.",
  numpers: 2
)
dish3.photo.attach(io: File.open('app/assets/images/risotto.jpeg'), filename: "risotto.jpeg", content_type: "image/jpeg")

dish4 = Dish.create!(
  name: "Cacio e pepe",
  description: "Spaghetti is a long, thin cylindrical pasta, staple of Italian cuisine
                made from wheat and water, sometimes enriched, used in many cuisines,
                with the word meaning thin string in Italian.",
  recipie: "1. Bring a large pot of lightly salted water to a boil.,\n
    2. Cook pasta in the boiling water, stirring occasionally until cooked through but still firm to the bite, about 12 minutes.\n
    3. In a bowl, mix the grated Pecorino cheese and pepper.\n
    4. Keep one cup of pasta water, and add it the mixture above.\n
    5. Drain and place the pasta in a large bowl.\n
    6. Add the sauce in the pasta.",
  numpers: 4
)
dish4.photo.attach(io: File.open('app/assets/images/spaghetti.jpg'), filename: "spaghetti.jpg", content_type: "image/jpeg")

dish5 = Dish.create!(
  name: "Lasagna",
  description: "Lasagna is an oven-baked dish of stacked thin pasta, meat ragù,
                vegetables, cheese, tomato sauce, garlic, herbs, and spices,
                popular with many variations and a traditional dish of Italy.",
  recipie: "1. Preheat oven to 350 degrees F (175 degrees C).,\n
    2. Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in
    boiling water for 8 to 10 minutes. Drain.,\n
    3. In a large skillet, brown the ground beef and onion over medium heat. Drain grease. Stir in the tomato sauce, water, Italian seasoning, salt, and garlic powder. Simmer for 10 minutes, stirring occasionally.,\n
    4. Spread 1 cup of meat sauce in the bottom of a 9x13 inch baking dish. Top with 3 uncooked lasagna noodles, broken to fit. Spread with 1 cup ricotta cheese mixture, 1 cup mozzarella cheese, and 1/2 cup Parmesan cheese. Repeat layers twice. Top with remaining 3 noodles, meat sauce, mozzarella cheese, and Parmesan cheese.,\n
    5. Cover with aluminum foil: to prevent sticking, either spray foil with cooking spray, or make sure the foil does not touch the cheese.,\n
    6. Bake in preheated oven for 25 minutes. Remove foil, and bake an additional 25 minutes. Let stand 15 minutes before serving.",
  numpers: 8
)
dish5.photo.attach(io: File.open('app/assets/images/lasagne.jpg'), filename: "lasagne.jpg", content_type: "image/jpeg")

dish6 = Dish.create!(
  name: "Tiramisu",
  description: "Tiramisu is a popular Italian dessert made of ladyfingers, coffee,
                eggs, sugar, mascarpone cheese, cocoa and garnished with cocoa powder,
                named after the Italian word for pick-me-up due to its caffeine content.",
  recipie: "1. In a large bowl, beat the egg yolks and 1/2 cup sugar until thick and lemon-colored. Beat in mascarpone, 1/2 cup at a time, until smooth. Fold in whipped cream. Cover and refrigerate until serving.,\n
    2. In a small bowl, dissolve the coffee granules in the boiling water. Dip the ladyfingers in the coffee mixture for 1 second on each side. Arrange half of the ladyfingers in a 13-in. x 9-in. dish. Spread with half of the mascarpone mixture. Repeat layers. Cover and refrigerate for at least 4 hours. Just before serving, sprinkle with cocoa.",
  numpers: 8
)
dish6.photo.attach(io: File.open('app/assets/images/tiramisu.jpeg'), filename: "tiramisu.jpeg", content_type: "image/jpeg")

# dish7 = Dish.create!(
#   name: "Moroccan lamb tongue",
#   description: "Melt-in-your-mouth lamb and warming Moroccan spices – this lamb tagine recipe is perfect served with warm flatbreads.",
#   recipie: "1. Put all the vegetables in the broth in the saucepan with the 2 tongues and bring to the boil.
#     2. Reduce heat and cook for 45 minutes.
#     3. Drain the tongues, peel them and cut them into slices.
#     4. In another saucepan, heat the oil and brown the carrots, onion and celery.
#     5. When the vegetables are nicely browned, add a ladle of the cooking broth.
#     6. Bring to a simmer, adding a little broth if necessary. Add the diced candied lemon and the tongues 10 minutes before the end of cooking.",
#   numpers: 6-8
# )
# dish7.photo.attach(io: File.open('app/assets/images/moroccan-lamb-tagine.jpg'), filename: "moroccan-lamb-tagine.jpg", content_type: "image/jpg")

p 'Dishes created'

p 'Creating ingredients'
pizza_dough = Ingredient.create!(name: "Pizza dough")
pizza_sauce = Ingredient.create!(name: "Pizza sauce")
mozza = Ingredient.create!(name: "Mozzarella cheese")
pepperoni = Ingredient.create!(name: "Pepperoni")
mushrooms = Ingredient.create!(name: "Mushrooms")
green_pepper = Ingredient.create!(name: "Green pepper")
pasta = Ingredient.create!(name: "Pasta")
salt = Ingredient.create!(name: "Salt")
marinara_sauce = Ingredient.create!(name: "Marinara sauce")
parmesan = Ingredient.create!(name: "Parmesan cheese")
oil = Ingredient.create!(name: "Olive oil")
onion = Ingredient.create!(name: "Onion")
rice = Ingredient.create!(name: "Rice")
wine = Ingredient.create!(name: "White wine")
broth = Ingredient.create!(name: "Broth")
pepper = Ingredient.create!(name: "Pepper")
peas = Ingredient.create!(name: "Peas")
spaghetti = Ingredient.create!(name: "Spaghetti")
pecorino = Ingredient.create!(name: "Pecorino cheese")
lasagna = Ingredient.create!(name: "Lasagna noodles")
beef = Ingredient.create!(name: "Ground beef")
tomato_sauce = Ingredient.create!(name: "Tomato sauce")
italian = Ingredient.create!(name: "Italian seasoning")
garlic = Ingredient.create!(name: "Garlic powder")
ricotta = Ingredient.create!(name: "Ricotta cheese")
yolk = Ingredient.create!(name: "Egg yolk")
sugar = Ingredient.create!(name: "Sugar")
mascarpone = Ingredient.create!(name: "Mascarpone")
coffee = Ingredient.create!(name: "Coffee granules")
ladyfingers = Ingredient.create!(name: "Ladyfingers")
cocoa = Ingredient.create!(name: "Cocoa powder")
# tongue_of_lamb = Ingredient.create!(name: "Tongue of lamb")
# celery = Ingredient.create!(name: "Celery")
# carrot = Ingredient.create!(name: "Carrot")
# clove = Ingredient.create!(name: "Clove")
# laurel = Ingredient.create!(name: "Laurel")
# thyme = Ingredient.create!(name: "Thyme")
# parsley = Ingredient.create!(name: "Parsley")


p 'Ingredients created'

p "Creating links between Dishes and Ingredients"
# ingredients_pizza = [pizza_dough, pizza_sauce, mozza, pepperoni, mushrooms, green_pepper]
IngredientDish.create!(dish_id: dish1.id, ingredient_id: pizza_dough.id, quantity: "1")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: pizza_sauce.id, quantity: "200 g")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: mozza.id, quantity: "250 g")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: pepperoni.id, quantity: "150 g")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: mushrooms.id, quantity: "230 g")
IngredientDish.create!(dish_id: dish1.id, ingredient_id: green_pepper.id, quantity: "1")

# ingredients_pasta = [pasta, salt, marinara_sauce, parmesan]
IngredientDish.create!(dish_id: dish2.id, ingredient_id: pasta.id, quantity: "180 g")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: marinara_sauce.id, quantity: "600 g")
IngredientDish.create!(dish_id: dish2.id, ingredient_id: parmesan.id, quantity: "100 g")

# ingredients_risotto = [oil, onion, rice, wine, broth, salt, pepper, peas, parmesan]
IngredientDish.create!(dish_id: dish3.id, ingredient_id: oil.id, quantity: "2 tbsp")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: onion.id, quantity: "1")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: rice.id, quantity: "400 g")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: wine.id, quantity: "5 cl")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: broth.id, quantity: "1.5 L")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: pepper.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: peas.id, quantity: "70 g")
IngredientDish.create!(dish_id: dish3.id, ingredient_id: parmesan.id, quantity: "60 g")

# ingredients_cacio = [spaghetti, salt, pecorino, pepper]
IngredientDish.create!(dish_id: dish4.id, ingredient_id: spaghetti.id, quantity: "400 g")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: pecorino.id, quantity: "160 g")
IngredientDish.create!(dish_id: dish4.id, ingredient_id: pepper.id, quantity: "2 tbsp")

# ingredients_lasagna = [salt, lasagna, beef, onion, tomato_sauce, italian, garlic, ricotta, mozza, parmesan]
IngredientDish.create!(dish_id: dish5.id, ingredient_id: salt.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: lasagna.id, quantity: "230 g")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: beef.id, quantity: "450 g")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: onion.id, quantity: "0.5")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: tomato_sauce.id, quantity: "1 can")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: italian.id, quantity: "1 tbsp")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: garlic.id, quantity: "1 pinch")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: ricotta.id, quantity: "425 g")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: mozza.id, quantity: "680 g")
IngredientDish.create!(dish_id: dish5.id, ingredient_id: parmesan.id, quantity: "115 g")

# ingredients_tiramisu = [yolk, sugar, mascarpone, coffee, ladyfingers, cocoa]
IngredientDish.create!(dish_id: dish6.id, ingredient_id: yolk.id, quantity: "4")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: sugar.id, quantity: "100 g")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: mascarpone.id, quantity: "500 g")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: coffee.id, quantity: "300 ml")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: ladyfingers.id, quantity: "300 g")
IngredientDish.create!(dish_id: dish6.id, ingredient_id: cocoa.id, quantity: "1 tbsp")

# ingredients_tongue_of_lamb = [tongue_of_lamb, celery, carrot, onion, clove, laurel, thyme, salt, pepper, parsley]
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: tongue_of_lamb.id, quantity: "2")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: celery.id, quantity: "1 stalk")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: carrot.id, quantity: "2")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: onion.id, quantity: "1")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: clove.id, quantity: "1")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: laurel.id, quantity: "1")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: thyme.id, quantity: "1 sprig")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: salt.id, quantity: "1 pinch")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: pepper.id, quantity: "2 tbsp")
# IngredientDish.create!(dish_id: dish7.id, ingredient_id: parsley.id, quantity: "1 tbsp")

p "Links between Dishes and Ingredients created"
