import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImage(landmark: landmark)
                    .padding(.bottom, -130)
                    .offset(y: -130)
                
                Description(landmark: landmark)
                
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(landmark.name)
        
    }
}

/*struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[2])
    }
}*/
