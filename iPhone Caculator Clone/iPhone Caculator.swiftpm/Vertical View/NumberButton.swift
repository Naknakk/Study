import SwiftUI

struct NumberButton: View {
    let n: String
    
    init (_ n: String) {
        self.n = n
    }
    init (_ n: Int) {
        self.n = String(n)
    }
    
    var body: some View {
        Button(
            action: { print(n) },
            label: {
                Capsule().fill(Color.numberBackground)
                    .overlay {
                        Text(n).font(.system(.title, weight: .medium)).foregroundColor(.white)
                    }
                    .frame(width: n != "0" ? 58 : 121, height: 58, alignment: .center)
            }
        )
    }
}

struct NumberButton_Previews: PreviewProvider {
    static var previews: some View {
        NumberButton(5)
    }
}
