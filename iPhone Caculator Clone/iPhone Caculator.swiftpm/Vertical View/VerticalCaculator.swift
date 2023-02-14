import SwiftUI

struct VerticalCaculator: View {
    @State var board: String = "66666"
    
    var body: some View {
            VStack(alignment: .trailing, spacing: 5) {
                Text(board)
                    .font(.system(size: 60, weight: .light, design: .default))
                    .fixedSize()
                    .foregroundColor(.white)
                    .padding(.trailing, 12)
                    .frame(width: 240, height: 58, alignment: .trailing)
                    
                VerticalButtonView(board: $board)
            }.padding(5)
        .background(.black)
    }
}



struct VerticalCaculator_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCaculator()
            .previewLayout(.fixed(width: 800, height: 800))
    }
}
