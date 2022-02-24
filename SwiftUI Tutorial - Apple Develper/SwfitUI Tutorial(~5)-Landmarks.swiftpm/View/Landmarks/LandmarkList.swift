import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showOnlyFavorites: Bool = false
    
    var filteredList: [Landmark] {
        modelData.landmarks.filter {
            (!showOnlyFavorites || $0.isFavorite)
        }
    }
    
    var body: some View {
            NavigationView{
                List {
                    Toggle("Favorites only", isOn: $showOnlyFavorites)
                    
                    ForEach(filteredList) {landmark in 
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }.navigationTitle("Landmarks")
            }
    }
}
/*
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}*/
