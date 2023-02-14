import SwiftUI

struct NumberButton: View {
    let n: String
    let geo: GeometryProxy
    
    init (_ n: String, geo: GeometryProxy) {
        self.n = n
        self.geo = geo
    }
    init (_ n: Int, geo: GeometryProxy) {
        self.n = String(n)
        self.geo = geo
    }
    
    var body: some View {
        let width = geo.size.width / 4 - 4
        Button(
            action: { print(n) },
            label: {
                Capsule().fill(Color.numberBackground)
                    .overlay {
                        Text(n).font(.system(.title, weight: .medium)).foregroundColor(.white)
                    }
                    .padding(width/20)
                    .frame(width: n != "0" ? width : width*2, height: width, alignment: .center)
            }
        )
    }
}

struct NumberButton_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {geo in 
            NumberButton(5, geo: geo)
        }
    }
}
