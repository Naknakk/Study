import SwiftUI

extension Color {
    init(_ r: Double, _ g: Double, _ b: Double) {
        let red = r/255.0
        let green = g/255.0
        let blue = b/255.0
        
        self.init(red: red, green: green, blue: blue)
    }
    
    init(_ hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
        

    
    static let calendarBackground = Color(0, 48, 89)
    static let afterLifeColor = Color(3, 57, 112)
    static let beforLifeColor = Color(5, 37, 73)

    static let childColor = Color(231, 223, 84)
    static let teenagerColor = Color(236, 142, 6)
    static let adultColor = Color(217, 37, 85)
    static let elderColor = Color(31, 179, 106)
    
    func getrgb() -> [Double] {
        let components = UIColor(self).cgColor.components 
        let red = components?[0] ?? 0
        let green = components?[1] ?? 0
        let blue = components?[2] ?? 0
        let colorCode = [
            Double(lroundf(Float(red) * 255)),
            Double(lroundf(Float(green) * 255)),
            Double(lroundf(Float(blue) * 255))
        ]
        
        return colorCode
    
    }
    

    
}
