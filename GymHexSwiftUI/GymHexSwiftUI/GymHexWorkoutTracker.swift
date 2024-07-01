//
//  GymHexWorkoutTracker.swift
//  GymHexSwiftUI
//
//  Created by Tom Knight on 03/06/2024.
//
import SwiftUI

struct GymHexWorkoutTracker: View {
    private var colorsArr: [Color] = [.red, .green, .yellow, .blue, .orange, .accentColor, .cyan, .brown, .indigo]
    
    var body: some View {
        VStack{
            // Top Image
            Image("GymHexTopperLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .padding(.top, -75) // Adjusted padding to move the logo down
            
            Text("Push")
                .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                . font(. system(size: 50))
                .padding(50)
        ScrollView(.horizontal) {
            HStack(spacing: 25) {
                ForEach(0..<colorsArr.count, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(colorsArr[index])
                        .shadow(radius: 5, x: 5, y: 5)
                        .frame(width: UIScreen.main.bounds.width - 100, height: 300)
                        .scrollTransition { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0.5) // Apply opacity animation
                                .scaleEffect(y: phase.isIdentity ? 1 : 0.7) // Apply scale animation
                        }
                        }
                }
            }
            .scrollTargetLayout() // Align content to the view
        }
        .contentMargins(50, for: .scrollContent) // Add padding
        .scrollTargetBehavior(.viewAligned) // Align content behavior
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct GymHexWorkoutTracker_Previews: PreviewProvider {
    static var previews: some View {
        GymHexWorkoutTracker()
    }
}
