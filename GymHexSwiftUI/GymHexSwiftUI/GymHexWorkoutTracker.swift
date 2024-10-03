import SwiftUI

struct GymHexWorkoutTracker: View {
    private let pushImages = [
        "FlatDBBench", "InclineDBBench", "DeclineDBBench", "FlatBBBench", "InclineBBBench",
        "DeclineBBBench", "PecDeck", "ChestFly", "FlatChestPress", "InclineChestPress", "DeclineChestPress", "TricepDips", "TricepRopePushdown", "TricepVBarPushdown", "TricepStraightBarPushdown", "TricepKickBacks", "TricepCableKickbacks", "CableRopeOverheadExtensions", "TricepExtensionsMachine", "ShoulderPressDB", "ShoulderPressBB", "ShoulderPressMachine", "LateralRaiseDB", "LateralRaiseCable", "ReverseCableCrossover", "LateralRaiseMachine", "ShoulderShrugs"
    ]
    
    private let pullImages = [
        "BicepCurlsDB", "BicepCurlsBB", "HammerCurls", "PreacherCurlDB", "PreacherCurlBB","CableHammerCurls", "CableCurlsStraightBar", "ChinUps", "StandardLatPullDown", "WideGripLatPulldown", "NarrowGripLatPulldown", "ReverseGripLatPulldown", "KneelingSingleArmLatPullDown", "StandingStraightArmPullDown", "MachineLatPulldown", "FacePulls", "VBarLatPulldown", "BBRow", "DBRow", "WideGripCableRow", "VGripCableRow", "SingleArmCableRow", "RearDeltFly"
    ]
    
    private let legImages = [
        "LegPressMachine", "LegPressPlates", "DualLegExtension", "OneLegExtension", "DualLegCurls", "CalfRaises", "SquatBB", "GobletSquat", "LungesDB", "GluteBridge", "DeadLift", "BarbellSplitSquat"
    ]
    
    @State private var selectedWorkout = "Push"
    @State private var selectedSets: String = "3x6"
    @State private var selectedWeight: Int = 0
    @State private var failureSet: Bool = false
    @State private var showAlert = false
    
    private var weightOptions: [Int] {
        Array(stride(from: 0, to: 500, by: 2))
    }
    
    private var setsOptions: [String] {
        ["3x6", "4x6", "5x6", "3x8", "4x8", "5x8", "3x10", "4x10", "5x10", "3x12", "4x12", "5x12"]
    }

    var body: some View {
        ZStack {
            // Background Color
            Color(red: 51/255, green: 51/255, blue: 51/255)
                .edgesIgnoringSafeArea(.all) // Ensure background color fills the entire screen

            VStack {
                // Top Image
                Image("GymHexTopperLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .padding(.top, 40) // Adjusted padding to move the logo down
                
                CustomSegmentedControl(selectedOption: $selectedWorkout)
                    .padding()
                
                ScrollView(.horizontal) {
                    HStack(spacing: 25) {
                        ForEach(getImagesForSelectedWorkout(), id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: UIScreen.main.bounds.width - 100, height: 300)
                                .cornerRadius(20)
                                .shadow(radius: 5, x: 5, y: 5)
                                .scrollTransition { content, phase in
                                    content
                                        .opacity(phase.isIdentity ? 1 : 0.5) // Apply opacity animation
                                        .scaleEffect(y: phase.isIdentity ? 1 : 0.7) // Apply scale animation
                                }
                        }
                    }
                }
                .scrollTargetLayout() // Align content to the view
                
                VStack(spacing: 1) { // Adjusted spacing to make the elements fit better
                    HStack {
                        Text("Sets:")
                            .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                        Picker("Select sets", selection: $selectedSets) {
                            ForEach(setsOptions, id: \.self) { set in
                                Text(set).tag(set)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
                        .cornerRadius(5)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Weight:")
                            .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                        Picker("Select weight", selection: $selectedWeight) {
                            ForEach(weightOptions, id: \.self) { weight in
                                Text("\(weight) kg").tag(weight)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
                        .cornerRadius(5)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Failure Set")
                            .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                        Toggle("", isOn: $failureSet)
                            .toggleStyle(SwitchToggleStyle(tint: Color(red: 204/255, green: 255/255, blue: 102/255)))
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 10)
                
                Spacer()
                
                Button(action: {
                    // Confirm button action
                    showAlert = true
                }) {
                    Text("Confirm")
                        .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
                        .padding()
                        .background(Color(red: 204/255, green: 255/255, blue: 102/255))
                        .cornerRadius(8)
                }
                .padding(.bottom, 20)
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Workout Confirmed"),
                        message: Text("Workout: \(selectedWorkout)\nSets: \(selectedSets)\nWeight: \(selectedWeight) kg\nFailure set: \(failureSet)"),
                        dismissButton: .default(Text("OK"))
                    )
                }
            }
            .contentMargins(50, for: .scrollContent) // Add padding
            .scrollTargetBehavior(.viewAligned) // Align content behavior
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
    }
    
    // Helper function to get images based on the selected workout
    func getImagesForSelectedWorkout() -> [String] {
        switch selectedWorkout {
        case "Push":
            return pushImages
        case "Pull":
            return pullImages
        case "Legs":
            return legImages
        default:
            return []
        }
    }
}

struct CustomSegmentedControl: View {
    @Binding var selectedOption: String
    let options = ["Push", "Pull", "Legs"]
    
    var body: some View {
        HStack(spacing: 25) {
            ForEach(options, id: \.self) { option in
                Text(option)
                    .foregroundColor(selectedOption == option ? Color(red: 51/255, green: 51/255, blue: 51/255) : Color(red: 204/255, green: 255/255, blue: 102/255))
                    .padding()
                    .background(selectedOption == option ? Color(red: 204/255, green: 255/255, blue: 102/255) : Color(red: 51/255, green: 51/255, blue: 51/255))
                    .cornerRadius(8)
                    .onTapGesture {
                        withAnimation {
                            selectedOption = option
                        }
                    }
            }
        }
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
        .cornerRadius(8)
    }
}

struct GymHexWorkoutTracker_Previews: PreviewProvider {
    static var previews: some View {
        GymHexWorkoutTracker()
    }
}

