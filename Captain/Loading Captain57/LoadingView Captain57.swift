

import SwiftUI

struct LoadingViewSQ: View {
    @AppStorage("firstInApp") var firstInApp = true
    
    @Binding var showView: Bool
    @State var rotation: CGFloat = 0
    
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
        ZStack {
            VStack {
                Spacer()
                Image("loading 1")
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear, value: rotation)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 0.004, repeats: true) { timer in
                            guard showView else { timer.invalidate(); return }
                            
                            rotation += 1
                        }
                    }
                
                Text("Loading...")
                    .withFontCaptain57(size: 30, weight: .medium)
                    .padding(.bottom, 30)
            }.backgroundCaptain57(1)
            
            
            PrivacyViewCaptain57(showLoading: $showView)
                .opacity(firstInApp ? 1: 0)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    if !firstInApp {
                        showView = false
                    }
                }
            }
        }
    }
    
}

#Preview {
    LoadingViewSQ(showView: .constant(true))
}

