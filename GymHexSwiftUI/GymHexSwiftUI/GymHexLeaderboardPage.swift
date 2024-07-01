import SwiftUI
import SQLite3

struct GymHexLeaderboardPage: View {
    var body: some View {
        VStack {
            // Top Image
            Image("GymHexTopperLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .padding(.top, 40) // Adjusted padding to move the logo down
            
            // Leaderboard
            TabView {
                LeaderboardView(timeFrame: .day)
                    .tabItem {
                        Text("Day")
                    }
                LeaderboardView(timeFrame: .week)
                    .tabItem {
                        Text("Week")
                    }
                LeaderboardView(timeFrame: .month)
                    .tabItem {
                        Text("Month")
                    }
                LeaderboardView(timeFrame: .year)
                    .tabItem {
                        Text("Year")
                    }
                LeaderboardView(timeFrame: .lifetime)
                    .tabItem {
                        Text("Lifetime")
                    }
            }
            .tabViewStyle(PageTabViewStyle())
            .padding(.horizontal, 8)
            .padding(.vertical, 30)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 204/255, green: 255/255, blue: 102/255), lineWidth: 2)
            )
            .padding(.horizontal, 8)
            .padding(.vertical, 30)
            
            Spacer()
            
            // Bottom buttons with separators
            HStack {
                GymHexBottomButton(imageName: "GymHexMainPageIconDeactivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width: 1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                GymHexBottomButton(imageName: "GymHexLeaderboardIconActivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width: 1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                GymHexBottomButton(imageName: "GymHexFriendsIconDeactivated")
                
                Divider()
                    .frame(height: 50)
                    .frame(width: 1)
                    .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                
                GymHexBottomButton(imageName: "GymHexSettingsIconDeactivated")
            }
            .frame(height: 50)
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct LeaderboardView: View {
    let timeFrame: LeaderboardTimeFrame
    
    let leaderboard: [Friend] = [
        Friend(name: "Alice", caloriesBurnt: 500, calorieintake: 2000, workouts: 5, weightLifted: 100),
        Friend(name: "Bob", caloriesBurnt: 300, calorieintake: 2500, workouts: 3, weightLifted: 150),
        Friend(name: "Charlie", caloriesBurnt: 450, calorieintake: 1800, workouts: 4, weightLifted: 200),
        Friend(name: "Felix", caloriesBurnt: 0, calorieintake: 50000
               , workouts: 0, weightLifted: 0),
        Friend(name: "Dave", caloriesBurnt: 600, calorieintake: 2100, workouts: 6, weightLifted: 180)
    ]
    
    var sortedLeaderboard: [Friend] {
        leaderboard.sorted { $0.name < $1.name }
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(timeFrameDescription)
                    .font(.title)
                    .bold()
                    .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                    .padding(.bottom, 5)

                HStack {
                    Text("Friends")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color(red: 204/255, green: 255/255, blue: 102/255))
                    Text("Workouts")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color(red: 255/255, green: 51/255, blue: 51/255))
                    Text("Calories Burnt")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color(red: 255/255, green: 255/255, blue: 102/255))
                    Text("Calorie Intake")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color(red: 51/255, green: 255/255, blue: 153/255))
                    Text("Weight Lifted")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color(red: 51/255, green: 255/255, blue: 255/255))
                }
                .padding(.bottom, 5)
                
                ForEach(sortedLeaderboard, id: \.name) { friend in
                    HStack {
                        Text(friend.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.white)
                        Text("\(friend.workouts)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.white)
                        Text("\(friend.caloriesBurnt)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.white)
                        Text("\(friend.calorieintake)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.white)
                        Text("\(friend.weightLifted)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.white)
                    }
                    .padding(.vertical, 8)
                    Divider()
                        .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                }
            }
            var timeFrameDescription: String {
                switch timeFrame {
                case .day:
                    return "Leaderboard - Day"
                case .week:
                    return "Leaderboard - Week"
                case .month:
                    return "Leaderboard - Month"
                case .year:
                    return "Leaderboard - Year"
                case .lifetime:
                    return "Leaderboard - Lifetime"
                }
            }
        }
    }
}


struct GymHexBottomButton: View {
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

struct Friend {
    let name: String
    var caloriesBurnt: Int
    var calorieintake: Int
    var workouts: Int
    var weightLifted: Int
}

enum LeaderboardTimeFrame {
    case day
    case week
    case month
    case year
    case lifetime
}

struct GymHexLeaderboardPage_Previews: PreviewProvider {
    static var previews: some View {
        GymHexLeaderboardPage()
    }
}

