import SwiftUI

struct MyContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("GymHexTopperLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 150)
                    .padding(.top, 25) // Adjust the padding as needed
            }
            .frame(maxWidth: .infinity)
            TextField("Email", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(maxWidth: .infinity)
            TextField("Phone Number", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(maxWidth: .infinity)
            TextField("Username", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(maxWidth: .infinity)
            TextField("Password", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(maxWidth: .infinity)
            Button(action: {}) {
                Text("Create Account")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5.0)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            Button(action: {}) {
                Text("Already have an Account?")
            }
            .padding()
            .frame(maxWidth: .infinity)
            
            Image("GymHexMainLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 291, height: 221)
                .padding(.bottom, 20)
            
            Spacer()
        }
        .background(Color(.sRGB, red: 51/255, green: 51/255, blue: 51/255))
        .ignoresSafeArea()
    }
}

struct MyContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyContentView()
    }
}

