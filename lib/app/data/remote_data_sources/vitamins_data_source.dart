import 'package:injectable/injectable.dart';

@injectable
class VitaminsTypeMockedDataSource {
  Future<List<Map<String, dynamic>>?> getVitaminsData() async {
    return [
      {
        'id': '1',
        'vitamin_name': 'vitamin a',
        'vitamin_type': 'vitamin_a',
        'overview':
            "Vitamin A is a fat-soluble vitamin that plays a crucial role in maintaining good health. It's essential for maintaining proper vision, a strong immune system, and healthy skin. Vitamin A can be obtained from a variety of sources, including animal and plant-based foods and supplements.",
        'benefits':
            """•	Vision: Vitamin A is crucial for maintaining good eyesight. It helps the eye's light-detecting cells function correctly.
•	Immune System: This vitamin supports the immune system by playing a role in the production and functioning of white blood cells.
•	Skin Health: Vitamin A is known for promoting healthy skin. It's often used in topical skincare products to treat various skin conditions.
•	Reproductive Health: Vitamin A is necessary for normal reproduction and fetal development.
""",
        'source':
            """•	Animal Sources: Beef liver, eggs, dairy products (milk, cheese, butter), and fish (particularly cod liver oil).
•	Plant Sources: Carrots, sweet potatoes, butternut squash, spinach, kale, and collard greens.
""",
        'usage':
            'The recommended daily intake of vitamin A varies by age, gender, and life stage. On average, adult men need about 900 micrograms (mcg) per day, while adult women need around 700 mcg per day. Pregnant and breastfeeding women may need slightly more.',
        'caution':
            '''    Vitamin A deficiency can lead to night blindness, dry skin, increased susceptibility to infections, and impaired growth in children.

    Excessive vitamin A intake from supplements can be harmful. It can cause nausea, dizziness, and, in severe cases, even lead to more severe health issues.''',
        'conclusion':
            "It's essential to consult with a healthcare provider before taking vitamin A supplements to ensure you meet your daily requirements without consuming excess.",
      },
      {
        'id': '2',
        'vitamin_name': 'vitamin b',
        'vitamin_type': 'vitamin_b',
        'overview':
            "Vitamin B is a group of essential water-soluble vitamins that play diverse and crucial roles in maintaining overall health. The B-vitamin complex consists of eight distinct vitamins, each with its own unique functions and benefits. These vitamins are essential for various bodily processes, including energy metabolism, nerve function, and maintaining healthy skin, hair, and eyes.",
        'benefits':
            '''   B-vitamins play a fundamental role in converting the food you eat into energy your body can use. They are essential for maintaining energy levels and combating fatigue.

    Several B-vitamins, particularly B6, B9, and B12, are critical for brain development, cognitive function, and nerve health. They help in the production of neurotransmitters and support the nervous system.

    Biotin (B7) is often associated with promoting healthy skin, hair, and nails. Riboflavin (B2) and Niacin (B3) contribute to maintaining good eye health.

    Folate (B9) plays a role in reducing the risk of heart disease by helping to lower levels of homocysteine, an amino acid associated with heart issues.

    Folate (B9) is crucial for healthy cell division and fetal development, making it especially important during pregnancy.''',
        'source':
            """You can obtain B-vitamins from various dietary sources, including:

1. Whole Grains: Such as brown rice, oats, and whole wheat bread.
2. Meats and Fish: Lean meats, poultry, fish, and seafood.
3. Dairy Products: Milk, yogurt, and cheese.
4. Legumes: Lentils, beans, and peas.
5. Leafy Greens: Spinach, kale, and broccoli.
6. Nuts and Seeds: Almonds, sunflower seeds, and peanuts. """,
        'usage':
            "The recommended daily intake of each B-vitamin can vary based on factors like age, gender, and individual needs. To ensure you're meeting your B-vitamin requirements, it's best to consult with a healthcare professional or registered dietitian.",
        'caution':
            "While B-vitamins are generally safe, excessive intake of some B-vitamins can lead to adverse effects. It's essential to follow recommended dosage guidelines and seek medical advice if you have concerns about B-vitamin supplementation",
        'conclusion':
            "Remember that this overview provides general information, and specific recommendations may vary based on your unique health situation. If you have questions or concerns about B-vitamin supplementation, it's best to consult with a healthcare provider for personalized advice. ",
      },
      {
        'id': '3',
        'vitamin_name': 'vitamin c',
        'vitamin_type': 'vitamin_c',
        'overview':
            "Vitamin C, also known as ascorbic acid, is a water-soluble vitamin that plays a crucial role in various bodily functions. It's an essential nutrient, which means your body can't produce it, and you must obtain it from your diet or supplements. Vitamin C is well-known for its powerful antioxidant properties and its role in supporting a healthy immune system.",
        'benefits':
            '''   Vitamin C is renowned for its ability to boost the immune system. It helps your body produce white blood cells, which are essential for fighting infections and illnesses.";

    As an antioxidant, Vitamin C helps protect cells from damage caused by free radicals. This, in turn, may reduce the risk of chronic diseases and slow down the aging process.

    Vitamin C is vital for the synthesis of collagen, a protein that supports skin, connective tissues, and wound healing. It contributes to maintaining healthy skin and may help reduce the appearance of wrinkles.

    Vitamin C enhances the absorption of non-heme iron (the type of iron found in plant-based foods), making it valuable for individuals with iron-deficiency anemia.

    Some research suggests that Vitamin C may lower the risk of heart disease by improving blood vessel function and reducing blood pressure.''',
        'source':
            """You can obtain Vitamin C from various food sources, including:

- Citrus fruits (oranges, lemons, grapefruits)
- Berries (strawberries, blueberries, raspberries)
- Kiwi
- Red and green bell peppers
- Broccoli
- Spinach
- Tomatoes""",
        'usage':
            "The recommended daily intake of Vitamin C varies by age, gender, and life stage. For most adults, a daily dose of 75-90 milligrams is sufficient. However, consult with a healthcare professional before starting any supplement regimen, as individual needs may differ.",
        'caution':
            "While Vitamin C is generally safe when taken within recommended doses, excessive intake can lead to digestive discomfort, including diarrhea. If you're unsure about the right dosage for your needs, consult with a healthcare provider",
        'conclusion':
            "Remember that this is a general overview, and individual requirements may vary. It's always a good practice to consult with a healthcare professional before adding any supplements to your routine, especially if you have specific health concerns or medical conditions.",
      },
      {
        'id': '4',
        'vitamin_name': 'vitamin d',
        'vitamin_type': 'vitamin_d',
        'overview':
            "Vitamin D is a unique fat-soluble vitamin that your body can produce when exposed to sunlight. It is essential for overall health and well-being, with a significant impact on various bodily functions. This vitamin plays a crucial role in maintaining strong bones, supporting the immune system, and regulating mood.",
        'benefits':
            '''   Vitamin D is best known for its role in calcium absorption, which is vital for bone health. It helps your body absorb calcium from the foods you eat and contributes to the formation and maintenance of strong and healthy bones.

    Adequate Vitamin D levels are associated with a robust immune system. It helps your body fight off infections and may reduce the risk of respiratory illnesses.

    Emerging research suggests that Vitamin D may play a role in mood regulation and mental health. It's often referred to as the "sunshine vitamin" because sunlight exposure triggers its production, potentially influencing mood and combating seasonal affective disorder (SAD).

    Some studies indicate that sufficient Vitamin D levels may contribute to cardiovascular health by supporting normal blood pressure and reducing the risk of heart disease.

    While research is ongoing, there is evidence to suggest that Vitamin D might play a role in reducing the risk of certain types of cancer, such as breast, prostate, and colon cancer''',
        'source': """There are two primary sources of Vitamin D:

- Sunlight: Your skin can produce Vitamin D when exposed to direct sunlight. Spending time outdoors, especially during sunny days, is an excellent way to naturally increase your Vitamin D levels.

- Diet and Supplements: Vitamin D can also be obtained from dietary sources and supplements. Food sources include fatty fish (like salmon and mackerel), fortified dairy products, egg yolks, and certain mushrooms. """,
        'usage':
            "The recommended daily intake of Vitamin D varies by age, gender, and individual circumstances. In many cases, adults may need around 600-800 international units (IU) per day. However, individual requirements may differ, so it's essential to consult with a healthcare provider for personalized guidance.",
        'caution':
            "While Vitamin D is essential for health, excessive intake of supplements can lead to Vitamin D toxicity, which can have adverse effects on your health. Always follow the recommended dosage guidelines, and consult with a healthcare professional if you're unsure about your Vitamin D needs.",
        'conclusion':
            "Remember that this overview provides general information, and specific recommendations may vary based on your unique health situation. If you have questions or concerns about Vitamin D supplementation, it's best to consult with a healthcare provider for personalized advice. ",
      },
      {
        'id': '5',
        'vitamin_name': 'vitamin e',
        'vitamin_type': 'vitamin_e',
        'overview':
            'Vitamin E is a fat-soluble antioxidant that plays a crucial role in protecting cells from damage. It is essential for maintaining good health and preventing chronic diseases. There are several different forms of vitamin E, but the most biologically active one is alpha-tocopherol.',
        'benefits':
            """•	Antioxidant Protection: Vitamin E is a potent antioxidant that helps protect cells from damage caused by free radicals. This protective function is vital for overall health and well-being.
•	Skin Health: It's known for promoting healthy skin and is often used in skincare products to prevent premature aging.
•	Immune System: Vitamin E may enhance the body's immune response, helping it fight off infections.
•	Heart Health: Some research suggests that vitamin E may contribute to heart health by preventing the oxidation of low-density lipoprotein (LDL) cholesterol.
""",
        'source': """•	Nuts and Seeds: Almonds, sunflower seeds, hazelnuts.
•	Vegetable Oils: Sunflower, safflower, and wheat germ oils.
•	Green Vegetables: Spinach, broccoli, and kiwi.
•	Fortified Foods: Some cereals, fruit juices, and spreads are fortified with vitamin E.
""",
        'usage':
            'The recommended daily intake of vitamin E varies depending on age and gender. For most adults, a daily intake of around 15 milligrams (mg) is recommended.',
        'caution':
            '''    Vitamin E deficiency is rare but can lead to nerve and muscle damage. Symptoms might include muscle weakness, loss of muscle mass, abnormal eye movements, and vision problems.

    Excessive vitamin E intake from supplements can cause bleeding problems. It's essential not to exceed the recommended dosage without consulting a healthcare provider.''',
        'conclusion':
            "As with any supplement, it's wise to consult with a healthcare provider before taking vitamin E supplements to ensure that they are appropriate for your specific health needs.",
      },
      {
        'id': '6',
        'vitamin_name': 'vitamin k',
        'vitamin_type': 'vitamin_k',
        'overview':
            'Vitamin K is a fat-soluble vitamin that plays a crucial role in blood clotting and bone metabolism. There are two primary forms of vitamin K: vitamin K1 (phylloquinone), which is found in plant foods, and vitamin K2 (menaquinone), which is synthesized by bacteria in the human gut.',
        'benefits':
            """•	Blood Clotting: Vitamin K is essential for the production of clotting factors in the blood. This ensures that when you get a cut, your blood can form a clot to stop bleeding.
•	Bone Health: Vitamin K helps in maintaining bone density and reducing the risk of fractures. It regulates calcium in the bones and blood vessels.
•	Heart Health: Some studies suggest that vitamin K may help prevent the calcification of arteries, which is a risk factor for heart disease.
""",
        'source':
            """•	Leafy Greens: Kale, spinach, collard greens, and Swiss chard are excellent sources of vitamin K1.
•	Vegetable Oils: Soybean, cottonseed, and canola oils are rich in vitamin K1.
•	Fermented Foods: Certain fermented foods like natto contain vitamin K2.
•	Meat and Dairy: These foods provide some vitamin K2 as well.
""",
        'usage':
            "The recommended daily intake of vitamin K can vary based on age, gender, and life stage. For adult men, it's typically around 120 micrograms (mcg), and for adult women, it's about 90 mcg.",
        'caution':
            '''    Vitamin K deficiency is rare but can lead to increased bleeding and poor blood clotting. It may also impact bone health, potentially contributing to osteoporosis.

    There is no established upper limit for vitamin K intake from natural food sources. However, excessive intake from supplements can interfere with blood-thinning medications like warfarin. Always consult with a healthcare provider before taking supplements.''',
        'conclusion':
            'Remember that while both vitamin K1 and K2 are essential, they serve slightly different functions in the body. Vitamin K1 is primarily associated with blood clotting, while vitamin K2 has more impact on bone and heart health.',
      },
      {
        'id': '7',
        'vitamin_name': 'ashwagandha',
        'vitamin_type': 'ashwagandha',
        'overview':
            'Ashwagandha, scientifically known as Withania somnifera, is a powerful medicinal herb that has been used in traditional Ayurvedic medicine for centuries. It is often referred to as the "Indian ginseng" due to its rejuvenating properties. Ashwagandha is valued for its ability to help the body adapt to stress and promote overall well-being.',
        'benefits':
            '''   Ashwagandha is classified as an adaptogen, which means it helps the body adapt to stress. It can reduce the production of stress hormones, helping you feel more relaxed and less anxious.

    Ashwagandha has a calming effect on the nervous system, making it useful for those struggling with insomnia or disrupted sleep patterns.

    Some studies suggest that Ashwagandha may help alleviate symptoms of depression and anxiety. It may also improve overall emotional well-being.

    Regular consumption of Ashwagandha may enhance the immune system's function, making it more effective at warding off infections.

    Ashwagandha has anti-inflammatory properties that may help reduce inflammation in the body, which is linked to various chronic diseases.

    Some research indicates that Ashwagandha may enhance cognitive function, including memory and attention span.

    Ashwagandha may help balance hormones, making it potentially beneficial for conditions like PCOS (Polycystic Ovary Syndrome) and irregular menstrual cycles.

    It contains antioxidants that can help protect cells from oxidative damage caused by free radicals.''',
        'source': """Ashwagandha can be consumed in various forms, including:

● Powder: Ashwagandha root is dried and ground into a fine powder, which can be added to smoothies, teas, or taken as a supplement.
● Capsules: Ashwagandha supplements are available in capsule form, providing a convenient way to incorporate it into your routine.
● Tincture: Liquid extracts of Ashwagandha can be added to water or other beverages.
● Tea: Ashwagandha tea is made by steeping the dried root in hot water. """,
        'usage':
            "The appropriate dosage of Ashwagandha can vary depending on individual needs and the form of the supplement. Generally, a typical dose ranges from 300 to 500 milligrams of standardized root extract taken one to two times per day. It's advisable to start with a lower dose and gradually increase it, as needed.",
        'caution':
            'While Ashwagandha is generally considered safe for most people when used as directed, it may interact with certain medications or medical conditions. If you are pregnant, breastfeeding, have a medical condition, or are taking medications, consult with a healthcare professional before using Ashwagandha supplements.',
        'conclusion':
            "Ashwagandha is a versatile herb that offers a wide range of potential health benefits, particularly in managing stress and promoting overall well-being. As with any supplement, it's essential to use it responsibly and consult a healthcare provider if you have any concerns or questions about its suitability for your individual health needs.",
      },
      {
        'id': '8',
        'vitamin_name': 'calcium',
        'vitamin_type': 'calcium',
        'overview':
            'Calcium is a vital mineral in the body, known primarily for its role in maintaining strong bones and teeth. However, it also plays a crucial role in other essential bodily functions.',
        'benefits':
            """•	Bone Health: Calcium is the primary building block for bones and teeth. It's essential for their development, growth, and maintenance.
•	Muscle Function: Calcium is involved in muscle contractions, including the heartbeat and skeletal muscles.
•	Blood Clotting: It plays a role in blood clotting, helping to prevent excessive bleeding from injuries.
•	Nerve Transmission: Calcium is necessary for nerve signal transmission, allowing you to feel sensations and move your muscles.
""",
        'source':
            """•	Dairy Products: Milk, yogurt, and cheese are some of the best sources of dietary calcium.
•	Leafy Greens: Dark, leafy greens like kale and broccoli also contain calcium.
•	Fortified Foods: Many foods are fortified with calcium, such as fortified plant-based milk (soy, almond, etc.).
•	Canned Fish: Certain fish with soft, edible bones, like salmon and sardines, provide calcium.
•	Nuts and Seeds: Almonds and chia seeds are good sources of calcium.
•	Tofu: Tofu made with calcium sulfate is an excellent plant-based source.
""",
        'usage':
            'The recommended daily intake of calcium varies by age and gender but is generally around 1,000 to 1,300 milligrams (mg) for most adults. Children, teenagers, and older adults may have different needs.',
        'caution':
            '''   Calcium deficiency can lead to weakened bones and a higher risk of osteoporosis, a condition characterized by fragile bones.

    Excessive calcium intake, especially from supplements, can result in kidney stones and other health issues. It's essential not to exceed the recommended daily intake.''',
        'conclusion':
            "Calcium's absorption can be affected by other nutrients in your diet, like vitamin D. So, it's crucial to maintain a balanced diet to ensure your body can make the most of the calcium you consume.",
      },
      {
        'id': '9',
        'vitamin_name': 'd3k2',
        'vitamin_type': 'd3k2',
        'overview':
            'Vitamin D3 and Vitamin K2 are essential nutrients that play crucial roles in maintaining overall health. While they serve different functions in the body, they often work synergistically to support various physiological processes.',
        'benefits': """
● Bone Health: Vitamin D3 is critical for bone health as it enhances calcium absorption, reducing the risk of osteoporosis and fractures.
● Immune Support: It plays a role in supporting the immune system's function, potentially reducing the risk of infections.
● Mood Regulation: Some studies suggest that Vitamin D3 may have a positive impact on mood and may help combat symptoms of depression.
● Heart Health: There is emerging research on its potential cardiovascular benefits, including blood pressure regulation. """,
        'source':
            'The body can produce Vitamin D3 when exposed to sunlight, particularly UVB rays. Additionally, it can be obtained from dietary sources such as fatty fish (salmon, mackerel, tuna), fortified dairy products, and supplements.',
        'usage': """
● Vitamin D3: The recommended daily intake varies by age and individual factors. A typical range is 600 to 2,000 IU per day, but it's essential to consult with a healthcare provider to determine your specific needs.
● Vitamin K2: Adequate intake levels for Vitamin K2 have not been established, but supplementation typically ranges from 45 to 180 micrograms daily. """,
        'caution':
            "While both vitamins are generally considered safe, it's important not to exceed recommended doses, especially when taking supplements. Excessive intake can lead to toxicity. Always consult with a healthcare professional before starting any new supplement regimen, particularly if you have underlying health conditions or are taking medications.",
        'conclusion':
            'Vitamin D3 and Vitamin K2 are vital nutrients with diverse health benefits, ranging from bone health and cardiovascular support to immune function. They are often found in combination supplements due to their synergistic effects. To determine the right supplementation for your needs, consult a healthcare provider or nutritionist.',
      },
      {
        'id': '10',
        'vitamin_name': 'magnesium',
        'vitamin_type': 'magnesium',
        'overview':
            'Magnesium is an essential mineral that plays a crucial role in various bodily functions. It is involved in over 300 biochemical reactions, making it essential for maintaining overall health. Magnesium is known for its role in supporting muscle and nerve function, bone health, and cardiovascular wellness.',
        'benefits':
            '''   Magnesium plays a vital role in muscle contraction and relaxation, making it essential for proper muscle function. It also supports healthy nerve function.';

    Magnesium is involved in bone formation and density. It works in conjunction with calcium and vitamin D to help maintain strong and healthy bones.

    Adequate magnesium intake is linked to a lower risk of cardiovascular issues. It helps regulate heart rhythm, supports blood vessel health, and may help lower blood pressure.

    Magnesium is involved in energy metabolism, helping to convert food into energy that the body can use.

    Magnesium may promote relaxation and aid in getting better sleep by helping to relax muscles and calm the nervous system.

    Magnesium supports proper digestive function and helps prevent constipation.''',
        'source':
            """You can obtain magnesium from a variety of dietary sources, including:

● Nuts and Seeds: Almonds, cashews, and pumpkin seeds are excellent sources.
● Whole Grains: Oats, brown rice, and whole wheat provide magnesium.
● Leafy Greens: Spinach, kale, and Swiss chard are rich in magnesium.
● Legumes: Lentils, chickpeas, and black beans contain magnesium.
● Fish: Some fish, such as mackerel and salmon, are good sources.
● Dairy: Dairy products like yogurt can be a source of magnesium.""",
        'usage':
            """The recommended daily intake of magnesium varies depending on age, gender, and individual needs. It's best to consult with a healthcare professional or registered dietitian to determine your specific magnesium requirements.""",
        'caution':
            """While magnesium supplements are generally considered safe, excessive intake can lead to digestive issues or interact with certain medications. Always follow recommended dosage guidelines and seek medical advice if you have concerns about magnesium supplementation.""",
        'conclusion':
            "As always, individual requirements may vary, so it's advisable to consult with a healthcare provider for personalized advice regarding magnesium supplementation.",
      },
      {
        'id': '11',
        'vitamin_name': 'omega 3',
        'vitamin_type': 'omega3',
        'overview':
            'Omega-3 fatty acids are a group of essential fats that play a fundamental role in maintaining good health. These polyunsaturated fats are considered essential because the body cannot produce them on its own, so they must be obtained through your diet or supplements. Omega-3s are renowned for their numerous health benefits, particularly for heart and brain health.',
        'benefits':
            '''    Omega-3s can help reduce the risk of heart disease by lowering blood pressure, reducing triglycerides, and preventing the formation of blood clots.

    DHA, in particular, is essential for brain development and function. It may improve cognitive function and lower the risk of cognitive decline.

    Omega-3s have strong anti-inflammatory properties, which can help alleviate symptoms of chronic inflammatory conditions like arthritis.

    DHA is a major component of the retina, and omega-3s may reduce the risk of age-related macular degeneration.

    Some studies suggest that Omega-3s may help manage depression and anxiety.;

    Omega-3s can help keep your skin healthy by reducing inflammation and keeping it moisturized.''',
        'source':
            """You can obtain Omega-3 fatty acids from both animal and plant-based sources:

● Fatty Fish: Salmon, mackerel, sardines, trout, and herring are rich in EPA and DHA.

● Flaxseeds: These seeds are an excellent source of ALA. Ground flaxseeds are more easily absorbed by the body.

● Chia Seeds: Chia seeds are high in ALA and provide a variety of other nutrients.

● Walnuts: Walnuts are a good source of ALA and also provide healthy fats and antioxidants.

● Fish Oil Supplements: Fish oil supplements are a convenient way to increase your Omega-3 intake, especially if you don't regularly consume fatty fish.""",
        'usage':
            "The recommended dosage of Omega-3 supplements varies depending on individual health needs. It's essential to consult with a healthcare provider or a registered dietitian to determine the appropriate dosage for your specific circumstances.",
        'caution':
            "While Omega-3 supplements are generally considered safe, high doses can lead to bleeding problems in some individuals. If you have bleeding disorders or take blood-thinning medications, consult your healthcare provider before starting Omega-3 supplements",
        'conclusion':
            "As with any supplement, it's important to consult with a healthcare professional to determine the right Omega-3 supplementation for your unique health goals and needs. ",
      },
      {
        'id': '12',
        'vitamin_name': 'potassium',
        'vitamin_type': 'potassium',
        'overview':
            'Potassium is a vital mineral and electrolyte that plays a crucial role in various bodily functions. It is a positively charged ion (cation) found mainly inside your cells.',
        'benefits':
            """•	Electrolyte Balance: Potassium helps maintain proper electrolyte balance in the body, which is essential for various functions, including muscle contractions and nerve impulses.
•	Blood Pressure: Adequate potassium intake can help regulate blood pressure, as it counteracts the effects of sodium (salt). It relaxes blood vessels, lowering the risk of high blood pressure.
•	Heart Health: Potassium is essential for maintaining a healthy heartbeat and preventing irregular heart rhythms.
""",
        'source': """•	Bananas: These are a well-known source of potassium.
•	Oranges: Oranges and orange juice provide potassium.
•	Leafy Greens: Spinach, Swiss chard, and kale are excellent sources.
•	Beans: Beans, such as kidney beans and black beans, are rich in potassium.
•	Potatoes: Baked potatoes with the skin are good sources.
•	Fish: Fish like salmon and tuna contain potassium.
•	Avocado: Avocado is another potassium-rich food.
""",
        'usage':
            "The recommended daily intake of potassium is around 2,500 to 3,400 milligrams (mg) for adults, although individual needs may vary. It's essential to maintain a balance between potassium and sodium intake for optimal health.",
        'caution':
            "Hyperkalemia, or excess potassium in the blood, can also be dangerous and may cause muscle weakness, tingling sensations, and an irregular heartbeat. It's usually the result of kidney problems or certain medications.",
        'conclusion':
            "If you have kidney problems or other health issues that affect potassium levels, it's important to consult with a healthcare provider to manage your potassium intake.",
      },
      {
        'id': '13',
        'vitamin_name': 'selenium',
        'vitamin_type': 'selenium',
        'overview':
            "Selenium is a trace mineral, which means it's only required in small amounts by the body, but its role is essential for various biological functions.",
        'benefits':
            """•	Antioxidant Properties: Selenium acts as a powerful antioxidant, protecting cells from damage caused by free radicals. This helps reduce the risk of chronic diseases.
•	Thyroid Function: Selenium plays a crucial role in the production of thyroid hormones, which are vital for regulating metabolism.
•	Immune System Support: It supports the immune system's function and helps the body defend against infections.
•	Cognitive Health: Selenium may play a role in maintaining cognitive function and reducing the risk of age-related cognitive decline.
""",
        'source':
            """•	Brazil Nuts: These nuts are among the richest sources of selenium. A single Brazil nut can provide your daily recommended intake.
•	Fish: Tuna, halibut, and sardines are good sources of selenium.
•	Lean Meat: Lean meats like turkey and chicken are selenium-rich foods.
•	Whole Grains: Foods like brown rice and whole wheat bread contain selenium.
•	Dairy Products: Milk and yogurt also provide selenium.
•	Vegetables: Some vegetables, including spinach and broccoli, contain selenium, although the content can vary based on soil conditions.
""",
        'usage':
            "The recommended daily intake of selenium for adults is around 55 micrograms (mcg). While selenium is essential, it's also toxic in high amounts, so it's crucial not to exceed recommended levels.",
        'caution':
            "Excessive selenium intake can lead to selenosis, a condition characterized by symptoms like hair and nail loss, nausea, and digestive issues. It's important not to overconsume selenium.",
        'conclusion':
            'The selenium content in foods can vary significantly based on the selenium content of the soil in which the plants or animals were raised.',
      },
      {
        'id': '14',
        'vitamin_name': 'zinc',
        'vitamin_type': 'zinc',
        'overview':
            'Zinc is an essential mineral that plays a crucial role in various aspects of human health. It is involved in numerous bodily functions, making it an important nutrient for overall well-being. Zinc is essential for the proper functioning of the immune system, wound healing, DNA synthesis, and more.',
        'benefits':
            '''   Zinc is well-known for its role in supporting the immune system. It helps in the production and function of immune cells, making your body better equipped to fight off infections.

    Zinc is essential for wound healing and tissue repair. It plays a crucial role in collagen synthesis, which is necessary for skin, muscle, and tissue repair.

    Zinc is an antioxidant, which means it helps protect cells from oxidative stress and damage caused by free radicals. This can contribute to a reduced risk of chronic diseases.

    Zinc is commonly used in skincare products due to its role in maintaining healthy skin. It can help manage conditions like acne and promote clear skin.

    Zinc is necessary for normal growth and development, especially in children. It supports proper growth, cognitive development, and the functioning of the reproductive system.

    Zinc is essential for maintaining proper vision and smell. It's involved in the functioning of the eyes and olfactory (smell) receptors.''',
        'source':
            """Zinc can be obtained from various dietary sources, including:

● Meat: Beef, pork, and lamb are rich sources of zinc.
● Shellfish: Oysters, crab, and lobster contain high levels of zinc.
● Nuts and Seeds: Pumpkin seeds, cashews, and almonds provide zinc.
● Legumes: Beans, lentils, and chickpeas are good plant-based sources.
● Dairy Products: Milk, cheese, and yogurt contain zinc.
● Whole Grains: Whole grains like wheat, rice, and oats provide some zinc.
● Fortified Foods: Some cereals and plant-based milk alternatives are fortified with zinc.
● Supplements: Zinc supplements are available over-the-counter and can be used if dietary intake is insufficient. However, it's essential not to exceed recommended doses, as excessive zinc intake can lead to adverse effects. """,
        'usage':
            'The recommended daily intake of zinc varies by age, sex, and life stage. In general, adults need around 8-11 milligrams of zinc per day. Pregnant and breastfeeding women may require slightly more.',
        'caution':
            '''Zinc deficiency can lead to a weakened immune system, delayed wound healing, hair loss, and other health issues. On the other hand, excessive zinc intake from supplements can interfere with the absorption of other minerals and cause adverse effects.

It's important to strike a balance and obtain the right amount of zinc from your diet or supplements if necessary. If you suspect a deficiency or are considering zinc supplementation, it's advisable to consult a healthcare provider or registered dietitian for guidance tailored to your individual needs.''',
        'conclusion':
            "Remember that a well-balanced diet that includes a variety of foods can help you meet your zinc requirements naturally. ",
      },
    ];
  }
}
