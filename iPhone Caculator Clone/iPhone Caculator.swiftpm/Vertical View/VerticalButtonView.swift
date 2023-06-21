import SwiftUI

struct VerticalButtonView: View {
    @Binding var board: String
    let geo: GeometryProxy
    
    var body: some View {
        VStack(spacing: 0) {
            buttonRow4
            buttonRow3
            buttonRow2
            buttonRow1
            buttonRow0
        }
    }
}

extension VerticalButtonView {
    
    var buttonRow0: some View {
        HStack(spacing: 0) {
            NumberButton(0, geo: geo)
            NumberButton(".", geo: geo)
            OperatorButton(.equal, geo: geo)
        }
    }
    var buttonRow1: some View {
        HStack(spacing: 0) {
            NumberButton(1, geo: geo)
            NumberButton(2, geo: geo)
            NumberButton(3, geo: geo)
            OperatorButton(.plus, geo: geo)
        }
    }
    var buttonRow2: some View {
        HStack(spacing: 0) {
            NumberButton(4, geo: geo)
            NumberButton(5, geo: geo)
            NumberButton(6, geo: geo)
            OperatorButton(.minus, geo: geo)
        }
    }
    var buttonRow3: some View {
        HStack(spacing: 0) {
            NumberButton(7, geo: geo)
            NumberButton(8, geo: geo)
            NumberButton(9, geo: geo)
            OperatorButton(.multiply, geo: geo)
        }
    }
    var buttonRow4: some View {
        HStack(spacing: 0) {
            FunctionButton(.clear, geo: geo)
            FunctionButton(.plusMinus, geo: geo)
            FunctionButton(.percent, geo: geo)
            OperatorButton(.divide, geo: geo)
        }
    }
    
}


struct VerticalButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {geo in
             VerticalButtonView(board: .constant("0"), geo: geo)
        }
       
    }
}
