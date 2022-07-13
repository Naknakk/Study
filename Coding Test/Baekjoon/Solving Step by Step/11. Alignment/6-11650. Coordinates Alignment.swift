// 풀이 1 시간초과가 난다.
let N = Int(readLine()!)!
var coordinates:[[Int]] = []
for _ in 0..<N {
    coordinates.append(readLine()!.split{$0 == " "}.map{Int(String($0))!})
}
func compare(_ a: [Int], _ b: [Int]) -> Bool {
    if a[0] < b[0] {
        return true
    } else if (a[0] == b[0]) && (a[1] < b[1]){
        return true
    } else {
        return false
    }
}
if N != 1 {
    for i in 0..<(N-1) {
        var smallest = i
        for j in (i+1)..<N {
            smallest = compare(coordinates[smallest], coordinates[j]) ? smallest : j     
        }
        coordinates.swapAt(smallest, i)
    }
}

var str = ""
for coordinate in coordinates {
    str += "\(coordinate[0]) \(coordinate[1])\n"
}
str.removeLast()
print(str)

// 정렬을 직접 안하고 sort에 넣었더니
let N = Int(readLine()!)!
var coordinates:[[Int]] = []
for _ in 0..<N {
    coordinates.append(readLine()!.split{$0 == " "}.map{Int(String($0))!})
}
func compare(_ a: [Int], _ b: [Int]) -> Bool {
    if a[0] < b[0] {
        return true
    } else if (a[0] == b[0]) && (a[1] < b[1]){
        return true
    } else {
        return false
    }
}
coordinates.sort(by: {compare($0, $1)})
var str = ""
for coordinate in coordinates {
    str += "\(coordinate[0]) \(coordinate[1])\n"
}
str.removeLast()
print(str)

// 빠른 입력에, tuple 비교로 넣었더니 80ms로 최소.

import Foundation
final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}

let fIO = FileIO()

let N = fIO.readInt()
var coordinates = Array(repeating: (0, 0), count: N)
for i in 0..<N {
    coordinates[i] = (fIO.readInt(), fIO.readInt())
}

coordinates.sort(by: <)
var str = ""
for coordinate in coordinates {
    str += "\(coordinate.0) \(coordinate.1)\n"
}
str.removeLast()
print(str)