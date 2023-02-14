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
    
    init (_ op: Operator) {
        self.op = op
    }
    var body: some View {
        Button(
            action: { print(op.rawValue) },
            label: {
                Circle().fill(Color.calBackground)
                    .overlay {
                        Image(systemName: op.rawValue).imageScale(.large).bold() .foregroundColor(.white)
                    }
                    .frame(width: 58, height: 58, alignment: .center)
            }
        )
    }
}

struct OperatorButton_Previews: PreviewProvider {
    static var previews: some View {
        OperatorButton(.plus)
    }
}
