import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = [
        Landmark(id: 1001, name: "Turtle Rock", park: "Joshua Tree National Park", state: "California", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", isFavorite: true, isFeatured: true, category: Landmark.Category(rawValue: "Rivers")! ,imageName: "turtlerock", coordinates: Landmark.Coordinates(latitude: 34.011286, longitude: -116.166868)),
        Landmark(id: 1002, 
                 name: "Silver Salmon Creek", 
                 park: "Lake Clark National Park and Preserve", 
                 state: "Alaska",
                 description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", isFavorite: true, category: Landmark.Category(rawValue: "Lakes")!, 
                 imageName: "silversalmoncreek", 
                 coordinates: Landmark.Coordinates(latitude: 59.980167, longitude: -152.665167)),
        Landmark(id: 1003,
                 name: "Chilkoot Trail", 
                 park: "Klondike Gold Rush National Historical Park",
                 state: "Alaska",
                 description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", isFavorite: false, category: Landmark.Category(rawValue: "Mountains")!, 
                 imageName: "chilkoottrail",
                 coordinates: Landmark.Coordinates(latitude: 48.69423, longitude: -116.166868)),
        Landmark(id: 1004,
                 name: "St. Mary Lake", 
                 park: "Glacier National Park",
                 state: "Montana",
                 description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", isFavorite: true, isFeatured: true, category: Landmark.Category(rawValue: "Lakes")!, 
                 imageName: "stmarylake",
                 coordinates: Landmark.Coordinates(latitude: 48.69423, longitude: -113.536248)),
        Landmark(id: 1005, name: "Twin Lake", park: "Lake Clark National Park and Preserve", state: "Alaska", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", isFavorite: false, category: Landmark.Category(rawValue: "Lakes")!, imageName: "twinlake", coordinates: Landmark.Coordinates(latitude: 60.641684, longitude: -153.849883)),
        Landmark(id: 1006, name: "Lake McDonald", park: "Glacier National Park", state: "Montana", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", isFavorite: false, category: Landmark.Category(rawValue: "Mountains")!, imageName: "lakemcdonald", coordinates: Landmark.Coordinates(latitude: 48.56002, longitude: -113.934831)),
        Landmark(id: 1007, name: "Charley Rivers", park: "Charly Rivers National Preserve", state: "Alaska", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", isFavorite: false, isFeatured: true, category: Landmark.Category(rawValue: "Rivers")!, imageName: "charleyrivers", coordinates: Landmark.Coordinates(latitude: 65.350021, longitude: -143.122586)),
        Landmark(id: 1008, name: "Ice Bay", park: "Wrangell-St. Elias National Park and preserve", state: "Alaska", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", isFavorite: false, category: Landmark.Category(rawValue: "Mountains")!, imageName: "icybay", coordinates: Landmark.Coordinates(latitude: 60.089917, longitude: -141.518167)),
        Landmark(id: 1009, name: "Rainbow Lake", park: "State Recreation Area", state: "Alaska", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", category: Landmark.Category(rawValue: "Lakes")!, imageName: "rainbowlake", coordinates: Landmark.Coordinates(latitude: 61.694334, longitude: -150.086103)),
        Landmark(id: 1010, name: "Hidden Lake", park: "North Cascades National Park", state: "Washington", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.",category: Landmark.Category(rawValue: "Lakes")!, imageName: "hiddenlake", coordinates: Landmark.Coordinates(latitude: 48.495442, longitude: -121.17799)),
        Landmark(id: 1011, name: "Chincoteague", park: "Chincoteague National Wildlife Refuge", state: "Virginia", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", category: Landmark.Category(rawValue: "Rivers")!, imageName: "chincoteague",  coordinates: Landmark.Coordinates(latitude: 37.91531, longitude: -75.383212)), 
        Landmark(id: 1012, name: "Lak Umbagog", park: "Umbagog National Wildlife Refuge", state: "New Hampshire", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", category: Landmark.Category(rawValue: "Lakes")!, imageName: "umbagog", coordinates: Landmark.Coordinates(latitude: 44.747408, longitude: -71.056816))
    ]
    var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: {$0.category.rawValue}
        )
    }
    
    var features: [Landmark] {
        landmarks.filter{ $0.isFeatured }
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
