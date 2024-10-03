import SwiftUI
import CodeScanner

struct GymHexCalorieTracker: View {
    @State private var showingScanner = false
    @State private var scannedCode: String?
    @State private var apiResponse: String? // State to store the API response

    var body: some View {
        ZStack {
            // Background Color
            Color(red: 51/255, green: 51/255, blue: 51/255)
                .edgesIgnoringSafeArea(.all) // Ensure background color fills the entire screen

            VStack {
                Spacer()

                Image("GymHexTopperLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .padding(.bottom, 0)

                Text("Calorie Tracker")
                    .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                    .font(.system(size: 40, weight: .bold))
                    .padding(.bottom, 100)

                Button(action: {
                    showingScanner = true
                }) {
                    Text("Scan Barcode")
                        .foregroundColor(Color(red: 204/255, green: 255/255, blue: 102/255))
                        .padding()
                        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
                        .cornerRadius(8)
                }
                .sheet(isPresented: $showingScanner) {
                    CodeScannerView(codeTypes: [.ean13, .ean8, .upce]) { result in
                        showingScanner = false
                        switch result {
                        case .success(let code):
                            scannedCode = code.string
                            fetchCalorieData(for: code.string) // Call the API when a code is scanned
                        case .failure(let error):
                            print("Scanning failed: \(error.localizedDescription)")
                        }
                    }
                }
                .padding(.bottom, 100)

                if let scannedCode = scannedCode {
                    Text("Scanned code: \(scannedCode)")
                        .foregroundColor(.white)
                        .padding(.bottom, 100)
                }

                if let apiResponse = apiResponse {
                    Text("API Response: \(apiResponse)")
                        .foregroundColor(.white)
                        .padding(.bottom, 100)
                }

                Spacer()
            }
            .frame(maxWidth: .infinity) // Ensure VStack takes the full width
            

        }
    }

    // Function to perform the API call
    func fetchCalorieData(for barcode: String) {
        guard let url = URL(string: "https://api.example.com/calories?barcode=\(barcode)") else {
            print("Invalid URL")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error with fetching calorie data: \(error)")
                return
            }

            guard let data = data else {
                print("No data received")
                return
            }

            // Assuming the API returns a JSON object with a "calories" field
            if let responseObject = try? JSONDecoder().decode(CalorieResponse.self, from: data) {
                DispatchQueue.main.async {
                    apiResponse = "Calories: \(responseObject.calories)"
                }
            } else {
                print("Unable to decode response")
            }
        }

        task.resume()
    }
}

// Struct to match the API response
struct CalorieResponse: Decodable {
    let calories: Int
}

struct GymHexCalorieTracker_Previews: PreviewProvider {
    static var previews: some View {
        GymHexCalorieTracker()
    }
}

