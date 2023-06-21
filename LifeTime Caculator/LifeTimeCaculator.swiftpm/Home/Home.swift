import SwiftUI

struct Home: View {
    var body: some View {
        VStack(spacing: 0) {
            YearLifeTimeCalendar()
            ScrollView {
                VStack{
                    LifeTaskRow()
                    LifeTaskRow()
                    LifeTaskRow()
                }
            }.background(Color.afterLifeColor)
               
        }
        
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
