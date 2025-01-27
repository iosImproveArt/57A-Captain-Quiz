

import SwiftUI

struct ContentViewCaptain57: View {
    @AppStorage("notificationsAvalible") var notificationsAvalible = true
    @State var showLoadingCaptain57 = true
    @State var selectedTabCaptain57: TabsCaptain57 = .quiz
    
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
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBarCaptain57
                        
                        switch selectedTabCaptain57 {
                        case .quiz:
                            QuestionPickViewCaptain57()
                        case .profile:
                            ProfileViewCaptain57()
                        case .facts:
                            FactsViewCaptain57()
                        case .questions:
                            QuestionsViewCaptain57()
                        }
                        tapBarCaptain57
                    }.backgroundCaptain57(2, padding: 0)
                }
            }
            
            LoadingViewSQ(showView: $showLoadingCaptain57)
                .opacity(showLoadingCaptain57 ? 1: 0)
                .onChange(of: showLoadingCaptain57) { newValue in
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
    
    private var topBarCaptain57: some View {
        HStack {
            NavigationLink {
                PrivacyViewCaptain57(showLoading: .constant(true), fromMainView: true)
            } label: {
                Text("Privacy policy")
                    .withFontCaptain57(size: 16, weight: .light, color: .hex("FFFFFF"))
            }
            
            Spacer()
            
            Button {
                notificationsAvalible.toggle()
                if notificationsAvalible {
                    NotificationManagerCaptain57.shared.createDailyNotification()
                } else {
                    NotificationManagerCaptain57.shared.removePendingNotificationsCaptain57()
                }
            } label: {
                Image("notification.label")
                    .grayscale(notificationsAvalible ? 0: 1)
            }
        }.padding(.horizontal)
    }
    
    private var tapBarCaptain57: some View {
        HStack {
            Button {
                selectedTabCaptain57 = .quiz
            } label: {
                Image("tab 1")
                    .renderingMode(selectedTabCaptain57 == .quiz ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTabCaptain57 = .profile
            } label: {
                Image("tab 2")
                    .renderingMode(selectedTabCaptain57 == .profile ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTabCaptain57 = .facts
            } label: {
                Image("tab 3")
                    .renderingMode(selectedTabCaptain57 == .facts ? .template: .original)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                selectedTabCaptain57 = .questions
            } label: {
                Image("tab 4")
                    .renderingMode(selectedTabCaptain57 == .questions ? .template: .original)
                    .foregroundStyle(.white)
            }
        }.padding(.horizontal, 40)
            .padding(.vertical)
            .padding(.bottom, 50)
            .background {
                Color.hex("FA832E")
                    .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            }
            .cornerRadius(41)
            .padding(.bottom, isSECaptain57 ? -50: -60)
    }
}

#Preview {
    ContentViewCaptain57(showLoadingCaptain57: false)
}

enum TabsCaptain57 {
    case quiz
    case profile
    case facts
    case questions
}


