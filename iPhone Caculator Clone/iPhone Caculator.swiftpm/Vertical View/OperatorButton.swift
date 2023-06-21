import SwiftUI

struct OperatorButton: View {
    enum Operator: String {
        case plus = "plus"
        case minus = "minus"
        case multiply = "multiply"
        case divide = "divide"
        case equal = "equal"
    }
    
    let op: Operator
    let geo: GeometryProxy
    
    init (_ op: Operator, geo: GeometryProxy) {
        self.op = op
        self.geo = geo
    }
    
    var body: some View {
        let width = geo.size.width / 4 - 4
        Button(
            action: { print(op.rawValue) },
            label: {
                Capsule().fill(Color.operatorBackground)
                    .overlay {
                        Image(systemName: op.rawValue).imageScale(.large).bold() .foregroundColor(.white)
                    }
                    .padding(width/20)
                    .frame(width: width, height: width, alignment: .center)
            }
        )
    }
}

struct OperatorButton_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ geo in
            OperatorButton(.plus, geo: geo)
        }
        
    }
}
