
import SwiftUI

class QuestionViewModelCaptain57: ObservableObject {
    let typeOfGame: GameTypeCaptain57
    
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
    
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCountCaptain57 = 3
    @Published var questionNumberCaptain57 = 1
    
    @Published var player1RightAnswersCaptain57 = 0
    @Published var player2RightAnswersCaptain57 = 0
    
    
    @Published var listOfQuestionsCaptain57: [QuestionCaptain57]
    @Published var answer = ""
    
    @Published var showFinishViewCaptain57 = false
    @Published var showEnterViewCaptain57 = false
    
    var currentQuestionCaptain57: QuestionCaptain57 {
        listOfQuestionsCaptain57[questionNumberCaptain57 - 1]
    }
    
    init(typeOfGame: GameTypeCaptain57) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterViewCaptain57 = true }
        listOfQuestionsCaptain57 =  Array(QuestionCaptain57.advancedQuestionsCaptain57.shuffled().prefix(21))
    }
    
    func answerTheQuestionCaptain57(answer: String) {
        self.answer = answer
        
        if answer == currentQuestionCaptain57.correctAnswer {
            if questionNumberCaptain57 % 2 == 0 {
                player2RightAnswersCaptain57 += 1
            } else {
                player1RightAnswersCaptain57 += 1
            }
        } else if typeOfGame == .oneP {
            heartCountCaptain57 -= 1
            if heartCountCaptain57 <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishViewCaptain57 = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumberCaptain57 >= 20 || (typeOfGame == .withC && questionNumberCaptain57 >= 19) {
                showFinishViewCaptain57 = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumberCaptain57 += 2
                    player2RightAnswersCaptain57 += [0, 1].randomElement()!
                } else {
                    questionNumberCaptain57 += 1
                }
            }
        }
    }
}


enum GameTypeCaptain57 {
    case oneP
    case withC
    case withF
}

struct QuestionCaptain57 {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let wecfwrf = "wrfcwrf"
    
