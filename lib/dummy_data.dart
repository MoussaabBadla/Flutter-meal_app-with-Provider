
import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Italian', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FIT%20-%20Italy.png?alt=media&token=3b768831-25ee-49e3-bed7-a9a6fa7c25dd',
     Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fspaghetti-1932466__340.jpg?alt=media&token=0252b1bc-61b7-4149-baaf-52e14ef2ab19',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FHNL_Icons_QuickEasy.png?alt=media&token=cc8fa6d1-5192-4b33-9c84-e013aac7ca0e',
    id: 'c2',
    title: 'Quick & Easy', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FCake.png?alt=media&token=3592de1f-cda8-4057-b756-f8eacb0d9714',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FBC.webp?alt=media&token=819424d5-f536-4922-a2e1-895d25cf177d',
    id: 'c3',
    title: 'Hamburgers', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fburger.png?alt=media&token=cb33b9b3-d303-4be6-965e-119c119a449a',
  ),
      Category(
        Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FPepperoni-Pizza_5-SQjpg.webp?alt=media&token=5cd7f766-9e97-4593-b689-856e099b6636',
    id: 'c11',
    title: 'Pizza', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FPizza.png?alt=media&token=7459bcca-e0e5-41ed-a42a-1f267346baa4',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2F5f83abb5651ba88d2be21710a050d3c3a1304874.png?alt=media&token=6f83183b-85a1-41ac-8285-2cc27e906314',
    id: 'c4',
    title: 'German', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fgerman.png?alt=media&token=52b82694-b518-4f60-8b9e-c64b1a9686a9',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fistockphoto-497814792-612x612.jpg?alt=media&token=14f0ef88-dc81-49b6-a71e-9acf38335212',
    id: 'c5',
    title: 'Light & Lovely', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FHeart.png?alt=media&token=c3c6ce0d-12db-4ea2-8d26-5b863e55e2a5',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2F9aec53a02be059b10f9c7f114625236a.jpg?alt=media&token=effb339a-28f9-42b1-bc2c-7414c2ff18c4',
    id: 'c6',
    title: 'Exotic', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FDrink.png?alt=media&token=fe4c8c1b-25de-4a50-8257-419ecd17912e',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2F1557773594845.jpeg?alt=media&token=0836e041-d4e5-4c98-bc4a-2af151d4cee2',
    id: 'c7',
    title: 'Breakfast', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FToast.png?alt=media&token=2d5313a6-4873-41fe-9440-b9cbd684f005',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fistockphoto-1051651510-612x612.jpg?alt=media&token=f3298855-5783-4a4e-a495-24f5a550d263',
    id: 'c8',
    title: 'Asian', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FZongzi(Chinese%20food).png?alt=media&token=8221fbd8-93c3-47c8-9a29-a6972c4f88eb',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2F5d8uH2QvBeMgCnXkXXgcSH.jpg?alt=media&token=7103cd47-47df-4c14-bd41-7660e8b1aa39',
    id: 'c9',
    title: 'French', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FFR.png?alt=media&token=86a867e6-52c2-4f4e-b1fd-f363a44c899e',
  ),
  Category(
    Image: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fsummer-01.jpg?alt=media&token=d737c5e9-57e5-4bcd-b61a-1a1b0d4f4bb1',
    id: 'c10',
    title: 'Summer', Icon: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FIcecream.png?alt=media&token=fa9acfd1-f465-472e-ab52-aed148ec8275',
  ),


];

