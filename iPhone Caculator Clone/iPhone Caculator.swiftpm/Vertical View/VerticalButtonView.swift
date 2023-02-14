import SwiftUI

struct VerticalButtonView: View {
    @Binding var board: String
    
    var body: some View {
        VStack(spacing: 5) {
            buttonRow3
            buttonRow2
            buttonRow1
            buttonRow0
        }
    }
}

extension VerticalButtonView {
    
    var buttonRow0: some View {
        HStack(spacing: 5) {
            NumberButton(0)
            NumberButton(".")
            OperatorButton(.equal)
        }
    }
    var buttonRow1: some View {
        HStack(spacing: 5) {
            NumberButton(1)
            NumberButton(2)
            NumberButton(3)
            OperatorButton(.plus)
        }
    }
    var buttonRow2: some View {
        HStack(spacing: 5) {
            NumberButton(4)
            NumberButton(5)
            NumberButton(6)
            OperatorButton(.minus)
        }
    }
    var buttonRow3: some View {
        HStack(spacing: 5) {
            NumberButton(7)
            NumberButton(8)
            NumberButton(9)
            OperatorButton(.multiply)
        }
    }
    
}


struct VerticalButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalButtonView(board: .constant("0"))
    }
}