    static let advancedQuestionsCaptain57: [QuestionCaptain57] = [
        QuestionCaptain57(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Paris", "Berlin", "Madrid", "Rome"]
        ),
        QuestionCaptain57(
            question: "Which element has the chemical symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Gold", "Osmium", "Hydrogen"]
        ),
        QuestionCaptain57(
            question: "Who wrote 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Mark Twain", "Charles Dickens", "Jane Austen"]
        ),
        QuestionCaptain57(
            question: "What is the square root of 64?",
            correctAnswer: "8",
            answerOptions: ["8", "6", "7", "9"]
        ),
        QuestionCaptain57(
            question: "In which year did the first man land on the moon?",
            correctAnswer: "1969",
            answerOptions: ["1969", "1959", "1979", "1989"]
        ),
        QuestionCaptain57(
            question: "What is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Jupiter", "Saturn", "Earth", "Mars"]
        ),
        QuestionCaptain57(
            question: "Which programming language is known for its use in iOS development?",
            correctAnswer: "Swift",
            answerOptions: ["Swift", "Python", "Java", "C++"]
        ),
        QuestionCaptain57(
            question: "What is the term for a word or phrase that reads the same backward as forward?",
            correctAnswer: "Palindrome",
            answerOptions: ["Palindrome", "Anagram", "Synonym", "Homonym"]
        ),
        QuestionCaptain57(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Avocado", "Tomato", "Onion", "Lime"]
        ),
        QuestionCaptain57(
            question: "Who painted the 'Mona Lisa'?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Leonardo da Vinci", "Michelangelo", "Raphael", "Vincent van Gogh"]
        ),
        QuestionCaptain57(
            question: "What is the capital of Germany?",
            correctAnswer: "Berlin",
            answerOptions: ["Berlin", "Vienna", "Madrid", "Prague"]
        ),
        QuestionCaptain57(
            question: "Who developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Nikola Tesla", "Marie Curie"]
        ),
        QuestionCaptain57(
            question: "What is the smallest unit of life?",
            correctAnswer: "Cell",
            answerOptions: ["Cell", "Atom", "Molecule", "Organ"]
        ),
        QuestionCaptain57(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["Japan", "China", "Thailand", "India"]
        ),
        QuestionCaptain57(
            question: "What is 15 multiplied by 6?",
            correctAnswer: "90",
            answerOptions: ["90", "80", "100", "85"]
        ),
        QuestionCaptain57(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Jupiter", "Venus", "Saturn"]
        ),
        QuestionCaptain57(
            question: "What is the primary language spoken in Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Portuguese", "Spanish", "French", "English"]
        ),
        QuestionCaptain57(
            question: "Who painted the ceiling of the Sistine Chapel?",
            correctAnswer: "Michelangelo",
            answerOptions: ["Michelangelo", "Leonardo da Vinci", "Raphael", "Donatello"]
        ),
        QuestionCaptain57(
            question: "What is the largest mammal on Earth?",
            correctAnswer: "Blue whale",
            answerOptions: ["Blue whale", "Elephant", "Shark", "Giraffe"]
        ),
        QuestionCaptain57(
            question: "What is the freezing point of water in Celsius?",
            correctAnswer: "0",
            answerOptions: ["0", "32", "-1", "100"]
        ),
        QuestionCaptain57(
            question: "Which continent has the most countries?",
            correctAnswer: "Africa",
            answerOptions: ["Africa", "Asia", "Europe", "South America"]
        ),
        QuestionCaptain57(
            question: "Who is the author of '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["George Orwell", "Aldous Huxley", "F. Scott Fitzgerald", "Mark Twain"]
        ),
        QuestionCaptain57(
            question: "Which gas do plants absorb during photosynthesis?",
            correctAnswer: "Carbon dioxide",
            answerOptions: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"]
        ),
        QuestionCaptain57(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Gold", "Iron", "Quartz"]
        ),
        QuestionCaptain57(
            question: "Which programming language is primarily used for Android development?",
            correctAnswer: "Kotlin",
            answerOptions: ["Kotlin", "Swift", "JavaScript", "Python"]
        ),
        QuestionCaptain57(
            question: "What is the name of the Greek god of the sea?",
            correctAnswer: "Poseidon",
            answerOptions: ["Poseidon", "Zeus", "Hades", "Apollo"]
        ),
        QuestionCaptain57(
            question: "What is the chemical formula for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "CO2", "O2", "CH4"]
        ),
        QuestionCaptain57(
            question: "In which sport would you perform a slam dunk?",
            correctAnswer: "Basketball",
            answerOptions: ["Basketball", "Baseball", "Soccer", "Tennis"]
        ),
        QuestionCaptain57(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Sahara", "Gobi", "Kalahari", "Arctic"]
        ),
        QuestionCaptain57(
            question: "What is the name of the closest star to Earth?",
            correctAnswer: "Sun",
            answerOptions: ["Sun", "Proxima Centauri", "Sirius", "Alpha Centauri"]
        ),
        QuestionCaptain57(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Au", "Ag", "Pb", "Fe"]
        ),
        QuestionCaptain57(
            question: "Who was the first President of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["George Washington", "Thomas Jefferson", "Abraham Lincoln", "John Adams"]
        ),
        QuestionCaptain57(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionCaptain57(
            question: "What is the main ingredient in traditional hummus?",
            correctAnswer: "Chickpeas",
            answerOptions: ["Chickpeas", "Lentils", "Beans", "Rice"]
        ),
        QuestionCaptain57(
            question: "Which artist is known for cutting off his own ear?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Vincent van Gogh", "Pablo Picasso", "Claude Monet", "Salvador Dalí"]
        ),
        QuestionCaptain57(
            question: "What is the speed of light?",
            correctAnswer: "299,792 km/s",
            answerOptions: ["299,792 km/s", "150,000 km/s", "1,080 km/s", "3,000 km/s"]
        ),
        QuestionCaptain57(
            question: "Which language has the most native speakers?",
            correctAnswer: "Mandarin Chinese",
            answerOptions: ["Mandarin Chinese", "English", "Spanish", "Hindi"]
        ),
        QuestionCaptain57(
            question: "What is the currency of Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yen", "Won", "Dollar", "Euro"]
        ),
        QuestionCaptain57(
            question: "Who discovered penicillin?",
            correctAnswer: "Alexander Fleming",
            answerOptions: ["Alexander Fleming", "Marie Curie", "Louis Pasteur", "Gregor Mendel"]
        ),
        QuestionCaptain57(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Everest", "K2", "Kangchenjunga", "Makalu"]
        ),
        QuestionCaptain57(
            question: "Which Shakespeare play features the characters Romeo and Juliet?",
            correctAnswer: "Romeo and Juliet",
            answerOptions: ["Romeo and Juliet", "Hamlet", "Othello", "Macbeth"]
        ),
        QuestionCaptain57(
            question: "What is the primary ingredient in chocolate?",
            correctAnswer: "Cocoa beans",
            answerOptions: ["Cocoa beans", "Milk", "Sugar", "Vanilla"]
        ),
        QuestionCaptain57(
            question: "What is the national animal of Canada?",
            correctAnswer: "Beaver",
            answerOptions: ["Beaver", "Moose", "Bear", "Eagle"]
        ),
        QuestionCaptain57(
            question: "What is the largest organ in the human body?",
            correctAnswer: "Skin",
            answerOptions: ["Skin", "Liver", "Heart", "Lungs"]
        ),
        QuestionCaptain57(
            question: "Who is known as the father of modern physics?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Niels Bohr"]
        ),
        QuestionCaptain57(
            question: "What is the national dish of Italy?",
            correctAnswer: "Pizza",
            answerOptions: ["Pizza", "Pasta", "Lasagna", "Risotto"]
        ),
        QuestionCaptain57(
            question: "Which country hosted the first Olympic Games?",
            correctAnswer: "Greece",
            answerOptions: ["Greece", "Italy", "France", "Japan"]
        ),
        QuestionCaptain57(
            question: "What is the study of stars and planets called?",
            correctAnswer: "Astronomy",
            answerOptions: ["Astronomy", "Astrology", "Geology", "Meteorology"]
        ),
        QuestionCaptain57(
            question: "What is the hardest rock?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Granite", "Quartz", "Marble"]
        ),
        QuestionCaptain57(
            question: "Which country has the most time zones?",
            correctAnswer: "France",
            answerOptions: ["France", "USA", "Russia", "China"]
        ),
        QuestionCaptain57(
            question: "What is the smallest planet in our solar system?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Venus", "Mars", "Pluto"]
        ),
        QuestionCaptain57(
            question: "Who invented the telephone?",
            correctAnswer: "Alexander Graham Bell",
            answerOptions: ["Alexander Graham Bell", "Thomas Edison", "Nikola Tesla", "Guglielmo Marconi"]
        ),
        QuestionCaptain57(
            question: "What is the capital city of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Canberra", "Sydney", "Melbourne", "Brisbane"]
        ),
        QuestionCaptain57(
            question: "What is the name of the first artificial satellite launched into space?",
            correctAnswer: "Sputnik 1",
            answerOptions: ["Sputnik 1", "Apollo 11", "Vostok 1", "Explorer 1"]
        ),
        QuestionCaptain57(
            question: "What is the process by which plants make their own food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Photosynthesis", "Respiration", "Fermentation", "Digestion"]
        ),
        QuestionCaptain57(
            question: "Which city is known as the Big Apple?",
            correctAnswer: "New York City",
            answerOptions: ["New York City", "Los Angeles", "Chicago", "Miami"]
        ),
        QuestionCaptain57(
            question: "What is the primary gas found in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Helium"]
        ),
        QuestionCaptain57(
            question: "Who painted 'The Starry Night'?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Vincent van Gogh", "Claude Monet", "Pablo Picasso", "Salvador Dalí"]
        ),
        QuestionCaptain57(
            question: "What is the square root of 144?",
            correctAnswer: "12",
            answerOptions: ["12", "10", "14", "16"]
        ),
        QuestionCaptain57(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Nile", "Amazon", "Yangtze", "Mississippi"]
        ),
        QuestionCaptain57(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Ottawa", "Toronto", "Vancouver", "Montreal"]
        ),
        QuestionCaptain57(
            question: "Which element is used in thermometers?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Lead", "Iron", "Silver"]
        ),
        QuestionCaptain57(
            question: "What is the national flower of Japan?",
            correctAnswer: "Cherry Blossom",
            answerOptions: ["Cherry Blossom", "Rose", "Lotus", "Orchid"]
        ),
        QuestionCaptain57(
            question: "Who is the author of 'Harry Potter'?",
            correctAnswer: "J.K. Rowling",
            answerOptions: ["J.K. Rowling", "J.R.R. Tolkien", "George R.R. Martin", "Suzanne Collins"]
        ),
        QuestionCaptain57(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Stapes", "Femur", "Humerus", "Clavicle"]
        ),
        QuestionCaptain57(
            question: "Which metal is most commonly used in electrical wiring?",
            correctAnswer: "Copper",
            answerOptions: ["Copper", "Aluminum", "Iron", "Silver"]
        ),
        QuestionCaptain57(
            question: "What is the currency of the United Kingdom?",
            correctAnswer: "Pound Sterling",
            answerOptions: ["Pound Sterling", "Euro", "Dollar", "Yen"]
        ),
        QuestionCaptain57(
            question: "Which planet has the most moons?",
            correctAnswer: "Saturn",
            answerOptions: ["Saturn", "Jupiter", "Mars", "Uranus"]
        ),
        QuestionCaptain57(
            question: "What is the national sport of Canada?",
            correctAnswer: "Ice Hockey",
            answerOptions: ["Ice Hockey", "Lacrosse", "Baseball", "Soccer"]
        ),
        QuestionCaptain57(
            question: "What is the most consumed beverage in the world?",
            correctAnswer: "Water",
            answerOptions: ["Water", "Tea", "Coffee", "Soda"]
        ),
        QuestionCaptain57(
            question: "Who discovered gravity by observing a falling apple?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Nicolaus Copernicus"]
        ),
        QuestionCaptain57(
            question: "What is the tallest building in the world?",
            correctAnswer: "Burj Khalifa",
            answerOptions: ["Burj Khalifa", "Shanghai Tower", "Empire State Building", "Eiffel Tower"]
        ),
        QuestionCaptain57(
            question: "What is the name of the ship that sank in 1912 on its maiden voyage?",
            correctAnswer: "Titanic",
            answerOptions: ["Titanic", "Britannic", "Olympic", "Queen Mary"]
        ),
        QuestionCaptain57(
            question: "What is the term for animals that eat both plants and meat?",
            correctAnswer: "Omnivores",
            answerOptions: ["Omnivores", "Carnivores", "Herbivores", "Insectivores"]
        ),
        QuestionCaptain57(
            question: "What is the chemical symbol for iron?",
            correctAnswer: "Fe",
            answerOptions: ["Fe", "Ir", "In", "I"]
        ),
        QuestionCaptain57(
            question: "Which scientist is known for the laws of motion?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Stephen Hawking"]
        ),
        QuestionCaptain57(
            question: "What is the most widely spoken language in the world?",
            correctAnswer: "English",
            answerOptions: ["English", "Mandarin", "Spanish", "Hindi"]
        ),
        QuestionCaptain57(
            question: "Which country is famous for the Eiffel Tower?",
            correctAnswer: "France",
            answerOptions: ["France", "Italy", "Germany", "Spain"]
        ),
        QuestionCaptain57(
            question: "Which musical instrument has 88 keys?",
            correctAnswer: "Piano",
            answerOptions: ["Piano", "Guitar", "Violin", "Flute"]
        ),
        QuestionCaptain57(
            question: "Which planet is known for its rings?",
            correctAnswer: "Saturn",
            answerOptions: ["Saturn", "Jupiter", "Uranus", "Neptune"]
        ),
        QuestionCaptain57(
            question: "What is the longest bone in the human body?",
            correctAnswer: "Femur",
            answerOptions: ["Femur", "Humerus", "Tibia", "Radius"]
        ),
        QuestionCaptain57(
            question: "Which element has the chemical symbol O?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Gold", "Silver", "Carbon"]
        ),
        QuestionCaptain57(
            question: "Who wrote the play 'Hamlet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Charles Dickens", "Jane Austen", "George Orwell"]
        ),
        QuestionCaptain57(
            question: "What is the capital city of Spain?",
            correctAnswer: "Madrid",
            answerOptions: ["Madrid", "Barcelona", "Seville", "Valencia"]
        ),
        QuestionCaptain57(
            question: "What is the largest island in the world?",
            correctAnswer: "Greenland",
            answerOptions: ["Greenland", "Australia", "Borneo", "Madagascar"]
        ),
        QuestionCaptain57(
            question: "What is the name of the Greek goddess of wisdom?",
            correctAnswer: "Athena",
            answerOptions: ["Athena", "Hera", "Aphrodite", "Artemis"]
        ),
        QuestionCaptain57(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Leonardo da Vinci", "Michelangelo", "Raphael", "Donatello"]
        ),
        QuestionCaptain57(
            question: "What is the name of the first man to step on the moon?",
            correctAnswer: "Neil Armstrong",
            answerOptions: ["Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin", "John Glenn"]
        ),
        QuestionCaptain57(
            question: "What is the chemical symbol for sodium?",
            correctAnswer: "Na",
            answerOptions: ["Na", "S", "N", "Sn"]
        ),
        QuestionCaptain57(
            question: "What is the smallest country in the world?",
            correctAnswer: "Vatican City",
            answerOptions: ["Vatican City", "Monaco", "San Marino", "Liechtenstein"]
        ),
        QuestionCaptain57(
            question: "Which ocean is the deepest?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionCaptain57(
            question: "Which organ is responsible for pumping blood in the human body?",
            correctAnswer: "Heart",
            answerOptions: ["Heart", "Liver", "Lungs", "Kidneys"]
        ),
        QuestionCaptain57(
            question: "What is the primary component of the sun?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Helium", "Oxygen", "Carbon"]
        ),
        QuestionCaptain57(
            question: "What is the national language of India?",
            correctAnswer: "Hindi",
            answerOptions: ["Hindi", "English", "Bengali", "Tamil"]
        ),
        QuestionCaptain57(
            question: "What is the capital of Russia?",
            correctAnswer: "Moscow",
            answerOptions: ["Moscow", "St. Petersburg", "Kazan", "Sochi"]
        ),
        QuestionCaptain57(
            question: "Which country is known for inventing pasta?",
            correctAnswer: "Italy",
            answerOptions: ["Italy", "China", "France", "Spain"]
        ),
        QuestionCaptain57(
            question: "What is the boiling point of water in Celsius?",
            correctAnswer: "100",
            answerOptions: ["100", "0", "50", "212"]
        ),
        QuestionCaptain57(
            question: "Which gas is most abundant in the Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Helium"]
        ),
        QuestionCaptain57(
            question: "Who wrote 'Pride and Prejudice'?",
            correctAnswer: "Jane Austen",
            answerOptions: ["Jane Austen", "Charlotte Brontë", "Emily Brontë", "Mary Shelley"]
        ),
        QuestionCaptain57(
            question: "What is the tallest tree species in the world?",
            correctAnswer: "Coast Redwood",
            answerOptions: ["Coast Redwood", "Douglas Fir", "Giant Sequoia", "Banyan"]
        ),
        QuestionCaptain57(
            question: "What is the hardest naturally occurring substance?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Quartz", "Graphite", "Topaz"]
        ),
        QuestionCaptain57(
            question: "Who is known as the 'Father of Computers'?",
            correctAnswer: "Charles Babbage",
            answerOptions: ["Charles Babbage", "Alan Turing", "John von Neumann", "Bill Gates"]
        ),
        QuestionCaptain57(
            question: "What is the most populous country in the world?",
            correctAnswer: "China",
            answerOptions: ["China", "India", "USA", "Indonesia"]
        ),
        QuestionCaptain57(
            question: "Which instrument measures earthquakes?",
            correctAnswer: "Seismograph",
            answerOptions: ["Seismograph", "Thermometer", "Barometer", "Hygrometer"]
        ),
        QuestionCaptain57(
            question: "Which continent is known as the 'Dark Continent'?",
            correctAnswer: "Africa",
            answerOptions: ["Africa", "Asia", "South America", "Antarctica"]
        ),
        QuestionCaptain57(
            question: "What is the study of rocks called?",
            correctAnswer: "Geology",
            answerOptions: ["Geology", "Ecology", "Meteorology", "Archaeology"]
        ),
        QuestionCaptain57(
            question: "Who was the first woman to win a Nobel Prize?",
            correctAnswer: "Marie Curie",
            answerOptions: ["Marie Curie", "Florence Nightingale", "Jane Goodall", "Ada Lovelace"]
        ),
        QuestionCaptain57(
            question: "What is the largest type of whale?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Blue Whale", "Humpback Whale", "Sperm Whale", "Orca"]
        ),
        // Географія
        QuestionCaptain57(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Nile", "Amazon", "Yangtze", "Mississippi"]
        ),
        QuestionCaptain57(
            question: "Which country is home to the Great Barrier Reef?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "USA", "Canada", "New Zealand"]
        ),
        QuestionCaptain57(
            question: "Which desert is the largest in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Sahara", "Gobi", "Kalahari", "Atacama"]
        ),
        
        // Культура
        QuestionCaptain57(
            question: "Which artist is known for the painting 'The Starry Night'?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Vincent van Gogh", "Pablo Picasso", "Claude Monet", "Salvador Dalí"]
        ),
        QuestionCaptain57(
            question: "Who is the famous author of '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["George Orwell", "Aldous Huxley", "Ray Bradbury", "Kurt Vonnegut"]
        ),
        QuestionCaptain57(
            question: "Which movie won the Academy Award for Best Picture in 1994?",
            correctAnswer: "Forrest Gump",
            answerOptions: ["Forrest Gump", "The Shawshank Redemption", "Pulp Fiction", "The Lion King"]
        ),
        
        // Математика
        QuestionCaptain57(
            question: "What is the value of pi to two decimal places?",
            correctAnswer: "3.14",
            answerOptions: ["3.14", "3.15", "3.13", "3.16"]
        ),
        QuestionCaptain57(
            question: "What is the sum of the angles in a triangle?",
            correctAnswer: "180 degrees",
            answerOptions: ["180 degrees", "90 degrees", "360 degrees", "270 degrees"]
        ),
        
        // Астрономія
        QuestionCaptain57(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Earth", "Mercury"]
        ),
        QuestionCaptain57(
            question: "What is the closest star to Earth?",
            correctAnswer: "The Sun",
            answerOptions: ["The Sun", "Alpha Centauri", "Sirius", "Betelgeuse"]
        ),
        
        // Спорт
        QuestionCaptain57(
            question: "Which country won the 2008 Summer Olympics?",
            correctAnswer: "China",
            answerOptions: ["China", "USA", "Russia", "Germany"]
        ),
        QuestionCaptain57(
            question: "In which sport would you perform a slam dunk?",
            correctAnswer: "Basketball",
            answerOptions: ["Basketball", "Football", "Baseball", "Volleyball"]
        ),
        
        // Наука
        QuestionCaptain57(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Gold", "Iron", "Platinum"]
        ),
        QuestionCaptain57(
            question: "What is the chemical symbol for carbon?",
            correctAnswer: "C",
            answerOptions: ["C", "Ca", "Co", "Cl"]
        ),
        
        // Мови
        QuestionCaptain57(
            question: "Which language has the most native speakers?",
            correctAnswer: "Mandarin",
            answerOptions: ["Mandarin", "Spanish", "English", "Hindi"]
        ),
        QuestionCaptain57(
            question: "What is the official language of Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Portuguese", "Spanish", "English", "French"]
        ),
        
        // Технології
        QuestionCaptain57(
            question: "Which company developed the Android operating system?",
            correctAnswer: "Google",
            answerOptions: ["Google", "Apple", "Microsoft", "Samsung"]
        ),
        QuestionCaptain57(
            question: "Which technology is used in most modern touchscreens?",
            correctAnswer: "Capacitive",
            answerOptions: ["Capacitive", "Resistive", "Optical", "Infrared"]
        ),
        
        // Люди
        QuestionCaptain57(
            question: "Who is the first woman to fly solo across the Atlantic Ocean?",
            correctAnswer: "Amelia Earhart",
            answerOptions: ["Amelia Earhart", "Bessie Coleman", "Harriet Quimby", "Jacqueline Cochran"]
        ),
        QuestionCaptain57(
            question: "Which famous scientist developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Nikola Tesla", "Galileo Galilei"]
        ),
        
        // Кулінарія
        QuestionCaptain57(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Avocado", "Tomato", "Cucumber", "Onion"]
        ),
        QuestionCaptain57(
            question: "What is sushi traditionally wrapped in?",
            correctAnswer: "Nori",
            answerOptions: ["Nori", "Lettuce", "Cabbage", "Spinach"]
        ),
        
        // Тварини
        QuestionCaptain57(
            question: "What animal is known for its ability to change color?",
            correctAnswer: "Chameleon",
            answerOptions: ["Chameleon", "Octopus", "Cuttlefish", "Squid"]
        ),
        QuestionCaptain57(
            question: "Which animal is the largest mammal on Earth?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Blue Whale", "African Elephant", "Giraffe", "Polar Bear"]
        ),
        QuestionCaptain57(
            question: "What is the national flower of France?",
            correctAnswer: "Lily",
            answerOptions: ["Lily", "Rose", "Tulip", "Daisy"]
        ),
        QuestionCaptain57(
            question: "Who was the first man to fly in space?",
            correctAnswer: "Yuri Gagarin",
            answerOptions: ["Yuri Gagarin", "Neil Armstrong", "Buzz Aldrin", "Alan Shepard"]
        ),
        QuestionCaptain57(
            question: "Which planet is closest to the Sun?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Venus", "Earth", "Mars"]
        ),
        QuestionCaptain57(
            question: "Which bird is known for its ability to mimic sounds?",
            correctAnswer: "Mockingbird",
            answerOptions: ["Mockingbird", "Parrot", "Crow", "Eagle"]
        ),
        QuestionCaptain57(
            question: "Which country is the largest producer of coffee?",
            correctAnswer: "Brazil",
            answerOptions: ["Brazil", "Colombia", "Vietnam", "Ethiopia"]
        ),
        QuestionCaptain57(
            question: "Which is the longest running Broadway show?",
            correctAnswer: "The Phantom of the Opera",
            answerOptions: ["The Phantom of the Opera", "Cats", "Les Misérables", "Hamilton"]
        ),
        QuestionCaptain57(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Ottawa", "Toronto", "Vancouver", "Montreal"]
        ),
        QuestionCaptain57(
            question: "Which ocean is the largest?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Arctic Ocean"]
        ),
        QuestionCaptain57(
            question: "What is the tallest mountain in North America?",
            correctAnswer: "Denali",
            answerOptions: ["Denali", "Mount Hood", "Mount McKinley", "Mount Whitney"]
        ),
        QuestionCaptain57(
            question: "Which element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Helium", "Lithium", "Oxygen"]
        ),
        QuestionCaptain57(
            question: "Which country is the largest by land area?",
            correctAnswer: "Russia",
            answerOptions: ["Russia", "Canada", "USA", "China"]
        ),
        QuestionCaptain57(
            question: "Who painted 'The Persistence of Memory'?",
            correctAnswer: "Salvador Dalí",
            answerOptions: ["Salvador Dalí", "Pablo Picasso", "Vincent van Gogh", "Claude Monet"]
        ),
        QuestionCaptain57(
            question: "What is the smallest planet in our solar system?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Mars", "Venus", "Earth"]
        ),
        QuestionCaptain57(
            question: "What is the longest river in South America?",
            correctAnswer: "Amazon River",
            answerOptions: ["Amazon River", "Paraná River", "Orinoco River", "Madeira River"]
        ),
        QuestionCaptain57(
            question: "What is the most abundant gas in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Nitrogen", "Oxygen", "Carbon Dioxide", "Argon"]
        ),
        QuestionCaptain57(
            question: "Who was the first woman in space?",
            correctAnswer: "Valentina Tereshkova",
            answerOptions: ["Valentina Tereshkova", "Sally Ride", "Mae Jemison", "Yuri Gagarin"]
        ),
        QuestionCaptain57(
            question: "What is the most common blood type?",
            correctAnswer: "O positive",
            answerOptions: ["O positive", "A positive", "B negative", "AB positive"]
        ),
        QuestionCaptain57(
            question: "Which country invented the concept of democracy?",
            correctAnswer: "Greece",
            answerOptions: ["Greece", "Rome", "France", "United States"]
        ),
        QuestionCaptain57(
            question: "Which gas do plants absorb during photosynthesis?",
            correctAnswer: "Carbon dioxide",
            answerOptions: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"]
        ),
        QuestionCaptain57(
            question: "Which bird is known for its distinctive red breast?",
            correctAnswer: "Robin",
            answerOptions: ["Robin", "Cardinal", "Blue Jay", "Finch"]
        ),
        QuestionCaptain57(
            question: "What is the capital of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Canberra", "Sydney", "Melbourne", "Brisbane"]
        ),
        QuestionCaptain57(
            question: "Which planet is known as the 'Giant Planet'?",
            correctAnswer: "Jupiter",
            answerOptions: ["Jupiter", "Saturn", "Neptune", "Uranus"]
        ),
        QuestionCaptain57(
            question: "Who invented the telephone?",
            correctAnswer: "Alexander Graham Bell",
            answerOptions: ["Alexander Graham Bell", "Thomas Edison", "Nikola Tesla", "Guglielmo Marconi"]
        ),
        QuestionCaptain57(
            question: "Which ocean is the warmest?",
            correctAnswer: "Indian Ocean",
            answerOptions: ["Indian Ocean", "Atlantic Ocean", "Pacific Ocean", "Arctic Ocean"]
        ),
        QuestionCaptain57(
            question: "What is the name of the famous wizarding school in Harry Potter?",
            correctAnswer: "Hogwarts",
            answerOptions: ["Hogwarts", "Beauxbatons", "Durmstrang", "Ilvermorny"]
        ),
        QuestionCaptain57(
            question: "What is the largest desert in the world?",
            correctAnswer: "Antarctic Desert",
            answerOptions: ["Antarctic Desert", "Sahara", "Gobi", "Kalahari"]
        ),
        QuestionCaptain57(
            question: "Which is the smallest country in the world?",
            correctAnswer: "Vatican City",
            answerOptions: ["Vatican City", "Monaco", "San Marino", "Liechtenstein"]
        ),
        QuestionCaptain57(
            question: "Which planet has the largest volcano in the solar system?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Earth", "Venus", "Jupiter"]
        ),
        QuestionCaptain57(
            question: "Which animal is known as the king of the jungle?",
            correctAnswer: "Lion",
            answerOptions: ["Lion", "Tiger", "Elephant", "Giraffe"]
        ),
        QuestionCaptain57(
            question: "Which vitamin is produced by the skin when exposed to sunlight?",
            correctAnswer: "Vitamin D",
            answerOptions: ["Vitamin D", "Vitamin C", "Vitamin A", "Vitamin B12"]
        ),
        QuestionCaptain57(
            question: "Which sea is the largest in the world?",
            correctAnswer: "Philippine Sea",
            answerOptions: ["Philippine Sea", "South China Sea", "Caribbean Sea", "Mediterranean Sea"]
        ),
        QuestionCaptain57(
            question: "What is the name of the first man-made satellite?",
            correctAnswer: "Sputnik 1",
            answerOptions: ["Sputnik 1", "Apollo 11", "Explorer 1", "Hubble Space Telescope"]
        ),
        QuestionCaptain57(
            question: "What is the main ingredient in a traditional Japanese dish sushi?",
            correctAnswer: "Rice",
            answerOptions: ["Rice", "Fish", "Seaweed", "Tofu"]
        ),
        QuestionCaptain57(
            question: "What was the first artificial element to be created?",
            correctAnswer: "Technetium",
            answerOptions: ["Technetium", "Plutonium", "Uranium", "Radium"]
        ),
        QuestionCaptain57(
            question: "What is the deepest part of the world's oceans?",
            correctAnswer: "Mariana Trench",
            answerOptions: ["Mariana Trench", "Challenger Deep", "Puerto Rico Trench", "Java Trench"]
        ),
        QuestionCaptain57(
            question: "Which animal can live both in water and on land?",
            correctAnswer: "Amphibians",
            answerOptions: ["Amphibians", "Reptiles", "Mammals", "Fish"]
        ),
        QuestionCaptain57(
            question: "What is the currency of Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yen", "Won", "Rupee", "Peso"]
        ),
        QuestionCaptain57(
            question: "Which country is known as the land of the rising sun?",
            correctAnswer: "Japan",
            answerOptions: ["Japan", "China", "South Korea", "India"]
        ),
        QuestionCaptain57(
            question: "What is the largest species of shark?",
            correctAnswer: "Whale Shark",
            answerOptions: ["Whale Shark", "Great White Shark", "Hammerhead Shark", "Mako Shark"]
        ),
        QuestionCaptain57(
            question: "Who invented the lightbulb?",
            correctAnswer: "Thomas Edison",
            answerOptions: ["Thomas Edison", "Nikola Tesla", "Alexander Graham Bell", "George Washington Carver"]
        ),
        QuestionCaptain57(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Earth", "Jupiter"]
        ),
        QuestionCaptain57(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Diamond", "Graphite", "Gold", "Platinum"]
        ),
        QuestionCaptain57(
            question: "What is the name of the process plants use to make food from sunlight?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Photosynthesis", "Respiration", "Fermentation", "Digestion"]
        ),
        QuestionCaptain57(
            question: "Which is the longest river in the world?",
            correctAnswer: "Nile River",
            answerOptions: ["Nile River", "Amazon River", "Yangtze River", "Mississippi River"]
        ),
        QuestionCaptain57(
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Tokyo", "Kyoto", "Osaka", "Hokkaido"]
        ),
        QuestionCaptain57(
            question: "What is the largest continent on Earth?",
            correctAnswer: "Asia",
            answerOptions: ["Asia", "Africa", "Europe", "North America"]
        ),
        QuestionCaptain57(
            question: "What is the only mammal capable of flight?",
            correctAnswer: "Bat",
            answerOptions: ["Bat", "Bird", "Flying Squirrel", "Flying Fish"]
        ),
        QuestionCaptain57(
            question: "What is the most common type of rock on Earth's surface?",
            correctAnswer: "Sedimentary Rock",
            answerOptions: ["Sedimentary Rock", "Igneous Rock", "Metamorphic Rock", "Volcanic Rock"]
        ),
        QuestionCaptain57(
            question: "Which is the fastest bird in the world?",
            correctAnswer: "Peregrine Falcon",
            answerOptions: ["Peregrine Falcon", "Golden Eagle", "Bald Eagle", "Albatross"]
        ),
        QuestionCaptain57(
            question: "What is the capital of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Rome", "Milan", "Florence", "Venice"]
        ),
        QuestionCaptain57(
            question: "What is the most famous statue in Brazil?",
            correctAnswer: "Christ the Redeemer",
            answerOptions: ["Christ the Redeemer", "David", "The Thinker", "Liberty"]
        ),
        QuestionCaptain57(
            question: "Which element is the most abundant in the Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Silicon", "Iron", "Aluminum"]
        ),
        QuestionCaptain57(
            question: "What is the capital of Egypt?",
            correctAnswer: "Cairo",
            answerOptions: ["Cairo", "Alexandria", "Giza", "Luxor"]
        ),
        QuestionCaptain57(
            question: "What is the primary ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Avocado", "Tomato", "Cucumber", "Onion"]
        ),
        QuestionCaptain57(
            question: "What is the capital of Brazil?",
            correctAnswer: "Brasília",
            answerOptions: ["Brasília", "Rio de Janeiro", "São Paulo", "Salvador"]
        ),
        QuestionCaptain57(
            question: "What is the only continent without a native human population?",
            correctAnswer: "Antarctica",
            answerOptions: ["Antarctica", "Australia", "Africa", "North America"]
        ),
        QuestionCaptain57(
            question: "Who is the author of 'The Catcher in the Rye'?",
            correctAnswer: "J.D. Salinger",
            answerOptions: ["J.D. Salinger", "Ernest Hemingway", "F. Scott Fitzgerald", "George Orwell"]
        ),
        QuestionCaptain57(
            question: "Which animal is known for being the largest land mammal?",
            correctAnswer: "African Elephant",
            answerOptions: ["African Elephant", "White Rhinoceros", "Giraffe", "Hippopotamus"]
        ),
        QuestionCaptain57(
            question: "What is the capital of the United States?",
            correctAnswer: "Washington, D.C.",
            answerOptions: ["Washington, D.C.", "New York", "Los Angeles", "Chicago"]
        ),
        QuestionCaptain57(
            question: "What is the largest volcano in the world?",
            correctAnswer: "Mauna Loa",
            answerOptions: ["Mauna Loa", "Mount Everest", "Mount Fuji", "Mount Kilimanjaro"]
        ),
        QuestionCaptain57(
            question: "What is the most popular sport in the world?",
            correctAnswer: "Soccer",
            answerOptions: ["Soccer", "Basketball", "Cricket", "Tennis"]
        ),
        QuestionCaptain57(
            question: "What is the national dish of Spain?",
            correctAnswer: "Paella",
            answerOptions: ["Paella", "Tacos", "Pizza", "Sushi"]
        ),
        QuestionCaptain57(
            question: "Which country is the birthplace of pizza?",
            correctAnswer: "Italy",
            answerOptions: ["Italy", "USA", "France", "Greece"]
        ),
        QuestionCaptain57(
            question: "Which country has the longest coastline in the world?",
            correctAnswer: "Canada",
            answerOptions: ["Canada", "Russia", "Australia", "United States"]
        ),
        QuestionCaptain57(
            question: "What is the tallest animal in the world?",
            correctAnswer: "Giraffe",
            answerOptions: ["Giraffe", "Elephant", "Camel", "Kangaroo"]
        ),
        QuestionCaptain57(
            question: "Which fruit is known for being the longest in the world?",
            correctAnswer: "Banana",
            answerOptions: ["Banana", "Watermelon", "Pineapple", "Mango"]
        ),
        QuestionCaptain57(
            question: "Which country is home to the Great Barrier Reef?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "United States", "South Africa", "Mexico"]
        ),
        QuestionCaptain57(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Paris", "London", "Berlin", "Madrid"]
        ),
        QuestionCaptain57(
            question: "What is the value of Pi to two decimal places?",
            correctAnswer: "3.14",
            answerOptions: ["3.14", "3.15", "3.141", "3.12"]
        ),
        QuestionCaptain57(
            question: "What is the square root of 144?",
            correctAnswer: "12",
            answerOptions: ["12", "14", "16", "10"]
        ),
        QuestionCaptain57(
            question: "What is 15% of 200?",
            correctAnswer: "30",
            answerOptions: ["30", "25", "40", "35"]
        ),
        QuestionCaptain57(
            question: "What is 8 times 9?",
            correctAnswer: "72",
            answerOptions: ["72", "81", "63", "64"]
        ),
        QuestionCaptain57(
            question: "What is 100 divided by 5?",
            correctAnswer: "20",
            answerOptions: ["20", "15", "25", "30"]
        ),
        QuestionCaptain57(
            question: "What is the result of 12 squared?",
            correctAnswer: "144",
            answerOptions: ["144", "121", "100", "169"]
        ),
        QuestionCaptain57(
            question: "If a triangle has two equal sides, what type of triangle is it?",
            correctAnswer: "Isosceles",
            answerOptions: ["Isosceles", "Equilateral", "Scalene", "Right"]
        ),
        QuestionCaptain57(
            question: "What is the sum of the angles in a triangle?",
            correctAnswer: "180 degrees",
            answerOptions: ["180 degrees", "90 degrees", "360 degrees", "270 degrees"]
        ),
        QuestionCaptain57(
            question: "What is the perimeter of a rectangle with length 5 and width 3?",
            correctAnswer: "16",
            answerOptions: ["16", "15", "14", "18"]
        ),
        QuestionCaptain57(
            question: "What is the area of a circle with radius 7?",
            correctAnswer: "153.94",
            answerOptions: ["153.94", "140.56", "160.10", "180.50"]
        ),
        QuestionCaptain57(
            question: "What is the value of 2 to the power of 5?",
            correctAnswer: "32",
            answerOptions: ["32", "64", "16", "8"]
        ),
        QuestionCaptain57(
            question: "What is the greatest common divisor of 18 and 24?",
            correctAnswer: "6",
            answerOptions: ["6", "8", "4", "2"]
        ),
        QuestionCaptain57(
            question: "What is the product of 7 and 6?",
            correctAnswer: "42",
            answerOptions: ["42", "48", "56", "36"]
        ),
        QuestionCaptain57(
            question: "If x + 3 = 10, what is x?",
            correctAnswer: "7",
            answerOptions: ["7", "6", "5", "8"]
        ),
        QuestionCaptain57(
            question: "What is the result of 25 divided by 5?",
            correctAnswer: "5",
            answerOptions: ["5", "6", "4", "3"]
        ),
        QuestionCaptain57(
            question: "What is the value of 9 cubed?",
            correctAnswer: "729",
            answerOptions: ["729", "81", "512", "243"]
        ),
        QuestionCaptain57(
            question: "What is 50% of 80?",
            correctAnswer: "40",
            answerOptions: ["40", "30", "50", "60"]
        ),
        QuestionCaptain57(
            question: "What is the square of 13?",
            correctAnswer: "169",
            answerOptions: ["169", "144", "121", "100"]
        ),
        QuestionCaptain57(
            question: "What is the sum of 8, 12, and 20?",
            correctAnswer: "40",
            answerOptions: ["40", "42", "39", "44"]
        ),
        QuestionCaptain57(
            question: "What is the cube root of 27?",
            correctAnswer: "3",
            answerOptions: ["3", "4", "5", "2"]
        ),
        QuestionCaptain57(
            question: "What is the result of 10 + 6 x 2?",
            correctAnswer: "22",
            answerOptions: ["22", "20", "18", "24"]
        ),
        QuestionCaptain57(
            question: "What is 5 to the power of 4?",
            correctAnswer: "625",
            answerOptions: ["625", "500", "750", "600"]
        ),
        QuestionCaptain57(
            question: "What is the hypotenuse of a right triangle with sides 3 and 4?",
            correctAnswer: "5",
            answerOptions: ["5", "6", "7", "8"]
        ),
        QuestionCaptain57(
            question: "What is the factorial of 4 (4!)?",
            correctAnswer: "24",
            answerOptions: ["24", "12", "18", "20"]
        ),
        QuestionCaptain57(
            question: "If 3x = 18, what is the value of x?",
            correctAnswer: "6",
            answerOptions: ["6", "5", "4", "7"]
        ),
        QuestionCaptain57(
            question: "Who was the first president of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["George Washington", "Abraham Lincoln", "Thomas Jefferson", "John Adams"]
        ),
        QuestionCaptain57(
            question: "In which year did the Titanic sink?",
            correctAnswer: "1912",
            answerOptions: ["1912", "1905", "1923", "1898"]
        ),
        QuestionCaptain57(
            question: "Who was the first emperor of China?",
            correctAnswer: "Qin Shi Huang",
            answerOptions: ["Qin Shi Huang", "Kublai Khan", "Sun Yat-sen", "Wudi"]
        ),
        QuestionCaptain57(
            question: "What year did World War II end?",
            correctAnswer: "1945",
            answerOptions: ["1945", "1944", "1939", "1950"]
        ),
        QuestionCaptain57(
            question: "Who was the leader of the Soviet Union during World War II?",
            correctAnswer: "Joseph Stalin",
            answerOptions: ["Joseph Stalin", "Vladimir Lenin", "Leon Trotsky", "Mikhail Gorbachev"]
        ),
        QuestionCaptain57(
            question: "Which country did Napoleon Bonaparte rule?",
            correctAnswer: "France",
            answerOptions: ["France", "Italy", "Spain", "Germany"]
        ),
        QuestionCaptain57(
            question: "Who discovered America in 1492?",
            correctAnswer: "Christopher Columbus",
            answerOptions: ["Christopher Columbus", "Ferdinand Magellan", "Marco Polo", "Leif Erikson"]
        ),
        QuestionCaptain57(
            question: "In which city was the Declaration of Independence signed?",
            correctAnswer: "Philadelphia",
            answerOptions: ["Philadelphia", "New York", "Boston", "Washington D.C."]
        ),
        QuestionCaptain57(
            question: "What year did the Berlin Wall fall?",
            correctAnswer: "1989",
            answerOptions: ["1989", "1979", "1991", "1985"]
        ),
        QuestionCaptain57(
            question: "Who was the first woman to fly solo across the Atlantic Ocean?",
            correctAnswer: "Amelia Earhart",
            answerOptions: ["Amelia Earhart", "Bessie Coleman", "Harriet Quimby", "Jacqueline Cochran"]
        ),
        QuestionCaptain57(
            question: "Which ancient civilization built the pyramids of Giza?",
            correctAnswer: "Ancient Egyptians",
            answerOptions: ["Ancient Egyptians", "Ancient Romans", "Ancient Greeks", "Ancient Sumerians"]
        ),
        QuestionCaptain57(
            question: "Who was the last ruler of the Mughal Empire?",
            correctAnswer: "Bahadur Shah II",
            answerOptions: ["Bahadur Shah II", "Akbar the Great", "Shah Jahan", "Aurangzeb"]
        ),
        QuestionCaptain57(
            question: "Which empire was ruled by Julius Caesar?",
            correctAnswer: "Roman Empire",
            answerOptions: ["Roman Empire", "Ottoman Empire", "Byzantine Empire", "Mongol Empire"]
        ),
        QuestionCaptain57(
            question: "Who was the prime minister of the United Kingdom during World War II?",
            correctAnswer: "Winston Churchill",
            answerOptions: ["Winston Churchill", "Neville Chamberlain", "Margaret Thatcher", "David Cameron"]
        ),
        QuestionCaptain57(
            question: "What year did the French Revolution begin?",
            correctAnswer: "1789",
            answerOptions: ["1789", "1776", "1799", "1812"]
        ),
        QuestionCaptain57(
            question: "Who was the first czar of Russia?",
            correctAnswer: "Ivan the Terrible",
            answerOptions: ["Ivan the Terrible", "Peter the Great", "Catherine the Great", "Nicholas II"]
        ),
        QuestionCaptain57(
            question: "Which country was the first to grant women the right to vote?",
            correctAnswer: "New Zealand",
            answerOptions: ["New Zealand", "United States", "United Kingdom", "Switzerland"]
        ),
        QuestionCaptain57(
            question: "Who was the first emperor of Rome?",
            correctAnswer: "Augustus",
            answerOptions: ["Augustus", "Julius Caesar", "Nero", "Caligula"]
        ),
        QuestionCaptain57(
            question: "Which conflict was fought between the North and South in the United States?",
            correctAnswer: "American Civil War",
            answerOptions: ["American Civil War", "World War I", "World War II", "Vietnam War"]
        ),
        QuestionCaptain57(
            question: "Which event triggered the start of World War I?",
            correctAnswer: "Assassination of Archduke Franz Ferdinand",
            answerOptions: ["Assassination of Archduke Franz Ferdinand", "Invasion of Poland", "Attack on Pearl Harbor", "Treaty of Versailles"]
        ),
        QuestionCaptain57(
            question: "Who was the first king of the United Kingdom?",
            correctAnswer: "King James VI of Scotland",
            answerOptions: ["King James VI of Scotland", "Henry VIII", "Queen Elizabeth I", "Charles I"]
        ),
        QuestionCaptain57(
            question: "Who was the leader of the Confederate States during the American Civil War?",
            correctAnswer: "Jefferson Davis",
            answerOptions: ["Jefferson Davis", "Abraham Lincoln", "Robert E. Lee", "Ulysses S. Grant"]
        ),
        QuestionCaptain57(
            question: "What year did the Soviet Union collapse?",
            correctAnswer: "1991",
            answerOptions: ["1991", "1989", "1987", "1993"]
        ),
        QuestionCaptain57(
            question: "What is the unit of force in the International System of Units (SI)?",
            correctAnswer: "Newton",
            answerOptions: ["Newton", "Joule", "Pascal", "Watt"]
        ),
        QuestionCaptain57(
            question: "What is the speed of light in a vacuum?",
            correctAnswer: "299,792,458 meters per second",
            answerOptions: ["299,792,458 meters per second", "300,000,000 meters per second", "150,000,000 meters per second", "1,000,000 meters per second"]
        ),
        QuestionCaptain57(
            question: "What is the formula for calculating kinetic energy?",
            correctAnswer: "1/2 mv²",
            answerOptions: ["1/2 mv²", "mgh", "mv", "1/2 kx²"]
        ),
        QuestionCaptain57(
            question: "Who is known for the theory of general relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Niels Bohr", "Max Planck"]
        ),
        QuestionCaptain57(
            question: "What does the law of conservation of energy state?",
            correctAnswer: "Energy cannot be created or destroyed, only transformed.",
            answerOptions: ["Energy cannot be created or destroyed, only transformed.", "Energy is created from matter.", "Energy is destroyed in closed systems.", "Energy is a constant force."]
        ),
        QuestionCaptain57(
            question: "What is the term for the resistance of an object to a change in its state of motion?",
            correctAnswer: "Inertia",
            answerOptions: ["Inertia", "Momentum", "Force", "Work"]
        ),
        QuestionCaptain57(
            question: "Which particle is responsible for carrying the electromagnetic force?",
            correctAnswer: "Photon",
            answerOptions: ["Photon", "Electron", "Proton", "Neutron"]
        ),
        QuestionCaptain57(
            question: "What is the SI unit of electric current?",
            correctAnswer: "Ampere",
            answerOptions: ["Ampere", "Volt", "Ohm", "Coulomb"]
        ),
        QuestionCaptain57(
            question: "What is the principle behind a lever?",
            correctAnswer: "A small force can move a large load with a fulcrum.",
            answerOptions: ["A small force can move a large load with a fulcrum.", "It operates on the principle of acceleration.", "It works by converting energy into heat.", "It amplifies energy using a spring."]
        ),
        QuestionCaptain57(
            question: "What is the formula for calculating gravitational potential energy?",
            correctAnswer: "mgh",
            answerOptions: ["mgh", "1/2 mv²", "kx", "1/2 kx²"]
        ),
        QuestionCaptain57(
            question: "What is the term for the bending of light as it passes from one medium to another?",
            correctAnswer: "Refraction",
            answerOptions: ["Refraction", "Reflection", "Diffraction", "Absorption"]
        ),
        QuestionCaptain57(
            question: "What type of wave is light?",
            correctAnswer: "Electromagnetic wave",
            answerOptions: ["Electromagnetic wave", "Mechanical wave", "Sound wave", "Water wave"]
        ),
        QuestionCaptain57(
            question: "What is the fundamental particle of electricity?",
            correctAnswer: "Electron",
            answerOptions: ["Electron", "Proton", "Neutron", "Photon"]
        ),
        QuestionCaptain57(
            question: "What is the process by which a substance changes from a solid to a gas without becoming liquid?",
            correctAnswer: "Sublimation",
            answerOptions: ["Sublimation", "Evaporation", "Condensation", "Freezing"]
        ),
        QuestionCaptain57(
            question: "What is the law that describes the relationship between the pressure and volume of a gas?",
            correctAnswer: "Boyle's Law",
            answerOptions: ["Boyle's Law", "Charles' Law", "Avogadro's Law", "Newton's Law"]
        ),
        QuestionCaptain57(
            question: "What is the effect of increasing the temperature on the resistance of a conductor?",
            correctAnswer: "It increases the resistance.",
            answerOptions: ["It increases the resistance.", "It decreases the resistance.", "It has no effect.", "It creates superconductivity."]
        ),
        QuestionCaptain57(
            question: "What is the force that pulls objects toward the center of the Earth?",
            correctAnswer: "Gravity",
            answerOptions: ["Gravity", "Magnetism", "Friction", "Centrifugal force"]
        ),
        QuestionCaptain57(
            question: "Which law states that the force applied to an object is equal to its mass times its acceleration?",
            correctAnswer: "Newton's Second Law",
            answerOptions: ["Newton's Second Law", "Newton's First Law", "Newton's Third Law", "Law of Universal Gravitation"]
        ),
        QuestionCaptain57(
            question: "What is the unit of power in the SI system?",
            correctAnswer: "Watt",
            answerOptions: ["Watt", "Joule", "Newton", "Volt"]
        ),
        QuestionCaptain57(
            question: "What is the term for the rate of change of velocity?",
            correctAnswer: "Acceleration",
            answerOptions: ["Acceleration", "Speed", "Momentum", "Force"]
        ),
        QuestionCaptain57(
            question: "What is the formula for calculating the force of gravity between two masses?",
            correctAnswer: "F = G * (m1 * m2) / r²",
            answerOptions: ["F = G * (m1 * m2) / r²", "F = ma", "F = mv", "F = m * g"]
        ),
        QuestionCaptain57(
            question: "What is the phenomenon in which sound waves bend around obstacles?",
            correctAnswer: "Diffraction",
            answerOptions: ["Diffraction", "Reflection", "Refraction", "Absorption"]
        ),
        QuestionCaptain57(
            question: "What is the law of thermodynamics that states that energy cannot be created or destroyed?",
            correctAnswer: "First Law of Thermodynamics",
            answerOptions: ["First Law of Thermodynamics", "Second Law of Thermodynamics", "Third Law of Thermodynamics", "Zeroth Law of Thermodynamics"]
        )
    ]
}
