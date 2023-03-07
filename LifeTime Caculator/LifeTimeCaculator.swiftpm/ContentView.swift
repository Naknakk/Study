import SwiftUI

struct ContentView: View {
    @State var tabPage = 2
    var body: some View {
        TabView(selection: $tabPage)
        {
            Home()
                .tabItem { Image(systemName: "heart.fill") }.tag(1)
            WeeklyRecord()
                .tabItem { Image(systemName: "star.fill") }.tag(2)
        }
            
    }
}
