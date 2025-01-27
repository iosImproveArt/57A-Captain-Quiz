
import SwiftUI

struct ProfileViewCaptain57: View {
    @Environment(\.dismiss) var dismiss
    
    @State var userPhoto = ""
    @State var userName = ""
    @State var userNickname = ""
    
    @State var showActionSheetCaptain57 = false
    @State private var showImagePickerCaptain57 = false
    @State private var showCameraPickerCaptain57 = false
    @State var ev = false
    @FocusState var textfield
    @State var showAlertCaptain57 = false
    
    let fieldsColorCaptain57 = Color.hex("B35C5C")
    
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
            Button {
                showActionSheetCaptain57 = true
            } label: {
                Group {
                    if userPhoto.isEmpty {
                        Image("user.label")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 200, maxHeight: 200)
                    } else {
                        Image(uiImage: UIImage(data: Data(base64Encoded: userPhoto)!)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(maxWidth: 200, maxHeight: 200)
                    }
                }.padding(.top)
            }.onAppear {
                userPhoto = UserDefaults.standard.string(forKey: "userPhoto") ?? ""
                userName = UserDefaults.standard.string(forKey: "userName") ?? ""
                userNickname = UserDefaults.standard.string(forKey: "userNickname") ?? "IamNewUser"
            }
            
            Spacer()
            
            HStack(spacing: 8) {
                
                Image("textfield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        TextField("Whats your name?", text: $userName)
                            .padding(.horizontal, 15)
                            .padding(.horizontal, 6)
                            .foregroundStyle(.white)
                    }
            }.padding(.vertical)
            
            
            HStack(spacing: 8) {
                Image("textfield")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        TextField("Whats your nickname?", text: $userNickname)
                            .padding(.horizontal, 15)
                            .padding(.horizontal, 6)
                            .foregroundStyle(.white)
                    }
            }.padding(.bottom)
            
            
            Spacer()
            
            HStack {
                Button {
                    UserDefaults.standard.set(userPhoto, forKey: "userPhoto")
                    UserDefaults.standard.set(userName, forKey: "userName")
                    UserDefaults.standard.set(userNickname, forKey: "userNickname")
                    showAlertCaptain57 = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay {
                            Text("Save")
                                .withFontCaptain57(size: 18.6, weight: .regular)
                        }
                }
                
                Button {
                    UserDefaults.standard.set("", forKey: "userPhoto")
                    UserDefaults.standard.set("", forKey: "userName")
                    UserDefaults.standard.set("", forKey: "userNickname")
                    userName = ""
                    userNickname = ""
                    userPhoto = ""
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .overlay {
                            Text("Delete")
                                .withFontCaptain57(size: 18.6, weight: .regular)
                        }
                }
            }
            
            Spacer()
            
        }.padding(.horizontal)
            .animation(.easeInOut, value: textfield)
            .actionSheet(isPresented: $showActionSheetCaptain57) {
                ActionSheet(title: Text(""), buttons: [
                    .default(Text("Camera")) {
                        showCameraPickerCaptain57 = true
                    },
                    .default(Text("Photo Library")) {
                        showImagePickerCaptain57 = true
                    },
                    .cancel() // Кнопка скасування
                ])
            }
            .sheet(isPresented: $showImagePickerCaptain57) {
                ImagePickerViewCaptain57(showImagePicker: self.$showImagePickerCaptain57) { image in
                    if let image = image {
                        if let compressedData = image.jpegData(compressionQuality: 0.01) {
                            self.userPhoto = compressedData.base64EncodedString()
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
            .sheet(isPresented: $showCameraPickerCaptain57) {
                CameraPickerViewCaptain57(showImagePicker: self.$showCameraPickerCaptain57) { image in
                    if let image = image {
                        if let compressedData = image.jpegData(compressionQuality: 0.01) {
                            self.userPhoto = compressedData.base64EncodedString()
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
            .alert(isPresented: $showAlertCaptain57) {
                Alert(
                    title: Text("Saved!"),
                    message: Text("Successful data saving"),
                    dismissButton: .default(Text("OK"))
                )
            }
    }
}

#Preview {
    ContentViewCaptain57(showLoadingCaptain57: false, selectedTabCaptain57: .profile)
}


