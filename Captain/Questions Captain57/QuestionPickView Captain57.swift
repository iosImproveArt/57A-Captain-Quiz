

import SwiftUI

struct QuestionPickViewCaptain57: View {
    
    
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
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFontCaptain57(size: 30.57, weight: .medium, color: .hex("FFFFFF"))
            
            VStack(spacing: isSECaptain57 ? 20: 60) {
                NavigationLink {
                    QuestionViewCaptain57(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewCaptain57(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewCaptain57(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewCaptain57(showLoadingCaptain57: false, selectedTabCaptain57: .quiz)
}
