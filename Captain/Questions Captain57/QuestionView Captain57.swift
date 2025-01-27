

import SwiftUI

struct QuestionViewCaptain57: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var vm: QuestionViewModelCaptain57
    
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
    
    
    
    init(type: GameTypeCaptain57) {
        _vm = StateObject(wrappedValue: QuestionViewModelCaptain57(typeOfGame: type))
    }
    
    var body: some View {
        VStack {
            topBarCaptain57
            Spacer()
            
            questionViewCaptain57()
            
            Spacer()
        }
        .backgroundCaptain57(2)
            .blur(radius: vm.showEnterViewCaptain57 ? 10: 0)
            .overlay {
                enterNameViewCaptain57
            }
            .blur(radius: vm.showFinishViewCaptain57 ? 10: 0)
            .overlay {
                if vm.typeOfGame == .oneP {
                    onePlayerWinViewCaptain57
                } else {
                    multWinViewCaptain57
                }
            }
            .animation(.easeInOut, value: vm.showFinishViewCaptain57)
    }
    
    private var enterNameViewCaptain57: some View {
        ZStack {
            Color.hex("2E2017")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.76)
            
            VStack {
                Spacer()
                
                Text("Player 2 name")
                    .withFontCaptain57(size: 30.57, weight: .medium)
                
                Image("namefield.label")
                    .overlay {
                        TextField("Your Name...", text: $vm.player2)
                            .withFontCaptain57(size: 18, weight: .semibold, color: .white)
                            .padding(.horizontal)
                            .onChange(of: vm.player2) { newValue in
                                if newValue.count > 15 {
                                    vm.player2.removeLast()
                                }
                            }
                    }
                
                Spacer()
                Button {
                    guard !vm.player2.isEmpty else { return }
                    withAnimation {
                        vm.showEnterViewCaptain57 = false
                    }
                } label: {
                    Image("button.bg")
                        .overlay {
                            Text("NEXT")
                                .withFontCaptain57(size: 18.6, weight: .regular)
                        }
                }
                
                Spacer()
            }
        }.opacity(vm.showEnterViewCaptain57 ? 1: 0)
    }
    
    private func questionViewCaptain57() -> some View {
        return VStack(spacing: isSECaptain57 ? 0: 25) {
            Spacer()
            Image("question.bg")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(minHeight: 150)
                 .overlay {
                     Text(vm.currentQuestionCaptain57.question)
                         .withFontCaptain57(size: isSECaptain57 ? 20: 22, weight: .semibold, color: .black)
                         .fixedSize(horizontal: false, vertical: true)
                         .padding(.horizontal, 40)
                         .padding(.vertical)
                         .multilineTextAlignment(.center)
                 }
            
            Spacer()
            
            
            VStack(spacing: isSECaptain57 ? 20: 30) {
                ForEach(Array(vm.currentQuestionCaptain57.answerOptions.enumerated()), id: \.element) { index, answer in
                    Button {
                        vm.answerTheQuestionCaptain57(answer: answer)
                    } label: {
                        Group {
                            if vm.answer.isEmpty || answer != vm.answer && answer != vm.currentQuestionCaptain57.correctAnswer {
                                Image("answer.bg")
                            } else if !vm.answer.isEmpty, answer == vm.currentQuestionCaptain57.correctAnswer {
                                Image("answer.bg.corect")
                            } else {
                                Image("answer.bg.wrong")
                            }
                        }.animation(.easeInOut, value: vm.questionNumberCaptain57)
                            .overlay {
                                HStack {
                                    Text("\(Character(UnicodeScalar(97 + index)!))".uppercased())
                                        .withFontCaptain57(size: 28, weight: .regular)
                                        .font(.system(size: 18, weight: .medium))
                                        .foregroundColor(.black)
                                        .padding(.leading, 15)
                                    
                                    Spacer()
                                    
                                    Text(answer)
                                        .withFontCaptain57(size: 18, weight: .medium, color: .black)
                                        .padding(.horizontal)
                                        .padding(.leading, 17)
                                    
                                    Spacer()
                                }.frame(maxWidth: .infinity)
                            }
                    }.disabled(!vm.answer.isEmpty)
                }
            }
            
            Spacer()
        }
    }
    
    private var topBarCaptain57: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image("arrow.back")
                }
                
                Spacer()
                
                if vm.typeOfGame == .oneP {
                    ForEach(1...3, id: \.self) { index in
                        Image("heart")
                            .grayscale(vm.heartCountCaptain57 < index ? 1: 0)
                            .animation(.easeInOut, value: vm.heartCountCaptain57)
                    }
                } else {
                    Text("\(vm.questionNumberCaptain57)/20")
                        .withFontCaptain57(size: 30, weight: .semibold)
                }
            }
            
            if vm.typeOfGame != .oneP {
                HStack {
                    VStack(spacing: 5) {
                        Text(vm.player1)
                            .withFontCaptain57(size: 21, weight: .bold, color: vm.questionNumberCaptain57 % 2 != 0 ? .hex("55E4A2"): .white)
                        
                        HStack {
                            Text("\(vm.player1RightAnswersCaptain57)/10")
                                .withFontCaptain57(size: 21, weight: .medium)
                            Image("corect.answer")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 25)
                        }
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 5) {
                        Text(vm.player2)
                            .withFontCaptain57(size: 21, weight: .bold, color: vm.questionNumberCaptain57 % 2 == 0 ? .hex("55E4A2"): .white)
                        
                        HStack {
                            Text("\(vm.player2RightAnswersCaptain57)/10")
                                .withFontCaptain57(size: 21, weight: .medium)
                            Image("corect.answer")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 25)
                        }
                    }
                }.padding(.top, 8)
            }
        }
    }
    
    private var onePlayerWinViewCaptain57: some View {
        ZStack {
            Color.hex("2E2017")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            Image("singlewin.bg")
                .overlay {
                    VStack {
                        Spacer()
                        
                        HStack {
                            Text("Right answers:")
                                .withFontCaptain57(size: 25.56, weight: .light)
                            
                            Image("sme")
                                .overlay {
                                    Text("\(returnRightAnswersCaptain57(count: vm.questionNumberCaptain57 + (vm.heartCountCaptain57 - 3)))/20")
                                        .withFontCaptain57(size: 21.44, weight: .light)
                                }
                        }.padding(.top, 80)
                        Spacer()
                        
                        Button {
                            dismiss()
                        } label: {
                            Image("green.button.bg")
                                .resizable()
                                .frame(height: 40)
                                .overlay {
                                    Text("MAIN MENU")
                                        .withFontCaptain57(size: 18.46, weight: .regular, color: .hex("0D0D0D"))
                                }
                        }.padding(40)
                    }
                }
        }.opacity(vm.showFinishViewCaptain57 ? 1: 0)
    }
    
    private var multWinViewCaptain57: some View {
        ZStack {
            Color.hex("2E2017")
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
            
            Image("multwin.bg")
                .overlay {
                    VStack {
                        Spacer()
                        
                        HStack {
                            VStack {
                                Text("\(vm.player1)")
                                    .withFontCaptain57(size: 21.44, weight: .light)
                                
                                Image("sme")
                                    .overlay {
                                        Text("\(vm.player1RightAnswersCaptain57)/10")
                                            .withFontCaptain57(size: 21.44, weight: .light)
                                    }
                            }
                            
                            Spacer()
                            
                            VStack {
                                Text("\(vm.player2)")
                                    .withFontCaptain57(size: 21.44, weight: .light)
                                
                                Image("sme")
                                    .overlay {
                                        Text("\(vm.player2RightAnswersCaptain57)/10")
                                            .withFontCaptain57(size: 21.44, weight: .light)
                                    }
                            }
                        }.padding(.horizontal, 30)
                        
                        
                        Text("\(vm.player1RightAnswersCaptain57 >= vm.player2RightAnswersCaptain57 ? vm.player1: vm.player2) WIN!")
                            .withFontCaptain57(size: 28.42, weight: .semibold, color: .hex("55E4A2"))
                            .shadow(color: .hex("55E4A2"), radius: 15)
                            .padding(.top, 30)
                            .padding(.bottom, -10)
                        Button {
                            dismiss()
                        } label: {
                            Image("green.button.bg")
                                .resizable()
                                .frame(height: 40)
                                .overlay {
                                    Text("MAIN MENU")
                                        .withFontCaptain57(size: 18.46, weight: .regular, color: .hex("0D0D0D"))
                                }
                        }.padding(40)
                    }
                }
        }.opacity(vm.showFinishViewCaptain57 ? 1: 0)
    }
    
    func returnRightAnswersCaptain57(count: Int) -> Int {
        if count >= 0 {
            return count
        } else {
            return 0
        }
    }
}

#Preview {
    QuestionViewCaptain57(type: .withC)
}
