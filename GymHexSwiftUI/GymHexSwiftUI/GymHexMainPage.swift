import SwiftUI

struct GymHexMainView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Top Image
                Image("GymHexTopperLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .padding(.top, 40) // Adjusted padding to move the logo down
                
                Spacer()
                
                // Middle buttons for Calorie Tracker and Workout Tracker
                VStack(spacing: 20) {
                    NavigationButton(title: "Calorie Tracker", destination: GymHexCalorieTracker())
                    
                    NavigationButton(title: "Workout Tracker", destination: GymHexWorkoutTracker())
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                // Bottom buttons with separators
                HStack {
                    BottomButton(imageName: "GymHexMainPageIconActivated")
                    
                    Divider()
                        .frame(height: 50)
                        .frame(width: 1)
                        .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                    
                    BottomButton(imageName: "GymHexLeaderboardIconDeactivated")
                    
                    Divider()
                        .frame(height: 50)
                        .frame(width: 1)
                        .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                    
                    BottomButton(imageName: "GymHexFriendsIconDeactivated")
                    
                    Divider()
                        .frame(height: 50)
                        .frame(width: 1)
                        .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                    
                    BottomButton(imageName: "GymHexSettingsIconDeactivated")
                }
                .frame(height: 50)
                .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 51/255, green: 51/255, blue: 51/255))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct NavigationButton<Destination: View>: View {
    let title: String
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .foregroundColor(.black)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                .cornerRadius(10)
        }
    }
}

struct BottomButton: View {
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

struct GymHexMainView_Previews: PreviewProvider {
    static var previews: some View {
        GymHexMainView()
    }
}

