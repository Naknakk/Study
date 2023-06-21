import SwiftUI

struct VerticalCaculator: View {
    @State var board: String = "66666"
    
    var body: some View {
        GeometryReader {geo in
            VStack(spacing: 5) {
                Text(board)
                    .font(.system(size: 60, weight: .light, design: .default))
                     .foregroundColor(.white)
                    .padding(.trailing, 12)
                    .frame(width: geo.size.width, height: geo.size.height-geo.size.width/0.8, alignment: .bottomTrailing)
                
                VerticalButtonView(board: $board, geo: geo)
                    .frame(width: geo.size.width, height: geo.size.width/0.8, alignment: .center)
                    .border(.blue, width: 1)
            }
        }.background(.black)
    }
}

struct VerticalCaculator_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCaculator()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
