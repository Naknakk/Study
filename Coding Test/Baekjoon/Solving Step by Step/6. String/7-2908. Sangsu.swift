var input = readLine()!.split{$0 == " "}.map{String($0)}

var (A, B) = (Array(input[0]), Array(input[1]))

(A, B) = (A.map{String($0)}.reversd(), B.map{String($0)}.reversed())

let (a, b) = (A.reduce("", {$0 + $1}), B.reduce("", {$0 + $1}))
let (numberA, numberB) = (Int(a)!, Int(b)!)
if numberA > numberB {
    print(numberA)
} else {
    print(numberB)
}