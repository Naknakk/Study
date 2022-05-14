import SwiftUI

struct CircleImage: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.image
            .clipShape(Circle())
            .overlay(.white, in: Circle().stroke(lineWidth: 4))
            .shadow(radius: 7)
    }
}
/*
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(landmark: landmarks[2])
    }
}*/
