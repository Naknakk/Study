import SwiftUI

struct YearLifeTimeCalendar: View {
    var body: some View {
        VStack(spacing:0) {
            YearLifeTimeCalendarRow(years: LifeTime.lifeTimeSamples)
            YearLifeTimeCalendarRow(years: LifeTime.lifeTimeSamples2)
            YearLifeTimeCalendarRow(years: LifeTime.lifeTimeSamples3)
            YearLifeTimeCalendarRow(years: LifeTime.lifeTimeSamples4)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.beforLifeColor)
    }
}

extension YearLifeTimeCalendar {
    
    func YearLifeTimeCalendarRow(years: [LifeTime]) -> some View {
        return HStack(spacing: 0) {
            ForEach(years) { year in
                Circle().fill(year.color)
                    .padding(1.5)
                    .frame(width: 20, height: 20, alignment: .center)
            }
        }
    }
}

struct LifeTime: Identifiable {
    
    enum LifeInterval {
        case child
        case teenager
        case adult
        case elder
    }
    
    var id: Int {
        return self.age
    }
    var age: Int
    var lifeInterval: LifeInterval {
        switch age {
        case 0...13: 
            return .child
        case 14...20:
            return .teenager
        case 21...65:
            return .adult
        case 66...100:
            return .elder
        default:
               return .elder
        }
    }
    
    
    var color: Color {
        switch lifeInterval {
        case .child:
            return Color.childColor
        case .teenager:
            return Color.teenagerColor
        case .adult:
            return Color.adultColor
        case .elder:
            return Color.elderColor
        }
    }
    
    static var lifeTimeSamples: [LifeTime] = [
        LifeTime(age: 2),
        LifeTime(age: 4),
        LifeTime(age: 6),
        LifeTime(age: 8),
        LifeTime(age: 10),
        LifeTime(age: 12),
        LifeTime(age: 14),
        LifeTime(age: 16),
        LifeTime(age: 18),
        LifeTime(age: 20)
    ]
    static var lifeTimeSamples2: [LifeTime] = [
        LifeTime(age: 22),
        LifeTime(age: 24),
        LifeTime(age: 26),
        LifeTime(age: 28),
        LifeTime(age: 30),
        LifeTime(age: 32),
        LifeTime(age: 34),
        LifeTime(age: 36),
        LifeTime(age: 38),
        LifeTime(age: 40)
    ]
    static var lifeTimeSamples3: [LifeTime] = [
        LifeTime(age: 42),
        LifeTime(age: 44),
        LifeTime(age: 46),
        LifeTime(age: 48),
        LifeTime(age: 50),
        LifeTime(age: 52),
        LifeTime(age: 54),
        LifeTime(age: 56),
        LifeTime(age: 58),
        LifeTime(age: 60)
    ]
    static var lifeTimeSamples4: [LifeTime] = [
        LifeTime(age: 62),
        LifeTime(age: 64),
        LifeTime(age: 66),
        LifeTime(age: 68),
        LifeTime(age: 70),
        LifeTime(age: 72),
        LifeTime(age: 74),
        LifeTime(age: 76),
        LifeTime(age: 78),
        LifeTime(age: 80)
    ]
}



struct YearLifeTimeCalendar_Previews: PreviewProvider {
    static var previews: some View {
        YearLifeTimeCalendar()
    }
}
