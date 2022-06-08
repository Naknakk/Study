let maxNumber = 1000
var numbers = Array(repeating: true, count: maxNumber+1)
numbers[0] = false
numbers[1] = false

// 에라토스테네스의 체
for i in 0...maxNumber {
    if numbers[i] {
        var n = i * 2
        while n <= maxNumber {
            numbers[n] = false
            n += i
        }        
    }
}

var N = Int(readLine()!)!
var inputs = readLine()!.split{$0 == " "}.map{Int(String($0))!}
var count = 0

while N > 0 {
    if numbers[inputs[N-1]] {
        count += 1
    }
    N -= 1
}
print(count)