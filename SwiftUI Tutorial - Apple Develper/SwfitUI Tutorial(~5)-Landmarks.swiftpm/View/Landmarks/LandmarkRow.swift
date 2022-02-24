import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                .shadow(radius: 2.2, x: 1, y: 1)
            
            Text(landmark.name)
                
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
        }
    }
}
/*
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[2])
    }
}*/
