

import SwiftUI

struct FactsViewCaptain57: View {
    @State var timer: Timer?
    @State var selectedFact: FactCaptain57? = factsCaptain57.randomElement()!
    @State var showSheet = false
    
     var x = Int.random(in: 1...100)
var y = Double.random(in: 0...1)
var z = Bool.random()

func add(a: Int, b: Int) -> Int {
    return a + b
}

func multiply(a: Double, b: Double) -> Double {
    return a * b
}

func generateRandomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).map { _ in letters.randomElement()! })
}

func isEven(number: Int) -> Bool {
    return number % 2 == 0
}
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFontCaptain57(size: 20, weight: .regular, color: .hex("F3D376"))
                                .padding(.top, 16)
                                .padding(.horizontal)
                            Spacer()
                            Text(fact.content)
                                .withFontCaptain57(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFontCaptain57(size: 15.6, weight: .regular)
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = factsCaptain57.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .overlay {
                            Text("NEXT")
                                .withFontCaptain57(size: 14.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetViewCaptain57
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetViewCaptain57: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFontCaptain57(size: 22, weight: .regular, color: .hex("F3D376"))
                    .padding(.top, 12)
                
                ScrollView {
                    Text(fact.content)
                        .withFontCaptain57(size: 19.5, weight: .thin)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("F3D376"))
                    
                    Rectangle()
                        .foregroundColor(.hex("402E27"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFontCaptain57(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.hex("402E27")
                    .edgesIgnoringSafeArea(.all)
            }
    }
}

#Preview {
    ContentViewCaptain57(showLoadingCaptain57: false, selectedTabCaptain57: .facts)
}


struct FactCaptain57 {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let factsCaptain57: [FactCaptain57] = [
    FactCaptain57(
        title: "The Speed of Light",
        content: "The speed of light in a vacuum is approximately 299,792 kilometers per second (186,282 miles per second). This constant is an essential foundation of physics, and it represents the fastest possible speed at which information or energy can be transmitted. Light travels at this speed no matter where it is or what medium it is traveling through, even in empty space. When we look at distant stars, we are actually seeing light that left those stars many years ago. The speed of light is crucial in understanding concepts such as time dilation in relativity and the vastness of the universe."
    ),
    FactCaptain57(
        title: "The Largest Living Organism",
        content: "The largest living organism on Earth is not a whale or an elephant but a fungus known as the honey fungus (Armillaria ostoyae). This particular fungus, located in Oregon’s Malheur National Forest, spans over 2,385 acres and is considered the largest known organism by area. It grows by sending out underground mycelial networks, which spread across large areas, allowing it to cover vast expanses. This organism is believed to be thousands of years old, making it one of the oldest living entities on Earth. While it may appear as just a patch of forest floor, it is a vast and interconnected organism that is capable of consuming vast amounts of organic material to sustain itself."
    ),
    FactCaptain57(
        title: "The Longest Living Animal",
        content: "The Greenland shark (Somniosus microcephalus) holds the record for the longest-living animal on Earth. Studies have shown that these sharks can live for more than 400 years, which makes them the longest-lived vertebrates known to science. They reside in the cold, deep waters of the North Atlantic and Arctic Oceans, and their slow metabolism contributes to their extraordinary longevity. The Greenland shark grows at an extremely slow rate of about 1 cm per year and doesn't reach sexual maturity until around 150 years of age. This incredible lifespan has only recently been understood thanks to advances in radiocarbon dating techniques."
    ),
    FactCaptain57(
        title: "The Ocean's Depths",
        content: "The Mariana Trench, located in the Pacific Ocean, is the deepest part of the world’s oceans, with the deepest point known as the Challenger Deep, which reaches around 36,000 feet (10,994 meters) below sea level. To put this into perspective, Mount Everest, the tallest mountain in the world, could easily fit into the trench with over a mile of water still above it. The trench is an incredibly remote and extreme environment, and very little is known about the creatures that live in such extreme conditions. Despite the challenges in exploring the trench, recent deep-sea exploration missions have discovered new species of organisms that thrive in the abyss."
    ),
    FactCaptain57(
        title: "The Largest Volcano in the Solar System",
        content: "Olympus Mons, located on Mars, is the largest volcano in the solar system. This massive shield volcano stands nearly 13.6 miles (22 kilometers) tall, which is almost three times the height of Mount Everest, the highest mountain on Earth. Its diameter spans 370 miles (600 kilometers), and it covers an area about the size of the state of New Mexico. What makes Olympus Mons so large is the lower gravity on Mars, which allows volcanic structures to grow much taller and wider than those on Earth. The size and prominence of Olympus Mons suggest that Mars was geologically active in the past, with volcanic activity possibly playing a significant role in shaping the planet’s surface."
    ),
    FactCaptain57(
        title: "The Power of the Sun",
        content: "The Sun is an extraordinary and powerful force in the solar system. It generates an immense amount of energy in the form of light and heat, powering all life on Earth. The Sun’s energy output is about 3.8 x 10^26 watts every second, which is roughly the amount of energy produced by 100 billion nuclear bombs. This energy comes from the process of nuclear fusion, where hydrogen atoms in the Sun’s core fuse to form helium, releasing vast amounts of energy in the form of electromagnetic radiation. The Sun’s gravitational pull also holds the entire solar system together, influencing the orbits of planets, asteroids, and comets. Without the Sun, life on Earth would not exist, and our planet would be a frozen, dark place."
    ),
    FactCaptain57(
        title: "The Oldest Known Object in the Universe",
        content: "HD 140283 is a star that holds the title of being the oldest known object in the universe. This star, located about 13 billion light-years away from Earth, is believed to be around 13.8 billion years old, making it nearly as old as the universe itself. HD 140283 is a Population II star, meaning it formed early in the universe's history, likely when the universe was just a few hundred million years old. Its age has been difficult to precisely determine due to its unusual composition, but its age is still significant in understanding the early universe. Studying ancient stars like HD 140283 helps astronomers understand the formation of galaxies, stars, and other celestial objects in the early cosmos."
    ),
    FactCaptain57(
        title: "The Human Brain's Neurons",
        content: "The human brain is one of the most complex organs in the body, containing around 86 billion neurons, each of which can form thousands of connections with other neurons. These neurons communicate through electrical impulses, allowing us to think, feel, and perform every action, from simple reflexes to complex thought processes. The brain's ability to form new connections, called neuroplasticity, is crucial for learning and memory. Neurons are organized into networks that control different bodily functions, including movement, vision, memory, and emotions. The human brain is constantly changing and adapting to new experiences, which is why learning and memory retention are so dynamic throughout life."
    ),
    FactCaptain57(
        title: "The Great Wall of China",
        content: "The Great Wall of China is one of the most iconic structures in the world, stretching over 13,000 miles (21,196 kilometers) across northern China. It was not built all at once but was constructed in stages by different Chinese dynasties over several centuries, starting as early as the 7th century BC. The wall was primarily built as a defense against invasions from nomadic tribes from the north, such as the Mongols. While the wall itself is the most famous feature, there are actually several walls, watchtowers, and other fortifications that make up the entire system. It is considered a remarkable feat of engineering and a symbol of China’s rich history and cultural heritage."
    ),
    FactCaptain57(
        title: "The Earth's Magnetic Field",
        content: "The Earth’s magnetic field is a powerful force generated by the motion of molten iron and nickel in the planet’s outer core. This field acts as a protective shield against harmful solar radiation and cosmic particles, which would otherwise be dangerous to life on Earth. The magnetic field also helps to guide navigation using compasses and plays a crucial role in creating phenomena like the aurora borealis (Northern Lights). Interestingly, the Earth's magnetic poles are not fixed and have flipped many times throughout history. These geomagnetic reversals happen over long periods, and while the exact causes are not entirely understood, they have been studied extensively by geophysicists."
    ),
    FactCaptain57(
        title: "The Speed of Earth’s Rotation",
        content: "At the equator, the Earth spins at an impressive speed of about 1,670 kilometers per hour (1,040 miles per hour). This rotational speed is fastest at the equator and gradually decreases as you move toward the poles. The Earth’s rotation is what gives us day and night, with one full rotation taking approximately 24 hours. The spinning of the Earth is gradually slowing down due to tidal friction caused by the gravitational pull of the Moon. This effect has been slowing Earth's rotation by about 1.7 milliseconds per century, and over millions of years, it has led to longer days."
    ),
    FactCaptain57(
        title: "The Moon’s Orbit",
        content: "The Moon orbits Earth at an average distance of about 384,400 kilometers (238,855 miles). This distance is relatively close in astronomical terms, and it takes the Moon about 27.3 days to complete one orbit around our planet. The gravitational pull of the Moon is responsible for the tides on Earth, with high and low tides occurring as the Moon’s gravity interacts with Earth's oceans. Interestingly, the Moon’s orbit is slowly moving away from Earth at a rate of about 3.8 centimeters (1.5 inches) per year, meaning that over millions of years, it will be farther from us. Despite this, the Moon’s gravitational influence will still play a significant role in Earth’s tides for the foreseeable future."
    ),
    FactCaptain57(
        title: "The Eiffel Tower’s Height Changes",
        content: "The Eiffel Tower in Paris is one of the most recognizable structures in the world. However, its height is not fixed. The tower can actually grow taller in the summer due to the expansion of the iron structure in the heat. On particularly hot days, the Eiffel Tower can increase in height by as much as 15 centimeters (6 inches). This phenomenon is a result of the metal expanding when exposed to heat, which is a common characteristic of many materials. The tower’s height varies depending on the time of day and weather conditions, but even in its tallest state, it stands at 330 meters (1,083 feet) above the ground."
    ),
    FactCaptain57(
        title: "The Size of the Amazon Rainforest",
        content: "The Amazon Rainforest, often referred to as the 'lungs of the Earth,' covers an area of approximately 5.5 million square kilometers (2.1 million square miles), making it the largest tropical rainforest in the world. It spans across nine countries in South America, including Brazil, Peru, and Colombia. The Amazon Rainforest is home to an incredible diversity of life, with scientists estimating that it contains one-tenth of the species known to exist on Earth. This biodiversity is not only crucial for the planet's ecological balance but also plays a key role in regulating the Earth’s climate by absorbing vast amounts of carbon dioxide."
    ),
    FactCaptain57(
        title: "The Hubble Space Telescope",
        content: "Launched in 1990, the Hubble Space Telescope has provided some of the most detailed images of outer space ever captured. Positioned beyond Earth's atmosphere, it is free from the distortion caused by the atmosphere, enabling it to capture clearer images of distant galaxies, stars, and planets. Hubble has contributed to significant discoveries in astronomy, including the measurement of the rate of expansion of the universe, the detection of exoplanets, and the study of black holes. Its longevity and continued operation have made it one of the most important instruments in the history of space exploration, providing invaluable insights into the cosmos for over three decades."
    ),
    FactCaptain57(
        title: "The Age of the Earth’s Oceans",
        content: "The Earth’s oceans are estimated to be around 4 billion years old, nearly as old as the planet itself. The oceans have played a central role in shaping life on Earth, providing the environment for the first forms of life to emerge. The water that makes up Earth’s oceans is thought to have come from various sources, including volcanic eruptions and cometary impacts. Over time, the oceans have been involved in the planet’s carbon and oxygen cycles, influencing Earth’s climate and weather patterns. The deep oceans also host some of the most unique and mysterious ecosystems, including hydrothermal vent communities that thrive without sunlight."
    ),
    FactCaptain57(
        title: "The Longest River in the World",
        content: "The Amazon River, with a length of about 4,345 miles (7,062 kilometers), is often considered the longest river in the world, though the Nile River in Africa is also a contender, measuring about 4,160 miles (6,695 kilometers). The debate over which river holds the record continues, but what is clear is that both rivers are vital to the ecosystems in their regions. The Amazon River drains the world’s largest tropical rainforest, while the Nile River has been a crucial water source for civilizations in northeastern Africa for thousands of years. These rivers support millions of people and a wide variety of plant and animal species."
    ),
    FactCaptain57(
        title: "The Great Barrier Reef",
        content: "The Great Barrier Reef, located off the coast of Australia, is the largest coral reef system in the world, stretching over 2,300 kilometers (1,430 miles). It is home to thousands of species, including fish, corals, and marine mammals, making it one of the most biologically diverse places on the planet. The reef is so large that it can be seen from space and is a UNESCO World Heritage Site. However, the Great Barrier Reef is under threat due to climate change, pollution, and overfishing. Rising ocean temperatures have caused widespread coral bleaching, which weakens the coral and threatens the delicate balance of the reef ecosystem."
    ),
    FactCaptain57(
        title: "The Largest Animal Migration",
        content: "The largest animal migration on Earth is that of the wildebeest in Africa. Every year, over 1.5 million wildebeest, along with hundreds of thousands of zebras and gazelles, participate in a dramatic migration across the Serengeti and Masai Mara ecosystems. This migration is driven by the search for food and water, and it covers a distance of about 1,000 kilometers (620 miles). The migration is not only a spectacle of wildlife but also a survival strategy, as the herds move in large numbers to protect themselves from predators. During the migration, the wildebeest face numerous challenges, including crossing crocodile-infested rivers and navigating harsh terrain."
    ),
    FactCaptain57(
        title: "The Largest Known Star",
        content: "The largest known star in terms of volume is UY Scuti, a red supergiant located in the constellation Scutum. This star has a radius about 1,700 times larger than the Sun, meaning that if placed at the center of our solar system, its surface would extend past the orbit of Jupiter. UY Scuti is in the final stages of its life and is expected to eventually explode as a supernova. Although it is enormous in size, UY Scuti is not particularly massive in terms of mass; red supergiants like UY Scuti have lower densities compared to smaller stars like the Sun. Its extreme size and impending death provide important insights into the life cycle of stars."
    ),
    FactCaptain57(
        title: "The Sahara Desert",
        content: "The Sahara Desert is the largest hot desert in the world, spanning across approximately 9 million square kilometers (3.6 million square miles). Located in North Africa, it covers much of Algeria, Chad, Egypt, Libya, Mali, Mauritania, Morocco, Niger, Western Sahara, Sudan, and Tunisia. Despite its harsh environment and dry conditions, the Sahara is home to a variety of life, including camels, desert foxes, and lizards. Interestingly, the Sahara was not always a desert. Thousands of years ago, it was a lush, green region with lakes, rivers, and abundant plant and animal life. Evidence of ancient civilizations and rock art suggests that the climate was much wetter in prehistoric times."
    ),
    FactCaptain57(
        title: "The Earth’s Atmosphere",
        content: "Earth’s atmosphere is made up of about 78% nitrogen, 21% oxygen, and trace amounts of other gases like carbon dioxide, argon, and neon. This composition has remained relatively stable for millions of years, which has allowed life to thrive on our planet. The atmosphere plays a crucial role in regulating Earth’s temperature through the greenhouse effect, which keeps the planet warm enough to support life. However, human activities, particularly the burning of fossil fuels, have increased the concentration of greenhouse gases, contributing to global warming and climate change. The atmosphere also protects us from harmful ultraviolet radiation from the Sun and is responsible for weather patterns and the water cycle."
    ),
    FactCaptain57(
        title: "The Speed of Light",
        content: "The speed of light in a vacuum is approximately 299,792 kilometers per second (186,282 miles per second). This is the fastest speed possible in the universe, and nothing can travel faster than this. It takes light about 8 minutes and 20 seconds to travel from the Sun to Earth, a distance of about 150 million kilometers (93 million miles). Light from distant stars and galaxies can take millions or even billions of years to reach us, allowing scientists to observe the universe as it was in the distant past. The speed of light is a fundamental constant in physics and plays a crucial role in the theory of relativity and the laws of the universe."
    ),
    FactCaptain57(
        title: "The Size of a Blue Whale’s Heart",
        content: "The blue whale, the largest animal to ever live on Earth, has a heart that can weigh as much as a small car—about 180 kilograms (400 pounds). The heart is roughly the size of a small refrigerator and is capable of pumping several thousand liters of blood through the whale’s enormous body. Despite its size, the blue whale’s heart beats only around 8 to 10 times per minute when the whale is swimming slowly, but it can increase to over 25 beats per minute when the whale is surfacing for air. The sheer size of the whale’s heart is necessary to supply enough oxygen and nutrients to its massive body, which can reach lengths of up to 30 meters (98 feet)."
    ),
    FactCaptain57(
        title: "The Internet's Global Reach",
        content: "The internet has become a global network connecting billions of people around the world. As of 2023, there are approximately 5.07 billion internet users worldwide, which is over 63% of the global population. The internet allows for the sharing of information, communication, entertainment, and commerce on an unprecedented scale. It is a platform for social media, online shopping, education, and so much more. The infrastructure supporting the internet includes millions of kilometers of undersea cables, satellites, and data centers, ensuring that people from all corners of the globe can access the vast digital world. The internet continues to shape economies, cultures, and societies."
    ),
    FactCaptain57(
        title: "The Power of a Hurricane",
        content: "Hurricanes are among the most powerful natural disasters on Earth. These massive storms form over warm ocean waters and can reach wind speeds of up to 320 kilometers per hour (200 miles per hour). The strongest hurricanes, categorized as Category 5 storms, can cause widespread destruction, with winds that can strip buildings of their roofs, uproot trees, and create storm surges that inundate coastal areas. A single hurricane can release the energy equivalent of several nuclear bombs every minute, making them one of the most energetic phenomena on the planet. Despite their power, modern forecasting techniques allow meteorologists to predict hurricanes' paths and intensities, giving people time to prepare and evacuate when necessary."
    ),
    FactCaptain57(
        title: "The Human Brain's Capacity",
        content: "The human brain is one of the most complex and powerful organs in the body, with around 86 billion neurons. It is capable of processing an astonishing amount of information, with each neuron making thousands of connections to other neurons, creating an intricate web of communication. The brain consumes about 20% of the body’s energy, despite representing only 2% of its total mass. The brain’s capacity for memory is vast; it is estimated that the brain can hold about 2.5 petabytes of information, which is roughly the equivalent of 3 million hours of TV shows. This immense computational power enables humans to learn, think, and create, making the brain the center of all cognitive functions and human consciousness."
    ),
    FactCaptain57(
        title: "The Largest Volcano in the Solar System",
        content: "The largest volcano in the solar system is Olympus Mons, located on Mars. This enormous shield volcano is about 600 kilometers (373 miles) in diameter and stands nearly 22 kilometers (13.6 miles) high, making it almost three times the height of Mount Everest, the highest mountain on Earth. The size of Olympus Mons is so vast that it could cover the state of New Mexico. It is believed that the volcano formed over a long period of time as lava erupted and spread out in layers, creating the giant structure. Unlike Earth, where tectonic plates shift and move, Mars’ lack of plate tectonics allowed Olympus Mons to grow to such a massive size."
    ),
    FactCaptain57(
        title: "The Age of the Oldest Living Tree",
        content: "The oldest known living tree is a bristlecone pine (Pinus longaeva) named Methuselah, located in California’s White Mountains. This ancient tree is over 4,800 years old, making it one of the oldest living organisms on Earth. Bristlecone pines are known for their resilience and ability to thrive in harsh conditions, including extreme temperatures and low levels of precipitation. The exact location of Methuselah is kept secret to protect it from potential harm, as it is considered a national treasure. There are also other bristlecone pines that are nearly as old, and some may even surpass Methuselah in age, though they have yet to be definitively identified."
    ),
    FactCaptain57(
        title: "The Composition of Earth’s Core",
        content: "The Earth’s core is composed mostly of iron and nickel, with a small amount of sulfur and other elements. It is divided into two layers: the outer core and the inner core. The outer core is liquid, while the inner core is solid. The temperature at the core of the Earth is estimated to be between 5,000 and 7,000 degrees Celsius (9,000 to 12,600 degrees Fahrenheit), which is hotter than the surface of the Sun. The movement of the liquid outer core generates Earth’s magnetic field, which is vital for protecting life on Earth from harmful solar radiation. Without the Earth’s magnetic field, life on the planet would be exposed to dangerous levels of radiation."
    ),
    FactCaptain57(
        title: "The Dangers of Space Travel",
        content: "Space travel is an incredible achievement, but it also comes with significant risks and challenges. One of the main dangers is exposure to radiation. Space travelers are outside the protective shield of Earth’s atmosphere, which means they are exposed to higher levels of cosmic radiation. This radiation can increase the risk of cancer and other health problems. Another danger is the lack of gravity, which can cause muscle atrophy and bone density loss. Astronauts have to exercise regularly to mitigate these effects. Additionally, the vacuum of space poses a risk of decompression, and spacecraft must be carefully designed to protect astronauts from this potentially fatal environment."
    ),
    FactCaptain57(
        title: "The Mystery of Dark Matter",
        content: "Dark matter is one of the most mysterious substances in the universe. Although it cannot be directly observed, scientists believe it makes up about 27% of the total mass and energy in the universe. Dark matter does not emit, absorb, or reflect light, making it invisible to telescopes. Its existence is inferred from its gravitational effects on visible matter, such as galaxies and galaxy clusters. The nature of dark matter remains one of the biggest unsolved puzzles in physics, and understanding it could revolutionize our knowledge of the universe. Some theories suggest that dark matter is made up of yet-to-be-discovered particles, but researchers are still working to identify it."
    ),
    FactCaptain57(
        title: "The Vastness of the Great Barrier Reef",
        content: "The Great Barrier Reef is the largest living structure on Earth and spans over 2,300 kilometers (1,430 miles) along the coast of Queensland, Australia. It is so large that it can be seen from space. The reef is home to an incredibly diverse range of marine life, including over 1,500 species of fish, 400 types of coral, and a variety of other sea creatures such as turtles, sharks, and rays. The reef plays a vital role in the global ecosystem, providing food and shelter to marine organisms. However, it is under threat from climate change, pollution, and overfishing, and conservation efforts are ongoing to protect it for future generations."
    ),
    FactCaptain57(
        title: "The Enormous Size of the Amazon Rainforest",
        content: "The Amazon Rainforest, often referred to as the 'lungs of the Earth,' spans over 5.5 million square kilometers (2.1 million square miles) across nine countries in South America. It is home to around 390 billion trees, representing about 10% of the total number of trees in the world. The rainforest is a key player in regulating the planet's climate, absorbing vast amounts of carbon dioxide and producing oxygen. It also houses millions of species of plants and animals, many of which are still undiscovered. Deforestation, illegal logging, and agriculture pose significant threats to the biodiversity and climate stability provided by the Amazon."
    ),
    FactCaptain57(
        title: "The Human Body’s Blood Supply",
        content: "The human circulatory system is a complex network of blood vessels that extends across the entire body. If you were to stretch out all the blood vessels in the human body, they would span over 96,000 kilometers (60,000 miles), enough to circle the Earth more than twice. The heart pumps blood through this network, providing oxygen and nutrients to cells while removing waste products like carbon dioxide. The average adult body contains about 5 liters of blood, and the circulatory system works continuously to maintain homeostasis and support the body's many functions, from regulating body temperature to fighting infections."
    ),
    FactCaptain57(
        title: "The Science Behind Rainbows",
        content: "Rainbows are a natural optical phenomenon that occurs when sunlight is refracted, or bent, through water droplets in the atmosphere. The light is separated into its constituent colors—red, orange, yellow, green, blue, indigo, and violet—creating a circular arc. This process occurs because different wavelengths of light bend by different amounts when passing through water. The angle at which the light is refracted determines the color seen. Although rainbows are typically seen when the sun shines during or after a rainstorm, they can also occur around waterfalls or other sources of water vapor in the air."
    ),
    FactCaptain57(
        title: "The Wonders of the Northern Lights",
        content: "The Northern Lights, or Aurora Borealis, are a mesmerizing natural light display that occurs in polar regions, primarily around the Arctic and Antarctic. These colorful light shows are the result of charged particles from the Sun interacting with Earth’s magnetic field. When these particles collide with atoms and molecules in the Earth’s atmosphere, they emit light. The colors of the aurora depend on the type of gas that the particles collide with. Oxygen produces green and red light, while nitrogen produces blue and purple hues. The Northern Lights are not only a beautiful phenomenon but also provide valuable scientific insights into the Earth's magnetic field and solar activity."
    ),
    FactCaptain57(
        title: "The Life Cycle of Stars",
        content: "Stars have a fascinating life cycle that spans billions of years. A star is born in a nebula, a vast cloud of gas and dust. When gravity causes this cloud to collapse, it creates a protostar, which eventually ignites nuclear fusion at its core, beginning the star’s main sequence phase. During this phase, the star fuses hydrogen into helium, producing light and heat. Over time, the star exhausts its hydrogen fuel and expands into a red giant or supergiant. When a star's core collapses, it can either become a white dwarf, a neutron star, or even a black hole, depending on its mass. Some of the most massive stars end their lives in explosive supernovae, creating heavy elements that are spread throughout space to form new stars, planets, and even life itself."
    ),
    FactCaptain57(
        title: "The Magnitude of the Sahara Desert",
        content: "The Sahara Desert is the largest hot desert in the world, covering an area of about 9.2 million square kilometers (3.6 million square miles). It spans much of North Africa, encompassing parts of Algeria, Chad, Egypt, Libya, Mali, Mauritania, Morocco, Niger, Western Sahara, Sudan, and Tunisia. Despite its harsh conditions, the Sahara is home to diverse ecosystems and species, such as camels, foxes, and various reptiles and plants. The desert's extreme temperature variations, reaching over 50°C (122°F) during the day and dropping below freezing at night, make it one of the most inhospitable environments on Earth. However, it has a rich cultural history, with ancient human settlements and evidence of early civilizations that once thrived there."
    ),
    FactCaptain57(
        title: "The Power of the Sun",
        content: "The Sun is a star at the center of our solar system, and it is by far the most important source of energy for life on Earth. It generates energy through nuclear fusion, a process in which hydrogen atoms are fused into helium at temperatures of over 15 million degrees Celsius (27 million degrees Fahrenheit). The Sun's energy radiates outward as light and heat, providing warmth, enabling photosynthesis, and supporting the Earth's climate. In fact, the Sun emits approximately 3.8 x 10^26 watts of energy every second. The Sun is essential for the survival of nearly all life on Earth, and without it, our planet would be a cold, lifeless rock."
    ),
    FactCaptain57(
        title: "The Earth’s Magnetic Field",
        content: "The Earth’s magnetic field is a natural shield that protects the planet from harmful solar radiation and cosmic rays. The field is generated by the movement of molten iron and nickel in the Earth's outer core, which creates electric currents and, in turn, magnetic fields. This process is known as the geodynamo. The magnetic field is vital for the survival of life on Earth, as it deflects charged particles from the Sun, which could otherwise strip away the atmosphere and cause widespread damage. The field is also responsible for phenomena such as the Northern and Southern Lights, which occur when charged particles from the Sun interact with the Earth's atmosphere along the magnetic poles."
    ),
    FactCaptain57(
        title: "The Development of Vaccines",
        content: "Vaccines are one of the most important public health innovations in history, protecting individuals and communities from potentially deadly diseases. The concept of vaccination dates back to the late 18th century when Edward Jenner developed the first smallpox vaccine using cowpox to confer immunity. Since then, vaccines have been developed for many infectious diseases, including polio, measles, diphtheria, and more recently, COVID-19. Vaccines work by stimulating the immune system to recognize and fight specific pathogens, providing immunity without causing the disease. The development of vaccines has saved millions of lives and continues to be a cornerstone of modern medicine."
    ),
    FactCaptain57(
        title: "The Origin of the Moon",
        content: "The Moon, Earth's only natural satellite, is thought to have formed about 4.5 billion years ago after a collision between Earth and a Mars-sized body called Theia. The impact caused a significant amount of debris to be ejected into space, which eventually coalesced to form the Moon. This theory, known as the Giant Impact Hypothesis, is supported by the similarity in composition between Earth's and the Moon's rocks. The Moon plays a vital role in stabilizing the Earth's axial tilt and its gravitational pull causes the tides on Earth."
    ),
    FactCaptain57(
        title: "The Power of the Human Brain",
        content: "The human brain is one of the most complex and powerful organs in the body. It consists of about 86 billion neurons, each making thousands of connections with other neurons, forming an intricate network of communication. The brain is responsible for controlling everything from basic bodily functions like breathing to complex cognitive processes like memory, emotion, and reasoning. Despite its relatively small size, it consumes about 20% of the body's energy. The study of the brain and its functions is a rapidly growing field, with advances in neuroscience continuing to reveal new insights into how we think, learn, and interact with the world."
    ),
    FactCaptain57(
        title: "The Ancient Pyramids of Egypt",
        content: "The Pyramids of Egypt, particularly the Great Pyramid of Giza, are among the most iconic and mysterious structures ever built. These massive monuments were constructed as tombs for the pharaohs, and the Great Pyramid, built for Pharaoh Khufu, was the tallest man-made structure in the world for over 3,800 years. The construction methods used to build the pyramids remain a subject of debate, with theories ranging from simple ramps to more complex mechanisms. The pyramids are a testament to the engineering ingenuity and the advanced knowledge of ancient Egyptian civilization, and they continue to inspire awe and fascination today."
    ),
    FactCaptain57(
        title: "The Importance of Bees in Ecosystems",
        content: "Bees play a crucial role in pollination, which is vital for the reproduction of many plants, including crops that humans rely on for food. It is estimated that about 75% of flowering plants and around 35% of global food crops depend on animal pollination, primarily by bees. Without bees, the biodiversity of ecosystems would be severely impacted, and food production would decline significantly. Despite their importance, bee populations are declining due to habitat loss, pesticide use, climate change, and disease. Efforts to protect and conserve bee populations are critical for maintaining ecological balance and food security."
    ),
    FactCaptain57(
        title: "The Formation of Earth’s Atmosphere",
        content: "Earth's atmosphere, which is essential for sustaining life, formed over 4.5 billion years ago. Initially, the planet had a thin atmosphere composed primarily of hydrogen and helium, but volcanic activity and comet impacts contributed to the release of gases such as carbon dioxide, nitrogen, and water vapor. Over time, the presence of life, particularly photosynthetic organisms like cyanobacteria, began to change the composition of the atmosphere. Oxygen was released as a byproduct of photosynthesis, gradually increasing to the levels we have today, which support aerobic life forms. The development of the atmosphere was a key factor in Earth's ability to support life."
    ),
    FactCaptain57(
        title: "The Age of the Universe",
        content: "The universe is estimated to be around 13.8 billion years old, based on observations of the cosmic microwave background radiation and the expansion rate of the universe. This age was determined through the study of light from the oldest galaxies and by measuring the age of the oldest star clusters. The universe began with the Big Bang, an event that caused space and time to expand from a singularity. Since then, the universe has continued to expand, with galaxies, stars, and planets forming over billions of years. Understanding the age of the universe helps scientists study the origins of matter and the future of our cosmos."
    ),
    FactCaptain57(
        title: "The Impact of Plastic Pollution",
        content: "Plastic pollution has become one of the most significant environmental challenges of the 21st century. Over 8 million tons of plastic waste are dumped into the oceans each year, causing harm to marine life and ecosystems. Plastics can take hundreds of years to break down, and during this time, they can entangle animals, release toxic chemicals, and be ingested by marine creatures. This has led to widespread concerns about the effects of plastic pollution on biodiversity and human health. Efforts to reduce plastic consumption, increase recycling, and develop biodegradable alternatives are crucial to mitigating this global problem."
    ),
    FactCaptain57(
        title: "The Speed of Light",
        content: "Light travels at an incredible speed of 299,792 kilometers per second (186,282 miles per second) in a vacuum. This is considered the fastest speed in the universe, and it is a fundamental constant of nature, denoted as 'c' in Einstein’s theory of relativity. The speed of light is so fast that it allows us to see objects in the universe that are millions or even billions of light-years away, giving us a glimpse of the past. For example, the light from the Sun takes about 8 minutes and 20 seconds to reach Earth, meaning we see the Sun as it was 8 minutes ago, not as it is right now."
    ),
    FactCaptain57(
        title: "The Role of DNA in Genetics",
        content: "DNA, or deoxyribonucleic acid, is the molecule that contains the genetic instructions used in the growth, development, functioning, and reproduction of all living organisms. The structure of DNA was first discovered in 1953 by James Watson and Francis Crick, and it is often described as a double helix. DNA is composed of four nucleotides, each represented by a letter (A, T, C, G), which pair in specific ways to form the genetic code. This code is used to produce proteins, which perform the functions necessary for life. The study of genetics and DNA has revolutionized medicine, forensics, and our understanding of inheritance and evolution."
    ),
    FactCaptain57(
        title: "The Phenomenon of Black Holes",
        content: "Black holes are regions in space where gravity is so strong that nothing, not even light, can escape. They form when massive stars collapse under their own gravity at the end of their life cycle, creating a singularity at their core. The point of no return around a black hole is called the event horizon, beyond which nothing can escape its pull. Black holes are fascinating objects that challenge our understanding of physics, particularly the nature of space and time. They are not completely 'empty' but rather contain immense gravitational energy, which can influence nearby stars, gas, and light."
    ),
]
