import SwiftUI

struct Description: View {
    @EnvironmentObject var landmarkData: LandmarkData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        landmarkData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text(landmark.name)
                    .font(.title)
                FavoriteButton(isSet: $landmarkData.landmarks[landmarkIndex].isFavorite)
                
                Spacer()
            }
            HStack{
                Text(landmark.park)
                    
                Spacer()
                
                Text(landmark.state)
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            
            Divider()
            
            Text("About \(landmark.name)")
                .font(.title2)
            
            Text(landmark.description)
                .font(.body)
            
        }.padding()
        
    }
}
/*
struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description(landmark: landmarks[2])
    }
}*/
