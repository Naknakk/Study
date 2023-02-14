import SwiftUI

struct NumberButtonTest: View {
    @State var isTap: Bool = false
    @State var isSelected: Bool = false
    let n: Int
    var body: some View {
            Text("\(n)").font(.title).foregroundColor(.white)
                .frame(width: 58, height: 58, alignment: .center)
                .background(Circle().fill(isTap ? Color.numberBackground.opacity(0.2) : Color.numberBackground))
                .gesture(
                    LongPressGesture(minimumDuration: 0.0, maximumDistance: 20.0)
                        .onChanged({ _  in
                        
                                isTap.toggle()
                            
                        })
                        .onEnded({ _ in
                            isTap.toggle()
                            
                        })
                )
    }
}

struct NumberButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            NumberButtonTest(n: 2)
            NumberButtonTest(n: 2)
            NumberButtonTest(n: 2)
        }
        
    }
}
