//
//  GymHexMainAppView.swift
//  GymHexSwiftUI
//
//  Created by Tom Knight on 08/09/2024.
//
import SwiftUI

struct GymHexMainAppView: View {
    var body: some View {
        TabView {
            GymHexMainView()
                .tabItem {
                    
                }
            
            GymHexLeaderboardPage()
                .tabItem {
                    
                }
            
            GymHexFriendsPage()
                .tabItem {
                    
                }
            
            GymHexSettingsPage()
                .tabItem {
                    
                }
        }
    }
}

struct GymHexMainAppView_Previews: PreviewProvider {
    static var previews: some View {
        GymHexMainAppView()
    }
}