const DUMMY_MEALS = const [

    Meal(
    id: 'm11',
    categories: [
      'c8',
      'c2',
    ],
    title: 'Japanese ramen',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fikhsan-baihaqi-RwAXb8Hv_sU-unsplash.jpg?alt=media&token=a1b0ca1c-e63c-47d5-a420-a7ac34f82973',
    duration: 25,
    ingredients: [
      '3 ramen packs',
      '1 tbsp olive oil',
      '2 cloves minced garlic',
      '2 eggs',
      '?? cup grated parmesan',
      'Salt',
      'Freshly ground black pepper',
      '1 tbsp parsley'
    ],
    noFish: true,
    noSoy: true,
    noWheat: false,
    noegg: false,
    nomilk: true,
    steps: [
      'Boil noodles according to package instructions',
      'Save ?? cup of cooking water to loosen sauce later, if needed',
      'Drain noodles and toss with olive oil so they don\'t stick',
      'BHeat a skillet over medium heat. Add the noodles to the skillet and toss until the noodles heat through',
      'Turn off the heat',
      'Beat eggs with fork and mix in Parmesan cheese',
      'Pour egg-cheese mixture to skillet and toss with noodles',
      'Divide between bowls',
      'Garnish with parsley and freshly ground pepper'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false , imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fikhsan-baihaqi-RwAXb8Hv_sU-unsplash-removebg-preview.png?alt=media&token=fd44d2c2-d7e6-4ae5-b83b-3ff80e7fd6d9',
  ),
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fpasta-spaghetti-bolognese-black-plate-dark-slate-background-sauce-classic-italian-cuisine-dish-popular-food-186372393.jpg?alt=media&token=0f005bb7-247e-4ff8-af3f-80b0e283f417'  ,
  duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    noFish: true,
    noSoy: true,
    noegg: true,
    noWheat: true,
    nomilk: true,
    

    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fpasta-spaghetti-bolognese-black-plate-dark-slate-background-sauce-classic-italian-cuisine-dish-popular-food-186372393-removebg-preview%20(1).png?alt=media&token=161c297f-ba99-42e1-8c95-97366ddf04d6',
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FEF35-009.jpg?alt=media&token=7b160a21-ed54-4f9b-a6e7-f532988183a8',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    noFish: true,
    noSoy: true,
    noegg: true,
    noWheat: true,
    nomilk: true,
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200??C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FEF35-009-removebg-preview.png?alt=media&token=ce535dc3-d51e-4ea2-a027-ec284974eb1e',
  ),
  
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fkc-korean-bulgogi-burger-articleLarge.jpg?alt=media&token=ada21ddd-fd42-4c86-aa9a-fd36be8d213e',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    noFish: true,
    noSoy: true,
    noegg: true,
    noWheat: false,
    nomilk: true,
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fkc-korean-bulgogi-burger-articleLarge-removebg-preview.png?alt=media&token=716130ec-4173-4884-8560-565728b1ca50',
  ),
  Meal(
    id: 'm12',
    categories: [
      'c11',
      '',
    ],
    title: 'Square pizza',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Hard,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fpizza-arabatzis-0679-100082.png?alt=media&token=c607e09d-8daf-4400-9ba4-2be40573a861',
    duration: 40,
    ingredients: [
      '500 g Plain flour/bread flour',
      '14 g Instant yeast',
      '1 tsp Salt',
      '1 tsp Sugar',
      '??? cup Oil',
      '5 ?? cups water',
      'Chicken Tikka small pieces 1 bowl',
      'hilli garlic sauce as required',
      'Italian seasoning as required',
      'Red chilli flakes as required',
      '1 Onion',
      'Mozzarella cheese as required',
      'Cheddar cheese as required'
    ],
    noFish: true,
    noegg: true,
    noSoy: true,
    noWheat: false,
    nomilk: true,
    steps: [
      'In a bowl add flour, salt, yeast and oil',
      'Add water a little at a time and mix it',
      'Transfer this to a flat surface and knead for about 7-10 minutes',
      'Grease a bowl with oil, keep the dough inside, cover with cling film and keep it in hot place for 1 hour',
      'After 1 hour you will see it is double in size',
      'Cut it in 2 equal parts',
      'Place it on a tray and loosely cover with plastic wrap',
      'Keep it for 1 more hour',
      'Take chicken tikka pieces and chop them in small chunks',
      'Slice 1 onion',
      'Saute for 1 minute with 1 tbsp oil, salt and Italian Seasoning',
      'Layer chilli garlic sauce, sprinkle Italian seasoning, and red chilli flakes, layer chicken',
      'Top with both cheese and onion slicesTop with both cheese and onion slices',
      'Bake it on 180C preheated oven for 20-25 minutes'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fpizza-arabatzis-0679-100082.png?alt=media&token=c607e09d-8daf-4400-9ba4-2be40573a861',
  ),
   Meal(
    id: 'm13',
    categories: [
      'c11',
      
    ],
    title: 'American pizza',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Famerican-1239091_1920.jpg?alt=media&token=6b2369a6-9f88-4ae7-8f25-c511623f8ade',
    duration:40 ,
    ingredients: [
      '4 ?? - 5 cups bread flour',
      '2 ?? teaspoons 1 package Red Star Quick Rise yeast',
      '3 teaspoons salt',
      '2 cup water',
      '?? cup vegetable oil',
      '2 garlic cloves minced or pressed',
      '1 tablespoons olive or vegetable oil',
      '1 28 ounce can crushed tomatoes in rich puree',
      '1 teaspoon brown sugar',
      '1 teaspoon Italian seasoning',
      '?? teaspoon dried basil',
      '?? teaspoon salt',
      '?? teaspoon crushed red pepper flakes'
    ],
    noFish: true,
    noSoy: true,
    noWheat: false,
    noegg: true,
    nomilk: true,
    steps: [
      'Pizza Sauce',
      'In a small saucepan, saut?? garlic in oil until tender. Stir in the remaining sauce ingredients. Bring to a boil',
      'Reduce heat; simmer, uncovered, for 30 minutes or until sauce reaches desired thickness. Sauce may be refrigerated for up to 1 week',
      'In medium mixer bowl, combine 2 cups flour, yeast, and salt; mix well. Combine water and oil; heat to 120?? to 130??F; add to flour mixture. Blend at low speed until moistened; beat 3 minutes at medium speed',
      'By hand, gradually stir in enough remaining flour to make a soft dough. (I used my KitchenAid dough hook attachment.) Knead on floured surface 3 to 5 minutes. Shape the dough into a ball, cover, and allow it to rest for 15 minutes',
      'Divide dough into 4 parts (2 parts if you want larger pizzas). With well-floured or greased fingers, press each half into greased 12- or 14-inch pizza pan',
      'Sprinkle ?? cup of your favorite shredded cheese over dough to prevent a soggy crust. Spread prepared pizza sauce on each pizza (approximately ?? cup of sauce per pizza). Add your favorite toppings---mushrooms, onions, olives, green peppers, pepperoni, cooked Italian sausage, anchovies, etc. Cover with shredded cheese of your choice- Mozzarella, Parmesan and Asiago.',
      'Bake at 400??F for 25 to 30 minutes until edge is crisp and light golden brown and cheeses are melted. Serve immediately'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Famerican-1239091_1920-removebg-preview.png?alt=media&token=ee6aa53d-8366-4909-a06e-5cc98d573c10',
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FCrispy-schnitzel-0-l.jpg?alt=media&token=07f0a4b3-3b64-4ed1-b9f9-3f3354a9a0af',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    noFish: true,
    noSoy: false,
    noegg: false,
    noWheat: true,
    nomilk: true,
    steps: [
      'Tenderize the veal to about 2???4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ???fluffy???.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FCrispy-schnitzel-0-l-removebg-preview.png?alt=media&token=11e4e49f-e799-42d9-9b53-2c5e94e0d294',
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FSmoked-Salmon-with-baby-greens-salad-recipe-I-Heart-Umami.jpg?alt=media&token=ba538a5a-fc26-4d9c-bf2a-e3a4a5f22936',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    noFish: false,
    noSoy: true,
    noegg: true,
    noWheat: true,
    nomilk: true,
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FSmoked-Salmon-with-baby-greens-salad-recipe-I-Heart-Umami-removebg-preview.png?alt=media&token=a5fcebbf-21e9-4ca3-9152-bd2fb6b31df9',
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FMango-Mousse-Cake-with-Jello-Insert5.jpg?alt=media&token=58194fa0-37d7-43d1-9a7a-56f79604dac4',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    noFish: true,
    noSoy: true,
    noegg: true,
    noWheat: true,
    nomilk: true,
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2FMango-Mousse-Cake-with-Jello-Insert5-removebg-preview.png?alt=media&token=f6dc5427-3ebe-4722-a370-cfa8c80f47d2',
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fpng-clipart-banana-pancakes-crepe-crumpet-breakfast-breakfast-food-baking-removebg-preview%20(1).png?alt=media&token=fa0329a3-37ab-45f4-a6ce-c5efc99434d1',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    noFish: true,
    noSoy: true,
    noegg: false,
    noWheat: false,
    nomilk: false,
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fpng-clipart-banana-pancakes-crepe-crumpet-breakfast-breakfast-food-baking-removebg-preview.png?alt=media&token=254b8647-d7df-4c11-b4e6-f45028241ea0',
  ),
  Meal(
    id: 'm15',
    categories: [
      'c11',
      'c1',
    ],
    title: 'Cheese pizza',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fthe-pizza-1949183_1280.jpg?alt=media&token=9f7e6a3f-4399-4d83-a893-a71132d07a76',
    duration:40 ,
    ingredients: [
      'Basic Pizza Dough',
      '2 teaspoons olive oil',
      '1 cup fat-free bottled pizza sauce',
      '2 cups (8 ounces) shredded part-skim mozzarella cheese',
      '?? cup (2 ounces) grated fresh Parmesan cheese'
    ],
    noFish: true,
    noSoy: true,
    noegg: true,
    noWheat: false,
    nomilk: true,
    steps: [
      'Position one oven rack in the middle setting. Position another rack in the lowest setting, and place a rimless baking sheet on the bottom rack. Preheat oven to 500??',
      'Remove plastic wrap from Basic Pizza Dough; discard plastic. Brush olive oil over dough. Remove preheated baking sheet from oven, and close oven door. Slide dough onto preheated baking sheet, using a spatula as a guide. Bake on lowest oven rack at 500?? for 8 minutes. Remove from oven',
      'Spread sauce in an even layer over crust, leaving a 1/4-inch border. Top with mozzarella and Parmesan cheeses. Bake on middle rack an additional 10 minutes or until crust is golden brown and cheese melts. Cut into 12 wedges'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fthe-pizza-1949183_1280-removebg-preview.png?alt=media&token=cfe7cf3d-9d1e-495a-86d2-57a5ba11bcf4',
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2F360_F_369937634_8uiPo9yjfgodCVJk0B80qgYNGTavYNiX.jpg?alt=media&token=0a9cc44f-a872-420b-bb8b-8465b2106a69',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    noFish: true,
    noSoy: true,
    noegg: true,
    noWheat: true,
    nomilk: false,
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and saut?? everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2F360_F_369937634_8uiPo9yjfgodCVJk0B80qgYNGTavYNiX-removebg-preview.png?alt=media&token=d447e76c-40ac-4b06-9c0e-7665fa8c5afa',
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fflourless-almond-choc-cake-orange-2000.jpg?alt=media&token=f3500192-ea65-49cf-9429-d41fb45b0ed8',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    noFish: true,
    noSoy: true,
    noegg: false,
    noWheat: false,
    nomilk: false,
    steps: [
      'Preheat oven to 190??C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Fflourless-almond-choc-cake-orange-2000-removebg-preview.png?alt=media&token=6fb67f74-c1b1-47ec-af0b-62b27e1b1f89',
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2F75375.jpg?alt=media&token=4e82c3ac-6895-4e88-bedc-b35d5d47e680',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    noFish: true,
    noSoy: true,
    noegg: true,
    noWheat: true,
    nomilk: true,
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2F75375-removebg-preview.png?alt=media&token=e2c6537e-677e-4cf3-af44-f9268ac0cfd8',
  ),
  
 Meal(
    id: 'm14',
    categories: [
      
      'c11',
    ],
    title: 'Meat Pizza',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Ffood-3203445_1920.jpg?alt=media&token=02837888-9357-497f-aa44-cdeae6d039de',
    duration: 50,
    ingredients: [
      '2 teaspoons canola oil',
      '1 onion, chopped',
      '2 cloves garlic, minced',
      '3 large tomatoes (about 1 1/2 lb. total), cored and chopped',
      '1 tablespoon tomato paste',
      '1 pound ground turkey',
      '2 teaspoons chopped fresh thyme',
      'Salt and pepper',
      '4 6-inch pitas',
      '1 cup shredded part-skim mozzarella',
      '?? cup grated Parmesan, optional'
    ],
    noFish: true,
    noSoy: true,
    noWheat: false,
    noegg: true,
    nomilk: true,
    steps: [
      'Preheat oven to 400??F. Line 2 large baking sheets with foil. Mist foil with cooking spray',
      'Warm oil in a large skillet over medium-high heat. Add onion and saut?? until tender, 3 to 5 minutes. Add garlic and saut?? 1 minute longer. Stir in tomatoes and tomato paste; cook, stirring often, until thick and pulpy, about 10 minutes. Add turkey and cook, stirring often and breaking up any large clumps with a spoon, until most of liquid has evaporated, 10 to 15 minutes. Stir in thyme and season with salt and pepper',
      'Using a serrated knife, cut each pita in half horizontally. Place rounds, cut side up, on baking sheets. Divide turkey mixture among rounds (about 1/2 cup each) and sprinkle with mozzarella and Parmesan, if desired. Bake until cheese has melted and pizzas are lightly browned, 12 to 15 minutes'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false, imageUrl2: 'https://firebasestorage.googleapis.com/v0/b/test-c042f.appspot.com/o/imagesmeals%2Ffood-3203445_1920-removebg-preview.png?alt=media&token=fecb510a-c59f-46aa-88ce-38f8e76f087a',
  ),



];
