let input = readLine()!.split{$0 == " "}.map{Int(String($0))!}
let (N, M) = (input[0], input[1])
let (xRange, yRange) = (0...(M-8), 0...(N-8))

var board = Array(repeating: readLine()!, count: N)
var boardChecker = Array(repeating: Array(repeating: false, count: M), count: N)