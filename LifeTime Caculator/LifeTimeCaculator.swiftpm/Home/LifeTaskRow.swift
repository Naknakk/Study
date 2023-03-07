import SwiftUI

struct LifeTaskRow: View {
    var body: some View {
        HStack {
            Image("Cafe")
                .resizable()
                
                //.scaledToFill()
                .frame(width:70)
                .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous), style: FillStyle())
                .padding(5)
            VStack {
                HStack {
                    Text("Good Cafe Rest")
                    Spacer()
                    Text("50 / 250 주")
                }
                Spacer()
                YearLifeTimeCalendarRow(years: LifeTime.lifeTimeSamples)
            }.padding()
        }
        .frame(height: 80)
        .background(Color.gray)
        .padding(.vertical, 8)
    }
    
    func YearLifeTimeCalendarRow(years: [LifeTime]) -> some View {
        return HStack(spacing: 0) {
            ForEach(years) { year in
                Circle().strokeBorder(year.color, antialiased: true)
                    .padding(2)
                    .frame(width: 20, height: 20, alignment: .center)
            }
        }
    }
}

struct LifeTaskRow_Previews: PreviewProvider {
    static var previews: some View {
        LifeTaskRow()
    }
}
