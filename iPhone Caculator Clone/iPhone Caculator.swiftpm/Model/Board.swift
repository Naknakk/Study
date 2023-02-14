import SwiftUI

final class Board: ObservableObject {
    @Published var board = "0"
    @Published var history = ""
}
