-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2017 at 11:41 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodpop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `password`) VALUES
('Admin', 'admin@ves.ac.in', 'adminadmin');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `recipename` varchar(50) NOT NULL,
  `category` text NOT NULL,
  `ingredients` text NOT NULL,
  `recipe` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'ua'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`email`, `name`, `recipename`, `category`, `ingredients`, `recipe`, `status`) VALUES
('s.d@ves.ac.in', 'Sonia', 'Butter chicken', 'Main Course', 'Chicken cut into 1Â½ inch pieces 400 grams,\r\nButter 2 tablespoons,\r\nKashmiri red chilli powder 1 teaspoon,\r\nLemon juice 1 tablespoon,\r\nSalt to taste,\r\nMarinade,\r\nThick yogurt 1/2 cup,\r\nGinger paste 2 teaspoons,\r\nGarlic paste 2 teaspoons,\r\nRed chilli powder 1/2 teaspoon,\r\nGaram masala powder 1/2 teaspoon,\r\nSalt to taste,\r\nMustard oil 2 teaspoons,\r\nMakhani gravy,\r\nTomato roughly chopped 12 medium,\r\nNutralite 4 tablespoons,\r\nGreen cardamoms 4,\r\nMace 1 gram,\r\nGinger paste 1 teaspoon,\r\nGarlic paste 1 teaspoon,\r\nSalt to taste,\r\nRed chilli powder (deghi mirch) 1 teaspoon,\r\nDried fenugreek leaves (kasoori methi) roasted and crushed 1/4 teaspoon,\r\nHoney 1 tablespoon,\r\nFresh cream 3 1/2 tablespoons', 'Step 1\r\n\r\nPrick the chicken pieces all over with a fork. Place them in a large bowl and add the salt, red chilli powder, Nutralite and lemon juice and mix well.\r\n\r\nStep 2\r\n\r\nCover the bowl with a cling film and set aside to marinate for thirty minutes in a refrigerator.\r\n\r\nStep 3\r\n\r\nFor the marinade, mix together yogurt, ginger paste, garlic paste, chilli powder, salt and garam masala powder. Add the mustard oil and mix.\r\n\r\nStep 4\r\n\r\nAdd the chicken and mix well so that all the chicken pieces are well coated with the marinade. Cover the bowl with cling film and place it in the refrigerator to marinate for about two hours. For the gravy puree the tomatoes till smooth.\r\n\r\nStep 5\r\n\r\nHeat two tablespoons of Nutralite in a deep non stick pan on low heat. Add the green cardamoms and mace and cook till fragrant. Add the ginger paste and garlic paste and sautÃ© for a minute.\r\n\r\nStep 6\r\n\r\nAdd the pureed tomatoes, salt, red chilli powder and cook, stirring occasionally, for fifteen to twenty minutes. Preheat the gas tandoor.\r\n\r\nStep 7\r\n\r\nOpen the lid and lightly grease the platform. Keep the chicken pieces, cover with the lid and cook till the chicken pieces are done.\r\n\r\nStep 8\r\n\r\nAdd the roasted and crushed kasuri methi to the gravy and mix. Add the remaining Nutralite and cook for a few minutes. Add the honey and cream and mix well.\r\n\r\nStep 9\r\n\r\nCook for two minutes more. Add the chicken pieces and cook for three minutes. Serve hot with naan.\r\n\r\n', 'approved'),
('j.c@ves.ac.in', 'Jeetiksha', 'Cheese Chilly Toast', 'Snacks', '1 1/2 cups grated processed cheese,\r\n1 1/2 tbsp finely chopped green chillies,\r\n1/4 cup finely chopped capsicum,\r\nsalt to taste,\r\n8 slices bread,\r\n4 tsp butter for brushing,\r\nbutter for greasing and cooking,\r\n8 tsp green chutney', '1.Combine the cheese, capsicum, green chillies and salt in a deep bowl and mix well. \r\n2.Divide the mixture into 4 equal portions. Keep aside.\r\n3.Spread Â½ tsp of butter on each bread slice evenly and keep aside.\r\n4.Place 2 bread slices on a clean, dry surface with the buttered side facing upwards.\r\n5.Spread 1 tsp of green chutney on each of the bread slices.\r\n6.Spread a portion of the mixture evenly on 1 bread slice and cover with another bread slice with 1 buttered-chutney side facing downwards and press it tightly.\r\n7.Spread a little butter evenly on the bread slices.\r\n8.Grease a sandwich toaster on both the sides using butter and pre-heat for a minute.\r\n9.Place the sandwich in the sandwich toaster and cook on a medium flame, till it turns brown and crisp from both the sides.\r\n10.Place the sandwich in the sandwich toaster and cook on a medium flame, till it turns brown and crisp from both the sides.\r\n11.Cut into 4 equal pieces, place it on a plate and apply a little butter evenly over it.\r\n12.Repeat steps 4 to 10 to make 3 more toasts.\r\n13.Serve immediately with tomato ketchup and green chutney.\r\n', 'approved'),
('c.a@ves.ac.in', 'Chayan', 'Cheese Paratha', 'Snacks', '2-1/2 cups wheat flour (gehun ka atta),\r\n1-1/2 cups grated cheese,\r\n2 green chillies thinly chopped,\r\nA pinch of black pepper powder,\r\nA pinch of ajwain (carom seeds),\r\nSalt to taste,\r\nWater to knead a dough,\r\nCooking oil\r\n', '1. Combine the flour and salt in a bowl and knead a soft dough by slowly adding the water.\r\n2. Apply little bit of oil on the dough and set aside for 5-6 minutes.\r\n3. In the meantime, mix the cheese, green chillies, pepper powder, ajwain and little bit of salt.\r\n4. Take a small ball of dough and roll out into 2â€³ diameter, place a spoonful mixture in the center of the rolled out roti and seal the edges.\r\n5. Again roll out gently to make a proper size paratha and make sure that the cheese should not come out.\r\n6. Heat a tawa and drizzle some oil.\r\n7. Place a rolled out paratha on hot tawa.\r\n8. Spread some oil all over and cook on medium high flame.\r\n9. Cook from both the sides until paratha turns to crisp and little browned.\r\n10. Serve hot with curd, roasted papad and pickle.\r\n', 'approved'),
('c.a@ves.ac.in', 'Chayan', 'Choco Cake', 'Desserts', 'butter and flour for coating and dusting the cake pan\r\n3 cups all-purpose flour\r\n3 cups granulated sugar\r\n1Â½ cups unsweetened cocoa powder\r\n1 tablespoon baking soda\r\n1Â½ teaspoons baking powder\r\n1Â½ teaspoons salt\r\n4 large eggs\r\n1Â½ cups buttermilk\r\n1Â½ cups warm water\r\nÂ½ cup vegetable oil\r\n2 teaspoons vanilla extract', '1.Preheat oven to 350 degrees.\r\n2.Butter three 9-inch cake rounds. Dust with flour and tap out the excess. \r\n3.Mix together flour, sugar, cocoa, baking soda, baking powder, and salt in a stand mixer using a low speed until combined.\r\n4.Add eggs, buttermilk, warm water, oil, and vanilla. Beat on a medium speed until smooth. This should take just a couple of minutes.\r\n5.Divide batter among the three pans. I found that it took just over 3 cups of the batter to divide it evenly.\r\n6.Bake for 30-35 minutes until the cake meets the toothpick test (stick a toothpick in and it comes out clean).\r\n7.Cool on wire racks for 15 minutes and then turn out the cakes onto the racks and allow to cool completely.\r\n8.Frost with your favorite frosting and enjoy!\r\n', 'approved'),
('c.a@ves.ac.in', 'Chayan', 'Chocolate Cake', 'Desserts', 'butter and flour for coating and dusting the cake pan,\r\n3 cups all-purpose flour,\r\n3 cups granulated sugar,\r\n1Â½ cups unsweetened cocoa powder,\r\n1 tablespoon baking soda,\r\n1Â½ teaspoons baking powder,\r\n1Â½ teaspoons salt,\r\n4 large eggs,\r\n1Â½ cups buttermilk,\r\n1Â½ cups warm water,\r\nÂ½ cup vegetable oil,\r\n2 teaspoons vanilla extract', '1.Preheat oven to 350 degrees.\r\n2.Butter three 9-inch cake rounds. Dust with flour and tap out the excess. \r\n3.Mix together flour, sugar, cocoa, baking soda, baking powder, and salt in a stand mixer using a low speed until combined.\r\n4.Add eggs, buttermilk, warm water, oil, and vanilla. Beat on a medium speed until smooth. This should take just a couple of minutes.\r\n5.Divide batter among the three pans. I found that it took just over 3 cups of the batter to divide it evenly.\r\n6.Bake for 30-35 minutes until the cake meets the toothpick test (stick a toothpick in and it comes out clean).\r\n7.Cool on wire racks for 15 minutes and then turn out the cakes onto the racks and allow to cool completely.\r\n8.Frost with your favorite frosting and enjoy!\r\n', 'ua'),
('a.d@ves.ac.in', 'Ankita', 'egg curry', 'Main Course', 'egg, oil, spices, salt', 'Edited recipe', 'spam'),
('n.h@ves.ac.in', 'Neeraj', 'Gajar ka halwa', 'Desserts', '1/2 tin (200g)-NESTLÃ‰ MILKMAID Sweetened Condensed Milk,\r\n2 tbsp-MILKMAID Pure Ghee,\r\n1 litre-Milk,\r\n1 kg-Carrots Grated,\r\n25g-Kaju (Cashewnuts) Chopped,\r\n25 g-Kishmish (Raisins),\r\n', '1.Mix carrots and milk in a pan, bring to a boil. Cook on low flame, stirring occasionally, till milk dries up.\r\n2.Add NESTLÃ‰ MILKMAID Sweetened Condensed Milk and continue cooking on low flame, stirring occasionally, till it dries up.\r\n3.Add the ghee and cook for another 10 minutes. Garnish with nuts and raisins and serve hot.\r\n', 'approved'),
('a.d@ves.ac.in', 'Ankita', 'green tea', 'Snacks', 'green tea , water', 'boil', 'ua'),
('j.c@ves.ac.in', 'Jeetiksha', 'Healthy Pizza', 'Snacks', 'Whole wheat flour (atta) FOR BASE 1 1/2 cups,\r\nTomatoes cut into thick strips 2 medium,\r\nSoya flour 2 tablespoons,\r\nActive dry yeast 1 1/2 teaspoons,\r\nSugar 1 teaspoon,\r\nSalt 1 teaspoon,\r\nOlive oil 1 tablespoon,\r\nWheat bran 2 tablespoons,\r\nFOR SAUCE\r\nOlive oil 2 tablespoons,\r\nOnion chopped 1 small,\r\nGarlic chopped 4-5 cloves,\r\nTomatoes finely chopped 4 medium,\r\nFresh basil leaves torn a few,\r\nSalt to taste,\r\nWhole dry red chillies crushed 1 teaspoon,\r\nFOR TOPPING\r\nOnion sliced 1 medium,\r\nButton mushrooms sliced 10-12,\r\nGreen capsicum cut into thick strips 1 medium,\r\nLow fat Mozzarella cheese grated 1/2 cup,\r\nOlive oil 1 teaspoon,\r\nDry oregano 1/4 teaspoon,\r\n', 'Step 1\r\nMix yeast with sugar and one teaspoon warm water and set aside until frothy. Add frothy yeast to a mixture of whole wheat flour and soy flour. Add salt, olive oil and wheat bran.\r\nStep 2\r\nAdd water and knead into a soft dough. Leave the dough covered with a damp cloth in a warm place for about forty five minutes or until dough is about double in volume.\r\nStep 3\r\nDivide pizza dough into four, roll out each portion into medium thick eight-inch discs. Prick with a fork all over. Preheat oven to 220Â°C.\r\nStep 4\r\nFor sauce, heat olive oil in a pan, add chopped onion and garlic, stir-fry briefly and add chopped tomatoes.\r\nStep 5\r\nAdd one cup of water and bring it to a boil. Stir in basil leaves, salt and crushed dried red chillies. Simmer for about five minutes on medium heat or till it reaches a thick dropping consistency.\r\nStep 6\r\nSpread prepared pizza sauce on rolled pizza base, top it with sliced onion, sliced mushrooms, tomato and green capsicum strips.\r\nStep 7\r\nFinally sprinkle grated low-fat mozzarella cheese to evenly cover the pizza top. Brush with olive oil.\r\nStep 8\r\nPlace it on greased ovenproof tray and bake in the preheated oven at 220Â°C for about twenty minutes or until the pizza base is crisp and the cheese melts and starts bubbling.\r\nStep 9\r\nRemove from oven, sprinkle with dried oregano, cut into six or eight pieces and serve hot.\r\n\r\n', 'ua'),
('n.h@ves.ac.in', 'Neeraj', 'Jalebi', 'Desserts', 'Refined flour (maida) 1 cup,\r\nYogurt 1/2 cup,\r\nSugar 3 cups,\r\nMilk 1 tablespoon,\r\nSaffron (kesar) a few,\r\nGhee for deep-frying', 'Step 1\r\n\r\nIn a large bowl, whisk refined flour, yogurt and sufficient water to a smooth and pouring consistency batter. Cover and keep in a warm place to ferment for 24 hours.\r\n\r\nStep 2\r\n\r\nBeat the batter with your hands again for 15 minutes. Cook sugar with 2 cups water in a deep non-stick pan on high heat, stirring continuously, till the sugar dissolves.\r\n\r\nStep 3\r\n\r\nAdd milk and when the scum rises to the top, collect it with a ladle and discard.\r\n\r\nStep 4\r\n\r\nAdd saffron and cook, stirring, till the syrup reaches one string consistency. Keep the syrup warm. Heat sufficient ghee in a kadai on medium heat.\r\n\r\nStep 5\r\n\r\nPour some batter onto a jalebi cloth, gather the edges and make a tight potli.\r\n\r\nStep 6\r\n\r\nSqueeze round spirals into the hot ghee and deep fry, turning them over gently a few times, till they are evenly golden and crisp.\r\n\r\nStep 7\r\n\r\nDrain and soak in sugar syrup for 2-3 minutes. Take them out of the syrup and serve hot.\r\n\r\n', 'ua'),
('a.d@ves.ac.in', 'Ankita', 'Noodles', 'Snacks', 'Noodles, spices', 'Boil it.', 'ua'),
('a.g@ves.ac.in', 'Aditya', 'paneer paratha', 'Snacks', '2 cups crumbled paneer / cottage cheese,\r\nÂ½ tsp kashmiri chilli powder,\r\nÂ¼ tsp garam masala,\r\nsalt to taste,\r\n1 inch ginger( grated),\r\nfistful coriander leaves(finely chopped)\r\nÂ½ tsp aamchur powder / dry mango powder,\r\nfor chapathi / paratha dough,\r\n1 cup whole wheat flour / atta,\r\nsalt to taste,\r\n1 tsp oil or ghee,\r\nwater as required for kneading,\r\nÂ¼ cup wheat flour for dusting,\r\nfor roasting parata:\r\nghee or oil as required,\r\n', 'paneer stuffing recipe:\r\n1.firstly, in a small mixing bowl take crumbled paneer.\r\n2.furthermore, add chilli powder, garam masala, aamchur powder and salt.\r\n3.also add ginger and coriander leaves.\r\n4.give a good mix and keep aside.\r\nchapathi / paratha dough recipe:\r\n1.firstly, in a large mixing bowl, take wheat flour add salt.\r\n2.add water and knead the dough for 5 minutes.\r\n3.furthermore, grease the dough with a tsp of oil and rest for atleast 20 minutes.\r\nassembling and rolling paneer paratha recipe:\r\n1.firstly, pinch a medium sized ball dough, roll about 5 inches in diameter.\r\n2.place the prepared stuffing in the center.\r\n3.take the edge and start pleating bringing to center and press the pleats from center.\r\n4.furthermore, sprinkle some flour and roll to of a chapati size.\r\n5.Then on a hot tava place the rolled paratha and cook both sides. also add oil / ghee and press slightly.\r\n6.finally, serve hot paneer parathas with sauce, raita or pickle.\r\n', 'approved'),
('a.g@ves.ac.in', 'Aditya', 'veg burger', 'Snacks', 'Potato ,beans,chilies,ginger,garam masala ', '1.Steam potatoes and beans until half cooked. ...\r\n2.Add chilies, ginger, garam masala, salt, mint or coriander. ...\r\n3.Make a batter with chickpea flour or rice flour using enough water. ...\r\n4.Set them aside for a while. ...\r\n5.Shallow or pan fry the patties until golden. ...\r\n6.Transfer the oil to a bowl.', 'ua');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `password`) VALUES
('Ankita', 'a.d@ves.ac.in', 'ankita'),
('Amit', 'a.f@ves.ac.in', 'amit'),
('Aditya', 'a.g@ves.ac.in', 'aditya'),
('Chayan', 'c.a@ves.ac.in', 'chayan'),
('Jeetiksha', 'j.c@ves.ac.in', 'jeetiksha'),
('fjhnfg', 'jhfgvj@gh', 'asdasdasd'),
('Neeraj', 'n.h@ves.ac.in', 'neeraj'),
('Sonia', 's.d@ves.ac.in', 'sonia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
 ADD PRIMARY KEY (`recipename`), ADD KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`email`), ADD UNIQUE KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
