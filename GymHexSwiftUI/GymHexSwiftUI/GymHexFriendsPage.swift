import SwiftUI

struct GymHexFriendsPage: View {
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
                FriendBottomButton(imageName: "GymHexMainPageIconDeactivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width: 1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                FriendBottomButton(imageName: "GymHexLeaderboardIconDeactivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width: 1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                FriendBottomButton(imageName: "GymHexFriendsIconActivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width: 1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                FriendBottomButton(imageName: "GymHexSettingsIconDeactivated")
            }
            .frame(height: 50)
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct FriendBottomButton: View {
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

struct GymHexFriendsPage_Previews: PreviewProvider {
    static var previews: some View {
        GymHexFriendsPage()
    }
}

