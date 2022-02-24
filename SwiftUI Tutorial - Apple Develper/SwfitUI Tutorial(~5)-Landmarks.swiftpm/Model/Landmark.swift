import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool = false
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable {
        var latitude: Double
        var longitude: Double
    }
}
