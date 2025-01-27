

import SwiftUI

struct QuestionsViewCaptain57: View {
    @State var selectedQuestion: Tab4QuestionCaptain57 = Tab4QuestionCaptain57.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
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
            if isInternetAvailableCaptain57() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.questionCaptain57)
                            .withFontCaptain57(size: isSECaptain57 ? 20: 22, weight: .medium, color: .black)
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFontCaptain57(size: 18, weight: .regular, color: showHint1 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSECaptain57 ? -20: 0)
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFontCaptain57(size: 18, weight: .regular, color: showHint2 ? .hex("232323"): .white)
                                    .padding(.trailing)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSECaptain57 ? -20: 0)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4QuestionCaptain57.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answerCaptain57: "Show answer")
                                    .withFontCaptain57(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFontCaptain57(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFontCaptain57(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewCaptain57(showLoadingCaptain57: false, selectedTabCaptain57: .questions)
}

struct Tab4QuestionCaptain57 {
    let questionCaptain57: String
    let hint1: String
    let hint2: String
    let answerCaptain57: String
    
    static let list: [Tab4QuestionCaptain57] = [
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest planet in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'J'.",
            answerCaptain57: "Jupiter"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What element does 'O' represent on the periodic table?",
            hint1: "It is essential for respiration.",
            hint2: "It makes up about 21% of Earth's atmosphere.",
            answerCaptain57: "Oxygen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which animal is known for its ability to change colors?",
            hint1: "It is a type of reptile.",
            hint2: "It is often associated with camouflaging.",
            answerCaptain57: "Chameleon"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the capital of France?",
            hint1: "It is known for its iconic tower.",
            hint2: "It is often called the 'City of Light'.",
            answerCaptain57: "Paris"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous scientist developed the theory of relativity?",
            hint1: "He was born in Germany in 1879.",
            hint2: "His most famous equation is E=mc².",
            answerCaptain57: "Albert Einstein"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet is known as the 'Red Planet'?",
            hint1: "It is the fourth planet from the Sun.",
            hint2: "Its surface appears reddish due to iron oxide.",
            answerCaptain57: "Mars"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the chemical symbol for gold?",
            hint1: "It is a precious metal.",
            hint2: "It has an atomic number of 79.",
            answerCaptain57: "Au"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who wrote the play 'Romeo and Juliet'?",
            hint1: "He is considered one of the greatest writers in the English language.",
            hint2: "He wrote many famous tragedies and comedies.",
            answerCaptain57: "William Shakespeare"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is known for inventing the printing press?",
            hint1: "It is famous for its beer and sausages.",
            hint2: "The printing press was invented by Johannes Gutenberg in this country.",
            answerCaptain57: "Germany"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the tallest mountain on Earth?",
            hint1: "It is located in the Himalayas.",
            hint2: "Its height is approximately 8,848 meters above sea level.",
            answerCaptain57: "Mount Everest"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest ocean on Earth?",
            hint1: "It covers about one-third of the Earth's surface.",
            hint2: "Its name starts with 'P'.",
            answerCaptain57: "Pacific Ocean"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which chemical element has the atomic number 1?",
            hint1: "It is the lightest element.",
            hint2: "It is commonly found in water.",
            answerCaptain57: "Hydrogen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who was the first man to walk on the Moon?",
            hint1: "He was an astronaut from the United States.",
            hint2: "He made history in 1969.",
            answerCaptain57: "Neil Armstrong"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest river in the world?",
            hint1: "It flows through Egypt.",
            hint2: "Its name starts with 'N'.",
            answerCaptain57: "Nile River"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous painting was created by Leonardo da Vinci?",
            hint1: "It features a woman with a mysterious smile.",
            hint2: "It is displayed in the Louvre Museum in Paris.",
            answerCaptain57: "Mona Lisa"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the fastest land animal?",
            hint1: "It can reach speeds up to 60 miles per hour.",
            hint2: "It is a type of big cat.",
            answerCaptain57: "Cheetah"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who is known as the 'Father of Computers'?",
            hint1: "He is a British mathematician and inventor.",
            hint2: "He conceptualized the first mechanical computer.",
            answerCaptain57: "Charles Babbage"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which instrument is used to measure temperature?",
            hint1: "It is commonly used in weather stations.",
            hint2: "Its name starts with 'T'.",
            answerCaptain57: "Thermometer"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which gas do plants use in photosynthesis?",
            hint1: "It is the most abundant gas in the Earth's atmosphere.",
            hint2: "Its chemical symbol is 'CO2'.",
            answerCaptain57: "Carbon Dioxide"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the primary ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "Its name starts with 'A'.",
            answerCaptain57: "Avocado"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who was the first woman to fly solo across the Atlantic Ocean?",
            hint1: "She was an American aviator.",
            hint2: "She disappeared in 1937 while attempting to circumnavigate the globe.",
            answerCaptain57: "Amelia Earhart"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is home to the Great Barrier Reef?",
            hint1: "It is an island nation.",
            hint2: "Its capital is Canberra.",
            answerCaptain57: "Australia"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the term for a scientist who studies the weather?",
            hint1: "They often use tools like barometers and anemometers.",
            hint2: "Their profession involves forecasting.",
            answerCaptain57: "Meteorologist"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the currency of Japan?",
            hint1: "Its name is often symbolized by the character '¥'.",
            hint2: "It is one of the strongest currencies in the world.",
            answerCaptain57: "Yen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest animal in the world?",
            hint1: "It is a marine mammal.",
            hint2: "It can grow up to 100 feet in length.",
            answerCaptain57: "Blue Whale"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who invented the light bulb?",
            hint1: "He was an American inventor.",
            hint2: "He is also known for inventing the phonograph.",
            answerCaptain57: "Thomas Edison"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the hottest planet in our solar system?",
            hint1: "It is the second planet from the Sun.",
            hint2: "Despite not being the closest planet, its thick atmosphere traps heat.",
            answerCaptain57: "Venus"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the smallest bone in the human body?",
            hint1: "It is located in the ear.",
            hint2: "Its name sounds like it could be related to a stirrup.",
            answerCaptain57: "Stapes"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which animal is known for its intelligence and ability to use tools?",
            hint1: "It is a type of primate.",
            hint2: "It has been observed making and using sticks for various tasks.",
            answerCaptain57: "Chimpanzee"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the chemical symbol for silver?",
            hint1: "It is a precious metal.",
            hint2: "It has the atomic number 47.",
            answerCaptain57: "Ag"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which city is known as the 'Big Apple'?",
            hint1: "It is the most populous city in the United States.",
            hint2: "It is home to landmarks such as the Statue of Liberty and Times Square.",
            answerCaptain57: "New York City"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet has the most moons in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'S'.",
            answerCaptain57: "Saturn"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest bone in the human body?",
            hint1: "It is located in the leg.",
            hint2: "Its name starts with 'F'.",
            answerCaptain57: "Femur"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the most spoken language in the world?",
            hint1: "It is a language widely spoken in the United States and the United Kingdom.",
            hint2: "It has over 2 billion speakers worldwide.",
            answerCaptain57: "English"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest planet in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'J'.",
            answerCaptain57: "Jupiter"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What element does 'O' represent on the periodic table?",
            hint1: "It is essential for respiration.",
            hint2: "It makes up about 21% of Earth's atmosphere.",
            answerCaptain57: "Oxygen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which animal is known for its ability to change colors?",
            hint1: "It is a type of reptile.",
            hint2: "It is often associated with camouflaging.",
            answerCaptain57: "Chameleon"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the capital of France?",
            hint1: "It is known for its iconic tower.",
            hint2: "It is often called the 'City of Light'.",
            answerCaptain57: "Paris"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous scientist developed the theory of relativity?",
            hint1: "He was born in Germany in 1879.",
            hint2: "His most famous equation is E=mc².",
            answerCaptain57: "Albert Einstein"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet is known as the 'Red Planet'?",
            hint1: "It is the fourth planet from the Sun.",
            hint2: "Its surface appears reddish due to iron oxide.",
            answerCaptain57: "Mars"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the chemical symbol for gold?",
            hint1: "It is a precious metal.",
            hint2: "It has an atomic number of 79.",
            answerCaptain57: "Au"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who wrote the play 'Romeo and Juliet'?",
            hint1: "He is considered one of the greatest writers in the English language.",
            hint2: "He wrote many famous tragedies and comedies.",
            answerCaptain57: "William Shakespeare"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is known for inventing the printing press?",
            hint1: "It is famous for its beer and sausages.",
            hint2: "The printing press was invented by Johannes Gutenberg in this country.",
            answerCaptain57: "Germany"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the tallest mountain on Earth?",
            hint1: "It is located in the Himalayas.",
            hint2: "Its height is approximately 8,848 meters above sea level.",
            answerCaptain57: "Mount Everest"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest ocean on Earth?",
            hint1: "It covers about one-third of the Earth's surface.",
            hint2: "Its name starts with 'P'.",
            answerCaptain57: "Pacific Ocean"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which chemical element has the atomic number 1?",
            hint1: "It is the lightest element.",
            hint2: "It is commonly found in water.",
            answerCaptain57: "Hydrogen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who was the first man to walk on the Moon?",
            hint1: "He was an astronaut from the United States.",
            hint2: "He made history in 1969.",
            answerCaptain57: "Neil Armstrong"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest river in the world?",
            hint1: "It flows through Egypt.",
            hint2: "Its name starts with 'N'.",
            answerCaptain57: "Nile River"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous painting was created by Leonardo da Vinci?",
            hint1: "It features a woman with a mysterious smile.",
            hint2: "It is displayed in the Louvre Museum in Paris.",
            answerCaptain57: "Mona Lisa"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the fastest land animal?",
            hint1: "It can reach speeds up to 60 miles per hour.",
            hint2: "It is a type of big cat.",
            answerCaptain57: "Cheetah"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who is known as the 'Father of Computers'?",
            hint1: "He is a British mathematician and inventor.",
            hint2: "He conceptualized the first mechanical computer.",
            answerCaptain57: "Charles Babbage"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which instrument is used to measure temperature?",
            hint1: "It is commonly used in weather stations.",
            hint2: "Its name starts with 'T'.",
            answerCaptain57: "Thermometer"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which gas do plants use in photosynthesis?",
            hint1: "It is the most abundant gas in the Earth's atmosphere.",
            hint2: "Its chemical symbol is 'CO2'.",
            answerCaptain57: "Carbon Dioxide"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the primary ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "Its name starts with 'A'.",
            answerCaptain57: "Avocado"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who was the first woman to fly solo across the Atlantic Ocean?",
            hint1: "She was an American aviator.",
            hint2: "She disappeared in 1937 while attempting to circumnavigate the globe.",
            answerCaptain57: "Amelia Earhart"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is home to the Great Barrier Reef?",
            hint1: "It is an island nation.",
            hint2: "Its capital is Canberra.",
            answerCaptain57: "Australia"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the term for a scientist who studies the weather?",
            hint1: "They often use tools like barometers and anemometers.",
            hint2: "Their profession involves forecasting.",
            answerCaptain57: "Meteorologist"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the currency of Japan?",
            hint1: "Its name is often symbolized by the character '¥'.",
            hint2: "It is one of the strongest currencies in the world.",
            answerCaptain57: "Yen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest animal in the world?",
            hint1: "It is a marine mammal.",
            hint2: "It can grow up to 100 feet in length.",
            answerCaptain57: "Blue Whale"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who invented the light bulb?",
            hint1: "He was an American inventor.",
            hint2: "He is also known for inventing the phonograph.",
            answerCaptain57: "Thomas Edison"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the hottest planet in our solar system?",
            hint1: "It is the second planet from the Sun.",
            hint2: "Despite not being the closest planet, its thick atmosphere traps heat.",
            answerCaptain57: "Venus"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the smallest bone in the human body?",
            hint1: "It is located in the ear.",
            hint2: "Its name sounds like it could be related to a stirrup.",
            answerCaptain57: "Stapes"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which animal is known for its intelligence and ability to use tools?",
            hint1: "It is a type of primate.",
            hint2: "It has been observed making and using sticks for various tasks.",
            answerCaptain57: "Chimpanzee"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the chemical symbol for silver?",
            hint1: "It is a precious metal.",
            hint2: "It has the atomic number 47.",
            answerCaptain57: "Ag"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which city is known as the 'Big Apple'?",
            hint1: "It is the most populous city in the United States.",
            hint2: "It is home to landmarks such as the Statue of Liberty and Times Square.",
            answerCaptain57: "New York City"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet has the most moons in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'S'.",
            answerCaptain57: "Saturn"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest bone in the human body?",
            hint1: "It is located in the leg.",
            hint2: "Its name starts with 'F'.",
            answerCaptain57: "Femur"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the most spoken language in the world?",
            hint1: "It is a language widely spoken in the United States and the United Kingdom.",
            hint2: "It has over 2 billion speakers worldwide.",
            answerCaptain57: "English"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest desert in the world?",
            hint1: "It is not a hot desert.",
            hint2: "It covers much of northern Africa.",
            answerCaptain57: "Antarctic Desert"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet is the closest to the Sun?",
            hint1: "It is the smallest planet in our solar system.",
            hint2: "Its name starts with 'M'.",
            answerCaptain57: "Mercury"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which vitamin is primarily obtained from sunlight?",
            hint1: "It is essential for bone health.",
            hint2: "Its name starts with 'D'.",
            answerCaptain57: "Vitamin D"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest-running TV show in the United States?",
            hint1: "It is an American animated sitcom.",
            hint2: "It features a family with a yellow-skinned father.",
            answerCaptain57: "The Simpsons"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is known as the Land of the Rising Sun?",
            hint1: "It is an island nation.",
            hint2: "Its capital city is Tokyo.",
            answerCaptain57: "Japan"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the fastest marine animal?",
            hint1: "It is a type of fish.",
            hint2: "It can swim at speeds of up to 68 miles per hour.",
            answerCaptain57: "Black Marlin"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest planet in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'J'.",
            answerCaptain57: "Jupiter"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What element does 'O' represent on the periodic table?",
            hint1: "It is essential for respiration.",
            hint2: "It makes up about 21% of Earth's atmosphere.",
            answerCaptain57: "Oxygen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which animal is known for its ability to change colors?",
            hint1: "It is a type of reptile.",
            hint2: "It is often associated with camouflaging.",
            answerCaptain57: "Chameleon"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the capital of France?",
            hint1: "It is known for its iconic tower.",
            hint2: "It is often called the 'City of Light'.",
            answerCaptain57: "Paris"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous scientist developed the theory of relativity?",
            hint1: "He was born in Germany in 1879.",
            hint2: "His most famous equation is E=mc².",
            answerCaptain57: "Albert Einstein"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet is known as the 'Red Planet'?",
            hint1: "It is the fourth planet from the Sun.",
            hint2: "Its surface appears reddish due to iron oxide.",
            answerCaptain57: "Mars"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the chemical symbol for gold?",
            hint1: "It is a precious metal.",
            hint2: "It has an atomic number of 79.",
            answerCaptain57: "Au"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who wrote the play 'Romeo and Juliet'?",
            hint1: "He is considered one of the greatest writers in the English language.",
            hint2: "He wrote many famous tragedies and comedies.",
            answerCaptain57: "William Shakespeare"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is known for inventing the printing press?",
            hint1: "It is famous for its beer and sausages.",
            hint2: "The printing press was invented by Johannes Gutenberg in this country.",
            answerCaptain57: "Germany"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the tallest mountain on Earth?",
            hint1: "It is located in the Himalayas.",
            hint2: "Its height is approximately 8,848 meters above sea level.",
            answerCaptain57: "Mount Everest"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest ocean on Earth?",
            hint1: "It covers about one-third of the Earth's surface.",
            hint2: "Its name starts with 'P'.",
            answerCaptain57: "Pacific Ocean"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which chemical element has the atomic number 1?",
            hint1: "It is the lightest element.",
            hint2: "It is commonly found in water.",
            answerCaptain57: "Hydrogen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who was the first man to walk on the Moon?",
            hint1: "He was an astronaut from the United States.",
            hint2: "He made history in 1969.",
            answerCaptain57: "Neil Armstrong"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest river in the world?",
            hint1: "It flows through Egypt.",
            hint2: "Its name starts with 'N'.",
            answerCaptain57: "Nile River"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous painting was created by Leonardo da Vinci?",
            hint1: "It features a woman with a mysterious smile.",
            hint2: "It is displayed in the Louvre Museum in Paris.",
            answerCaptain57: "Mona Lisa"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the fastest land animal?",
            hint1: "It can reach speeds up to 60 miles per hour.",
            hint2: "It is a type of big cat.",
            answerCaptain57: "Cheetah"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who is known as the 'Father of Computers'?",
            hint1: "He is a British mathematician and inventor.",
            hint2: "He conceptualized the first mechanical computer.",
            answerCaptain57: "Charles Babbage"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which instrument is used to measure temperature?",
            hint1: "It is commonly used in weather stations.",
            hint2: "Its name starts with 'T'.",
            answerCaptain57: "Thermometer"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which gas do plants use in photosynthesis?",
            hint1: "It is the most abundant gas in the Earth's atmosphere.",
            hint2: "Its chemical symbol is 'CO2'.",
            answerCaptain57: "Carbon Dioxide"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the primary ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "Its name starts with 'A'.",
            answerCaptain57: "Avocado"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who was the first woman to fly solo across the Atlantic Ocean?",
            hint1: "She was an American aviator.",
            hint2: "She disappeared in 1937 while attempting to circumnavigate the globe.",
            answerCaptain57: "Amelia Earhart"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is home to the Great Barrier Reef?",
            hint1: "It is an island nation.",
            hint2: "Its capital is Canberra.",
            answerCaptain57: "Australia"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the term for a scientist who studies the weather?",
            hint1: "They often use tools like barometers and anemometers.",
            hint2: "Their profession involves forecasting.",
            answerCaptain57: "Meteorologist"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the currency of Japan?",
            hint1: "Its name is often symbolized by the character '¥'.",
            hint2: "It is one of the strongest currencies in the world.",
            answerCaptain57: "Yen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest animal in the world?",
            hint1: "It is a marine mammal.",
            hint2: "It can grow up to 100 feet in length.",
            answerCaptain57: "Blue Whale"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who invented the light bulb?",
            hint1: "He was an American inventor.",
            hint2: "He is also known for inventing the phonograph.",
            answerCaptain57: "Thomas Edison"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the hottest planet in our solar system?",
            hint1: "It is the second planet from the Sun.",
            hint2: "Despite not being the closest planet, its thick atmosphere traps heat.",
            answerCaptain57: "Venus"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the smallest bone in the human body?",
            hint1: "It is located in the ear.",
            hint2: "Its name sounds like it could be related to a stirrup.",
            answerCaptain57: "Stapes"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which animal is known for its intelligence and ability to use tools?",
            hint1: "It is a type of primate.",
            hint2: "It has been observed making and using sticks for various tasks.",
            answerCaptain57: "Chimpanzee"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the chemical symbol for silver?",
            hint1: "It is a precious metal.",
            hint2: "It has the atomic number 47.",
            answerCaptain57: "Ag"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which city is known as the 'Big Apple'?",
            hint1: "It is the most populous city in the United States.",
            hint2: "It is home to landmarks such as the Statue of Liberty and Times Square.",
            answerCaptain57: "New York City"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet has the most moons in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'S'.",
            answerCaptain57: "Saturn"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest bone in the human body?",
            hint1: "It is located in the leg.",
            hint2: "Its name starts with 'F'.",
            answerCaptain57: "Femur"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the most spoken language in the world?",
            hint1: "It is a language widely spoken in the United States and the United Kingdom.",
            hint2: "It has over 2 billion speakers worldwide.",
            answerCaptain57: "English"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest desert in the world?",
            hint1: "It is not a hot desert.",
            hint2: "It covers much of northern Africa.",
            answerCaptain57: "Antarctic Desert"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet is the closest to the Sun?",
            hint1: "It is the smallest planet in our solar system.",
            hint2: "Its name starts with 'M'.",
            answerCaptain57: "Mercury"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which vitamin is primarily obtained from sunlight?",
            hint1: "It is essential for bone health.",
            hint2: "Its name starts with 'D'.",
            answerCaptain57: "Vitamin D"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest-running TV show in the United States?",
            hint1: "It is an American animated sitcom.",
            hint2: "It features a family with a yellow-skinned father.",
            answerCaptain57: "The Simpsons"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is known as the Land of the Rising Sun?",
            hint1: "It is an island nation.",
            hint2: "Its capital city is Tokyo.",
            answerCaptain57: "Japan"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the fastest marine animal?",
            hint1: "It is a type of fish.",
            hint2: "It can swim at speeds of up to 68 miles per hour.",
            answerCaptain57: "Black Marlin"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous physicist formulated the laws of motion and universal gravitation?",
            hint1: "He was an English mathematician and physicist.",
            hint2: "His famous work 'Principia' laid the foundation for classical mechanics.",
            answerCaptain57: "Isaac Newton"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest planet in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'J'.",
            answerCaptain57: "Jupiter"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What element does 'O' represent on the periodic table?",
            hint1: "It is essential for respiration.",
            hint2: "It makes up about 21% of Earth's atmosphere.",
            answerCaptain57: "Oxygen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which animal is known for its ability to change colors?",
            hint1: "It is a type of reptile.",
            hint2: "It is often associated with camouflaging.",
            answerCaptain57: "Chameleon"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the capital of France?",
            hint1: "It is known for its iconic tower.",
            hint2: "It is often called the 'City of Light'.",
            answerCaptain57: "Paris"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous scientist developed the theory of relativity?",
            hint1: "He was born in Germany in 1879.",
            hint2: "His most famous equation is E=mc².",
            answerCaptain57: "Albert Einstein"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet is known as the 'Red Planet'?",
            hint1: "It is the fourth planet from the Sun.",
            hint2: "Its surface appears reddish due to iron oxide.",
            answerCaptain57: "Mars"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the chemical symbol for gold?",
            hint1: "It is a precious metal.",
            hint2: "It has an atomic number of 79.",
            answerCaptain57: "Au"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who wrote the play 'Romeo and Juliet'?",
            hint1: "He is considered one of the greatest writers in the English language.",
            hint2: "He wrote many famous tragedies and comedies.",
            answerCaptain57: "William Shakespeare"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is known for inventing the printing press?",
            hint1: "It is famous for its beer and sausages.",
            hint2: "The printing press was invented by Johannes Gutenberg in this country.",
            answerCaptain57: "Germany"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the tallest mountain on Earth?",
            hint1: "It is located in the Himalayas.",
            hint2: "Its height is approximately 8,848 meters above sea level.",
            answerCaptain57: "Mount Everest"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest ocean on Earth?",
            hint1: "It covers about one-third of the Earth's surface.",
            hint2: "Its name starts with 'P'.",
            answerCaptain57: "Pacific Ocean"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which chemical element has the atomic number 1?",
            hint1: "It is the lightest element.",
            hint2: "It is commonly found in water.",
            answerCaptain57: "Hydrogen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who was the first man to walk on the Moon?",
            hint1: "He was an astronaut from the United States.",
            hint2: "He made history in 1969.",
            answerCaptain57: "Neil Armstrong"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest river in the world?",
            hint1: "It flows through Egypt.",
            hint2: "Its name starts with 'N'.",
            answerCaptain57: "Nile River"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous painting was created by Leonardo da Vinci?",
            hint1: "It features a woman with a mysterious smile.",
            hint2: "It is displayed in the Louvre Museum in Paris.",
            answerCaptain57: "Mona Lisa"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the fastest land animal?",
            hint1: "It can reach speeds up to 60 miles per hour.",
            hint2: "It is a type of big cat.",
            answerCaptain57: "Cheetah"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who is known as the 'Father of Computers'?",
            hint1: "He is a British mathematician and inventor.",
            hint2: "He conceptualized the first mechanical computer.",
            answerCaptain57: "Charles Babbage"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which instrument is used to measure temperature?",
            hint1: "It is commonly used in weather stations.",
            hint2: "Its name starts with 'T'.",
            answerCaptain57: "Thermometer"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which gas do plants use in photosynthesis?",
            hint1: "It is the most abundant gas in the Earth's atmosphere.",
            hint2: "Its chemical symbol is 'CO2'.",
            answerCaptain57: "Carbon Dioxide"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the primary ingredient in guacamole?",
            hint1: "It is a green fruit.",
            hint2: "Its name starts with 'A'.",
            answerCaptain57: "Avocado"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who was the first woman to fly solo across the Atlantic Ocean?",
            hint1: "She was an American aviator.",
            hint2: "She disappeared in 1937 while attempting to circumnavigate the globe.",
            answerCaptain57: "Amelia Earhart"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is home to the Great Barrier Reef?",
            hint1: "It is an island nation.",
            hint2: "Its capital is Canberra.",
            answerCaptain57: "Australia"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the term for a scientist who studies the weather?",
            hint1: "They often use tools like barometers and anemometers.",
            hint2: "Their profession involves forecasting.",
            answerCaptain57: "Meteorologist"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the currency of Japan?",
            hint1: "Its name is often symbolized by the character '¥'.",
            hint2: "It is one of the strongest currencies in the world.",
            answerCaptain57: "Yen"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest animal in the world?",
            hint1: "It is a marine mammal.",
            hint2: "It can grow up to 100 feet in length.",
            answerCaptain57: "Blue Whale"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who invented the light bulb?",
            hint1: "He was an American inventor.",
            hint2: "He is also known for inventing the phonograph.",
            answerCaptain57: "Thomas Edison"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the hottest planet in our solar system?",
            hint1: "It is the second planet from the Sun.",
            hint2: "Despite not being the closest planet, its thick atmosphere traps heat.",
            answerCaptain57: "Venus"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the smallest bone in the human body?",
            hint1: "It is located in the ear.",
            hint2: "Its name sounds like it could be related to a stirrup.",
            answerCaptain57: "Stapes"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which animal is known for its intelligence and ability to use tools?",
            hint1: "It is a type of primate.",
            hint2: "It has been observed making and using sticks for various tasks.",
            answerCaptain57: "Chimpanzee"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the chemical symbol for silver?",
            hint1: "It is a precious metal.",
            hint2: "It has the atomic number 47.",
            answerCaptain57: "Ag"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which city is known as the 'Big Apple'?",
            hint1: "It is the most populous city in the United States.",
            hint2: "It is home to landmarks such as the Statue of Liberty and Times Square.",
            answerCaptain57: "New York City"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet has the most moons in our solar system?",
            hint1: "It is a gas giant.",
            hint2: "Its name starts with 'S'.",
            answerCaptain57: "Saturn"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest bone in the human body?",
            hint1: "It is located in the leg.",
            hint2: "Its name starts with 'F'.",
            answerCaptain57: "Femur"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the most spoken language in the world?",
            hint1: "It is a language widely spoken in the United States and the United Kingdom.",
            hint2: "It has over 2 billion speakers worldwide.",
            answerCaptain57: "English"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the largest desert in the world?",
            hint1: "It is not a hot desert.",
            hint2: "It covers much of northern Africa.",
            answerCaptain57: "Antarctic Desert"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which planet is the closest to the Sun?",
            hint1: "It is the smallest planet in our solar system.",
            hint2: "Its name starts with 'M'.",
            answerCaptain57: "Mercury"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which vitamin is primarily obtained from sunlight?",
            hint1: "It is essential for bone health.",
            hint2: "Its name starts with 'D'.",
            answerCaptain57: "Vitamin D"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the longest-running TV show in the United States?",
            hint1: "It is an American animated sitcom.",
            hint2: "It features a family with a yellow-skinned father.",
            answerCaptain57: "The Simpsons"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which country is known as the Land of the Rising Sun?",
            hint1: "It is an island nation.",
            hint2: "Its capital city is Tokyo.",
            answerCaptain57: "Japan"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the fastest marine animal?",
            hint1: "It is a type of fish.",
            hint2: "It can swim at speeds of up to 68 miles per hour.",
            answerCaptain57: "Black Marlin"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Which famous physicist formulated the laws of motion and universal gravitation?",
            hint1: "He was an English mathematician and physicist.",
            hint2: "His famous work 'Principia' laid the foundation for classical mechanics.",
            answerCaptain57: "Isaac Newton"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "Who developed the first successful polio vaccine?",
            hint1: "He was an American medical researcher.",
            hint2: "His work in the 1950s eradicated the threat of polio.",
            answerCaptain57: "Jonas Salk"
        ),
        Tab4QuestionCaptain57(
            questionCaptain57: "What is the second largest continent in the world?",
            hint1: "It is home to the Sahara Desert.",
            hint2: "Its name starts with 'A'.",
            answerCaptain57: "Africa"
        )
    ]
}


import Network

func isInternetAvailableCaptain57() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
