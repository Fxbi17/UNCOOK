# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p "Destroying Users and Dishes"
User.destroy_all
Dish.destroy_all
p "Users and Dishes destroyed"
user1 = User.create!(email: "admin@test.com", password: "123456")


dish1 = Dish.create!(
  name: "Pizza",
  description: "Pizza is a savory dish of Italian
    origin, consisting of a usually round, flattened base of leavened wheat-based
    dough topped with tomatoes, cheese, and often various other ingredients (such
    as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then
    baked at a high temperature, traditionally in a wood-fired oven. A small pizza
    is sometimes called a pizzetta. A person who makes pizza is known as a pizzaiolo.",
  recipie: "1. Preheat oven to 500 degrees F (260 degrees C).,
    2. Roll out dough into a 12-inch circle on a lightly floured surface.,
    3. Spread pizza sauce over dough, leaving a 1/2-inch border.,
    4. Sprinkle mozzarella cheese over sauce, leaving a 1/2-inch border.,
    5. Top with pepperoni, mushrooms, and green pepper.,
    6. Bake in preheated oven for 10 to 12 minutes, or until crust is golden brown.
    7. Cut into wedges and serve.",
  numpers: 4
)

dish2 = Dish.create!(
  name: "Pasta",
  description: "Pasta is a staple food of traditional
    Italian cuisine, with the first reference dating to 1154 in Sicily. It is also commonly
    used to refer to the variety of pasta dishes. Italian pasta is made from an unleavened
    dough of a durum wheat flour mixed with water or eggs, and formed into sheets or various
    shapes, then cooked by boiling or baking.",
  recipie: "1. Bring a large pot of lightly salted water to a boil.,
    2. Cook pasta in the boiling water, stirring occasionally until cooked through but
    still firm to the bite, about 12 minutes. Drain.,
    3. Place pasta in a large bowl. Add marinara sauce, and toss to coat.,
    4. Sprinkle with Parmesan cheese, and serve.",
  numpers: 3
)

dish3 = Dish.create!(
  name: "Risotto",
  description: "Risotto is a northern Italian rice
    dish cooked with broth to a creamy consistency. The broth can be derived from meat,
    fish, or vegetables. Risotto is usually made with Carnaroli or Vialone Nano rice,
    but Arborio is commonly used because of its high starch content. The rice is first
    lightly toasted in fat, then the liquid is gradually added and absorbed into the rice.",
  recipie: "1. Heat olive oil in a large saucepan over medium heat.,
    2. Add onion and cook until tender, about 5 minutes. Stir in rice and cook until
    lightly toasted, about 3 minutes. Stir in wine and cook until absorbed, about 2
    minutes. Stir in broth, 1/2 cup at a time, and cook until absorbed before adding
    more. Season with salt and pepper. Cook until rice is tender and creamy, about 20
    minutes. Stir in peas and Parmesan cheese. Serve immediately.",
  numpers: 2
)

dish4 = Dish.create!(
  name: "Spaghetti",
  description: "Spaghetti is a long, thin, solid,
    cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta,
    spaghetti is made of milled wheat and water and sometimes enriched with vitamins
    and minerals. Spaghetti is either a specialty of, or is commonly used in, the cuisines
    of many cultures. The word spaghetti is the plural of the Italian word spaghetto,
    a diminutive of spago, meaning thin string.",
  recipie: "1. Bring a large pot of lightly salted water to a boil.,
    2. Cook pasta in the boiling water, stirring occasionally until cooked through but
    still firm to the bite, about 12 minutes. Drain.,
    3. Place pasta in a large bowl. Add marinara sauce, and toss to coat.,
    4. Sprinkle with Parmesan cheese, and serve.",
  numpers: 5
)

dish5 = Dish.create!(
  name: "Lasagna",
  description: "Lasagna is an oven-baked dish
    consisting of stacked layers of thin flat pasta alternating with fillings such as
    meat ragù, vegetables, and cheese, and seasonings and condiments such as tomato
    sauce, garlic, herbs, and spices. The dish is popular in many countries, and
    can be made with a wide variety of ingredients. Lasagna is a traditional dish
    of Italy, and is also popular in many countries around the world.",
  recipie: "1. Preheat oven to 350 degrees F (175 degrees C).,
    2. Bring a large pot of lightly salted water to a boil. Cook lasagna noodles in
    boiling water for 8 to 10 minutes. Drain.,
    3. In a large skillet, brown the ground beef and onion over medium heat. Drain
    grease. Stir in the tomato sauce, water, Italian seasoning, salt, and garlic
    powder. Simmer for 10 minutes, stirring occasionally.,
    4. Spread 1 cup of meat sauce in the bottom of a 9x13 inch baking dish. Top with
    3 uncooked lasagna noodles, broken to fit. Spread with 1 cup ricotta cheese mixture,
    1 cup mozzarella cheese, and 1/2 cup Parmesan cheese. Repeat layers twice. Top with
    remaining 3 noodles, meat sauce, mozzarella cheese, and Parmesan cheese.,
    5. Cover with aluminum foil: to prevent sticking, either spray foil with cooking
    spray, or make sure the foil does not touch the cheese.,
    6. Bake in preheated oven for 25 minutes. Remove foil, and bake an additional 25
    minutes. Let stand 15 minutes before serving.",
  numpers: 4
)

dish6 = Dish.create!(
  name: "Tiramisu",
  description: "Tiramisu is an Italian dessert.
    It is made of ladyfingers dipped in coffee, layered with a whipped mixture of eggs,
    sugar, and mascarpone cheese, flavoured with cocoa. It is typically garnished with
    cocoa powder. The name is a diminutive of the Italian word for pick-me-up, which
    in this case refers to its caffeine content. Tiramisu is a popular coffee-flavoured
    Italian dessert. It is made of ladyfingers dipped in coffee, layered with a whipped
    mixture of eggs, sugar, and mascarpone cheese, flavoured with cocoa. It is typically
    garnished with cocoa powder. The name is a diminutive of the Italian word for pick-me-up,
    which in this case refers to its caffeine content.",
  recipie: "1. In a large bowl, beat the egg yolks and 1/2 cup sugar until thick and
    lemon-colored. Beat in mascarpone, 1/2 cup at a time, until smooth. Fold in
    whipped cream. Cover and refrigerate until serving.,
    2. In a small bowl, dissolve the coffee granules in the boiling water. Dip the
    ladyfingers in the coffee mixture for 1 second on each side. Arrange half of the
    ladyfingers in a 13-in. x 9-in. dish. Spread with half of the mascarpone mixture.
    Repeat layers. Cover and refrigerate for at least 4 hours. Just before serving,
    sprinkle with cocoa. Yield: 12 servings.",
  numpers: 6
)
p "Dishes created"
