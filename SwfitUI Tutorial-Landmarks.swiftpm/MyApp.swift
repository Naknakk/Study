import SwiftUI

@main
struct MyApp: App {
    @StateObject var landmarkData = LandmarkData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(landmarkData)
        }
    }
}
