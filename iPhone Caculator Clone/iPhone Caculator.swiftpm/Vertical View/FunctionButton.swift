import SwiftUI

struct FunctionButton: View {
    enum Function: String {
        case plusMinus = "plus.forwardslash.minus"
        case percent = "percent"
        case clear = "C"
    }
    
    let fn: Function
    let geo: GeometryProxy
    
    init (_ fn: Function, geo: GeometryProxy) {
        self.fn = fn
        self.geo = geo
    }
    
    var body: some View {
        let width = geo.size.width / 4 - 4
        Button(
            action: { print(fn.rawValue) },
            label: {
                Capsule().fill(Color.functionBackground)
                    .overlay {
                        if fn == .clear {
                            Text("C").font(.system(.title, weight: .medium)).foregroundColor(.black)
                        }  else {
                            Image(systemName: fn.rawValue).imageScale(.large).bold() .foregroundColor(.black)
                        }
                    }
                    .padding(width/20)
                    .frame(width: width, height: width, alignment: .center)
            }
        )
    }
}

struct FunctionButton_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ geo in
            FunctionButton(.plusMinus, geo: geo)
        }
        
    }
}
