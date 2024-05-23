import 'package:injectable/injectable.dart';

@injectable
class SupplementsTypeMockedDataSource {
  Future<List<Map<String, dynamic>>?> getSupplementsData() async {
    return [
      {
        'id': '1',
        'supplement_name': 'creatine monohydrate',
        'supplement_type': 'creatine',
        'overview':
            'Creatine Monohydrate is a popular dietary supplement known for its potential to enhance athletic performance, particularly in activities that involve short bursts of high-intensity effort. It is one of the most extensively studied and researched supplements in the world of sports and fitness.',
        'role':
            "Creatine is a naturally occurring compound found in small amounts in certain foods and synthesized by the body, primarily in the liver, kidneys, and pancreas. It is stored in muscle cells as creatine phosphate and plays a crucial role in the production of adenosine triphosphate (ATP), which is the primary energy currency of cells. During short, intense bursts of activity (e.g., weightlifting, sprinting), the body relies heavily on ATP for energy. Creatine supplementation aims to enhance the body's ATP availability, leading to improved exercise performance.",
        'source':
            'Creatine is found in foods like red meat, pork, poultry, and fish, although in relatively small amounts. Most individuals, especially athletes and bodybuilders, turn to creatine supplements to ensure they get a sufficient daily intake.',
        'benefits':
            """ Some studies suggest that creatine can help reduce muscle damage and inflammation following intense exercise, potentially speeding up recovery.

    Emerging research indicates that creatine may have cognitive benefits, including improved memory and mental clarity. It may be particularly relevant for tasks requiring short-term memory and quick thinking.

    Creatine supplementation has shown promise in the treatment of certain neuromuscular disorders, such as muscular dystrophy.""",
        'usage':
            """ Some individuals choose to begin creatine supplementation with a loading phase, taking around 20 grams per day (divided into 4 doses) for 5-7 days. This aims to saturate muscle cells with creatine quickly.

    After the loading phase, a daily dose of 3-5 grams is typically sufficient to maintain elevated creatine levels in the muscles. Some people skip the loading phase and start with this maintenance dose directly.""",
        'caution': """
● Creatine is generally safe when used as directed. However, it's essential to stay hydrated while taking creatine, as it can increase water retention in the body.
● Individuals with kidney issues should consult a healthcare professional before using creatine supplements.
● Some people may experience gastrointestinal discomfort when taking creatine. If this occurs, reducing the dose or taking it with food may help. """,
        'conclusion':
            "Creatine Monohydrate is a well-researched and widely used dietary supplement with a range of potential benefits for athletes, bodybuilders, and individuals looking to enhance exercise performance and support muscle growth. It's essential to follow recommended dosages and consult with a healthcare provider before starting any new supplementation regimen.",
      },
      {
        'id': '2',
        'supplement_name': 'protein powder',
        'supplement_type': 'protein',
        'overview':
            '''Protein powder is a popular dietary supplement that provides a convenient and efficient way to boost your protein intake. It is derived from various sources, including whey, casein, egg, soy, and plant-based options. Protein is an essential macronutrient that plays a critical role in repairing and building muscles, supporting immune function, and maintaining healthy skin, hair, and nails.''',
        'role': '',
        'source': '',
        'benefits':
            '''   Protein is composed of amino acids, which are the building blocks of muscle tissue. Consuming protein powder after a workout can enhance muscle recovery and promote muscle growth, especially when combined with resistance training.

    Protein powder offers a convenient source of high-quality protein that can be quickly prepared and consumed on the go, making it suitable for busy lifestyles.

    Protein can help you feel full and satisfied, potentially aiding in weight management and reducing the likelihood of overeating.

    With a wide variety of protein sources available, including whey, casein, plant-based, and more, individuals with dietary restrictions or preferences can find options that suit their needs.''',
        'usage':
            '''Consuming protein powder within the post-workout window (30 minutes to 2 hours after exercise) can help maximize muscle recovery and growth.

    Protein shakes can serve as a convenient meal replacement option when whole food sources are unavailable.

    Protein shakes can be consumed as a satisfying and nutritious snack between meals.

    Protein requirements vary based on factors such as activity level, age, and goals. A general guideline is to aim for around 0.7 to 1 gram of protein per pound of body weight per day. Protein powder can help you meet these daily targets.''',
        'caution':
            '''Choose a protein powder that is minimally processed and free from unnecessary additives and fillers.

    Be mindful of potential allergies or intolerances to certain protein sources.

    The amount of protein needed may vary based on whether your goal is muscle gain, weight loss, or overall health maintenance.''',
        'conclusion':
            '''Protein powder is a popular dietary supplement that provides a convenient and efficient way to boost your protein intake. It is derived from various sources, including whey, casein, egg, soy, and plant-based options. Protein is an essential macronutrient that plays a critical role in repairing and building muscles, supporting immune function, and maintaining healthy skin, hair, and nails.''',
      },
      {
        'id': '3',
        'supplement_name': 'bcaa',
        'supplement_type': 'bcaa',
        'overview':
            'Branched-Chain Amino Acids, commonly referred to as BCAAs, are a group of three essential amino acids: leucine, isoleucine, and valine. These amino acids are crucial building blocks for muscle tissue and play a significant role in energy production and overall physical performance.',
        'role':
            'BCAAs can be particularly useful during fasted workouts or when training sessions are long and intense.',
        'source':
            'BCAAs are naturally found in protein-rich foods like meat, eggs, and dairy products.',
        'benefits':
            '''   BCAAs are known for their ability to support muscle recovery and reduce muscle soreness after intense workouts. They do so by promoting protein synthesis and reducing the breakdown of muscle tissue.

    BCAAs can delay the onset of central fatigue during exercise. This means they may help you maintain mental clarity and focus during prolonged workouts.

    BCAAs can help prevent muscle breakdown, which is particularly relevant during periods of calorie restriction or intense training when the body may use amino acids for energy.

    BCAAs can be used as a source of energy by muscles during exercise, especially during endurance activities.''',
        'usage':
            '''    Consuming BCAAs before exercise can help provide an immediate source of energy and support endurance.

    BCAAs can be consumed during prolonged workouts to maintain energy levels and help prevent muscle breakdown.

    Including BCAAs in your post-workout routine can aid in muscle recovery and minimize muscle soreness.

    The recommended dosage of BCAAs can vary based on individual factors such as body weight, workout intensity, and goals. A common dosage range is around 5 to 10 grams before, during, or after workouts.''',
        'caution':
            "BCAAs are generally safe when consumed as recommended. However, excessive supplementation may lead to imbalances in other amino acids. It's important to follow dosage guidelines.",
        'conclusion':
            '''As with any supplement, it's advisable to consult with a healthcare professional before adding BCAAs to your routine, especially if you have underlying health conditions or are taking medications. They can help you determine if BCAAs align with your fitness goals and overall health plan.''',
      },
      {
        'id': '4',
        'supplement_name': 'AAKG',
        'supplement_type': 'aakg',
        'overview':
            '''As with any supplement, it's advisable to consult with a healthcare professional before adding BCAAs to your routine, especially if you have underlying health conditions or are taking medications. They can help you determine if BCAAs align with your fitness goals and overall health plan.''',
        'role': '',
        'source': '',
        'benefits':
            '''   AAKG is often touted for its ability to increase nitric oxide production in the body. Nitric oxide helps relax blood vessels, potentially leading to improved blood flow and nutrient delivery to muscles during exercise.

    Increased blood flow can result in enhanced "muscle pumps," a sensation of tightness and fullness in muscles during and after workouts.

    Some studies suggest that AAKG supplementation might improve exercise performance by enhancing endurance and reducing fatigue, although more research is needed to confirm these effects.

    Improved blood flow and nutrient delivery can contribute to better muscle recovery after intense training sessions.''',
        'usage':
            '''    AAKG is commonly taken as a pre-workout supplement to potentially enhance blood flow, muscle pumps, and exercise performance.

    Taking AAKG around 30 to 60 minutes before a workout is a common practice to allow time for absorption.

    Dosage recommendations can vary, but a common starting dose is around 2 to 5 grams of AAKG before workouts. As with any supplement, individual responses can vary, so starting with the lower end of the dosage range is advisable.''',
        'caution':
            '''    Some pre-workout supplements combine AAKG with other ingredients like caffeine, citrulline, or beta-alanine to create a comprehensive formula.
    AAKG's effects may be influenced by factors like diet, exercise routine, and overall health.

    AAKG is generally considered safe when taken in appropriate dosages. However, high doses may lead to gastrointestinal discomfort or diarrhea.''',
        'conclusion':
            '''It's important to note that while AAKG has gained popularity, more research is needed to fully understand its effects on exercise performance and muscle growth. As with any supplement, it's advisable to consult with a healthcare professional before adding AAKG to your regimen, especially if you have underlying health conditions or are taking medications.''',
      },
      {
        'id': '5',
        'supplement_name': 'Citrulline',
        'supplement_type': 'citrulline',
        'overview':
            '''Citrulline is a non-essential amino acid that is naturally found in certain foods and also produced by the body. It plays a significant role in the urea cycle, a metabolic process that removes ammonia from the body. Citrulline has gained attention in the fitness community for its potential benefits on exercise performance, muscle recovery, and circulation.''',
        'role': '',
        'source': '',
        'benefits':
            '''   Citrulline is converted into arginine in the body, which then leads to increased production of nitric oxide. Nitric oxide helps relax blood vessels, leading to improved blood flow and potentially enhanced nutrient and oxygen delivery to muscles.

    Increased blood flow and improved circulation can contribute to better endurance, reduced fatigue, and potentially enhanced exercise performance.

    Citrulline's potential role in supporting blood flow can aid in muscle recovery after strenuous workouts by promoting nutrient delivery and waste removal.''',
        'usage':
            '''    Citrulline is often included in pre-workout supplements to potentially enhance blood flow, muscle pumps, and overall exercise performance.

    Taking citrulline before a workout, typically around 30 to 60 minutes prior, is a common practice to allow time for absorption.

    Dosage recommendations can vary, but a typical dosage range for citrulline is around 6 to 8 grams before workouts. Citrulline malate, a common form of citrulline, combines citrulline with malic acid and is also used.''',
        'caution':
            '''    Citrulline malate is a common form of citrulline that combines citrulline with malic acid. This combination may have additional benefits due to malic acid's potential role in energy production.

    Some pre-workout supplements combine citrulline with other ingredients like AAKG, beta-alanine, or caffeine to create a comprehensive formula.

    Citrulline is generally well-tolerated. Some individuals may experience mild gastrointestinal discomfort, but this is often dose-dependent.''',
        'conclusion':
            '''As with any supplement, it's recommended to consult with a healthcare professional before adding citrulline or any new supplement to your routine, especially if you have underlying health conditions or are taking medications. While citrulline shows promise, individual responses can vary, and more research is needed to fully understand its effects on exercise performance and muscle recovery.''',
      },
      {
        'id': '6',
        'supplement_name': 'beta-alanine',
        'supplement_type': 'beta_alanine',
        'overview':
            '''Beta-alanine is a non-essential amino acid that, when ingested, is converted into carnosine—a molecule found in muscle tissue. Carnosine plays a role in buffering the accumulation of hydrogen ions in muscles, which can contribute to muscle fatigue during high-intensity exercise. Beta-alanine has gained popularity as a supplement for its potential to improve endurance and exercise performance.''',
        'role': '',
        'source': '',
        'benefits':
            '''   Beta-alanine supplementation can increase muscle carnosine levels, which helps buffer the acidity in muscles during intense exercise. This may lead to improved endurance, especially in activities lasting 1 to 4 minutes.

    By delaying the increase in muscle acidity, beta-alanine might help delay the onset of fatigue, allowing you to work out harder and longer.

    Beta-alanine's effects are particularly noticeable in anaerobic exercises that involve short bursts of high-intensity effort, such as sprinting or weightlifting.''',
        'usage':
            '''    Beta-alanine is often taken in a "loading" phase, which involves consuming around 4 to 6 grams of beta-alanine per day for 2 to 4 weeks. This phase helps saturate muscle carnosine levels.

    After the loading phase, a maintenance dose of around 2 to 3 grams per day is taken to sustain increased muscle carnosine levels.

    Beta-alanine can be taken at any time of day. Some people prefer taking it pre-workout to ensure it's available during their training sessions.''',
        'caution':
            '''    One common side effect of beta-alanine is a harmless tingling or flushing sensation, often referred to as "paresthesia." This sensation is temporary and varies among individuals. Taking smaller doses throughout the day can help reduce this effect.

    Beta-alanine and creatine are sometimes combined, as they target different aspects of muscle performance. Creatine enhances short-duration, high-intensity activities, while beta-alanine benefits endurance.

    Beta-alanine is generally safe when taken as directed. The tingling sensation mentioned above is the most common side effect.''',
        'conclusion':
            '''While beta-alanine holds promise for improving endurance and performance, individual responses can vary. As with any supplement, it's wise to consult with a healthcare professional before adding beta-alanine to your routine, especially if you have underlying health conditions or are taking medications. Additionally, it's important to follow dosage guidelines for both the loading and maintenance phases to achieve the best results.''',
      },
      {
        'id': '7',
        'supplement_name': 'Glutamine',
        'supplement_type': 'glutamine',
        'overview':
            '''Glutamine is a non-essential amino acid that is abundant in the body and plays a vital role in various physiological processes. It is particularly important for maintaining the health of the digestive system, immune function, and muscle tissue. Glutamine is found in both food sources and as a dietary supplement.''',
        'role': '',
        'source': '',
        'benefits':
            '''   Glutamine is considered conditionally essential during times of stress, such as intense physical training. It may support muscle recovery by promoting protein synthesis and reducing muscle breakdown.

    Glutamine is essential for the proper functioning of immune cells. Intense exercise can temporarily suppress the immune system, and glutamine supplementation may help maintain immune health in athletes.

    Glutamine is a primary energy source for cells lining the digestive tract. It may help support the integrity of the gastrointestinal lining and aid in maintaining gut health.

    Glutamine is a key component in the body's nitrogen balance, important for various physiological functions.''',
        'usage':
            '''   Some individuals use glutamine as part of their post-workout regimen to potentially support muscle recovery.

    Glutamine's immune-supporting properties might be particularly useful during periods of heavy training, competition, or other forms of physical stress.

    Glutamine supplementation may be considered for individuals looking to support digestive health.;

    Dosage recommendations can vary, but a common range for glutamine supplementation is around 5 to 10 grams per day, divided into multiple doses.''',
        'caution':
            '''    Glutamine is found in various protein-rich foods, including meat, dairy products, and certain vegetables.

    Glutamine might be particularly important during times of illness or injury, as the body's demand for glutamine increases during these periods.

    Glutamine is generally considered safe when taken within recommended dosages. Some individuals might experience mild gastrointestinal discomfort.''',
        'conclusion':
            '''As with any supplement, it's recommended to consult with a healthcare professional before adding glutamine to your regimen, especially if you have underlying health conditions or are taking medications. While glutamine has potential benefits, individual responses can vary, and it's important to ensure that supplementation aligns with your health goals and needs.''',
      },
      {
        'id': '8',
        'supplement_name': 'Collagen',
        'supplement_type': 'collagen',
        'overview':
            '''Collagen is the most abundant protein in the human body and is a key component of connective tissues, including skin, tendons, ligaments, and bones. It provides structural support and strength to various parts of the body. Collagen supplements are derived from animal sources, such as bovine, marine, or chicken collagen, and have gained popularity for their potential benefits on skin health, joint function, and more.''',
        'role': '',
        'source': '',
        'benefits':
            '''   Collagen is integral to skin's elasticity, hydration, and overall appearance. Some studies suggest that collagen supplementation might help improve skin elasticity, hydration, and reduce the appearance of wrinkles.

    Collagen plays a role in maintaining the integrity of joint cartilage. Some individuals use collagen supplements to potentially alleviate joint pain and improve mobility, especially in conditions like osteoarthritis.

    Collagen is a component of bones and may contribute to bone strength and density.

    Collagen may also support hair and nail health, as both are made up of proteins.''',
        'usage':
            '''    Many individuals use collagen supplements for their potential cosmetic benefits, aiming to enhance skin elasticity and overall skin health.

    Collagen is used by those looking to support joint health, especially if they experience joint discomfort.

    Dosage recommendations can vary depending on the source and type of collagen used. Common dosages range from 5 to 10 grams per day.''',
        'caution':
            '''    Different types of collagen are found in various tissues. Type I and Type III collagen are often used for skin health, while Type II collagen is associated with joint health.

    Collagen supplements are typically hydrolyzed, which means they are broken down into smaller peptides for better absorption.

    Some collagen supplements include additional ingredients like vitamins, minerals, or antioxidants to enhance their effects.

    Collagen supplements are generally considered safe with minimal side effects. Some individuals might experience mild gastrointestinal symptoms like bloating or a feeling of fullness.''',
        'conclusion':
            '''As with any supplement, it's recommended to consult with a healthcare professional before adding collagen to your routine, especially if you have underlying health conditions or are taking medications. While collagen has potential benefits for skin, joint, and overall health, individual responses can vary, and it's important to ensure that supplementation aligns with your specific health goals and needs.''',
      },
    ];
  }
}
