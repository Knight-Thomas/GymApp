import SwiftUI

struct GymHexSettingsPage: View {
    var body: some View {
        VStack {
            // Top Image
            Image("GymHexTopperLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .padding(.top, 40) // Adjusted padding to move the logo down
            
            Spacer()
            
            // Bottom buttons with separators
            HStack {
                SettingsBottomButton(imageName: "GymHexMainPageIconDeactivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width: 1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                SettingsBottomButton(imageName: "GymHexLeaderboardIconDeactivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width:1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                SettingsBottomButton(imageName: "GymHexFriendsIconDeactivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width: 1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                SettingsBottomButton(imageName: "GymHexSettingsIconActivated")
            }
            .frame(height: 50)
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SettingsBottomButton: View {
    let imageName: String
    
    var body: some View {
        Button(action: {
            // Handle button action
        }) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
                .padding(.horizontal, 10)
        }
    }
}

struct GymHexSettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        GymHexSettingsPage()
    }
}

