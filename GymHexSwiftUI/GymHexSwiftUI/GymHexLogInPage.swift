import SwiftUI
import Combine

struct GymHexLogInPage: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var keyboardHeight: CGFloat = 0

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image("GymHexTopperLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 118)
                    .padding(.top, 50) // Adjust the padding as needed
                
                Spacer().frame(height: 25) // Adjust the spacer height as needed
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.horizontal, 30)

                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.horizontal, 30)
                    .padding(.top, 10)
                
                Button(action: {
                    // Handle login action
                }) {
                    Text("Log in")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(5.0)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 30)
                .padding(.top, 10)

                Button(action: {
                    // Handle "Don't have an account" action
                }) {
                    Text("Don't have an account?")
                        .foregroundColor(.blue)
                }
                .padding(.top, 10)
                
                Spacer()
                
                Image("GymHexMainLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 291, height: 221)
                    .padding(.bottom, 20)
                
                Spacer()
            }
            .padding(.bottom, keyboardHeight)
            .onAppear {
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
                    if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                        withAnimation {
                            self.keyboardHeight = keyboardFrame.height - geometry.safeAreaInsets.bottom
                        }
                    }
                }
                
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
                    withAnimation {
                        self.keyboardHeight = 0
                    }
                }
            }
            .onDisappear {
                NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
                NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
            }
        }
        .background(Color(UIColor(rgb: 0x333333)))
        .edgesIgnoringSafeArea(.all)
    }
}

// Utility to convert RGB hex values to UIColor
extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb >> 16) & 0xFF) / 255.0,
            green: CGFloat((rgb >> 8) & 0xFF) / 255.0,
            blue: CGFloat(rgb & 0xFF) / 255.0,
            alpha: 1.0
        )
    }
}

struct GymHexLogInPage_Previews: PreviewProvider {
    static var previews: some View {
        GymHexLogInPage()
    }
}
