let inputs = readLine()!.split{$0 == " "}.map{Int(String($0))!}
let (min, max) = (inputs[0], inputs[1])

let primes = Array(min...max).filter{i in 
    let endpoint = Double(i).squareRoot()
    return i != 1 && Array(1..<Int(endpoint)).filter{i%$0==0}.count == 1}

if primes.isEmpty {
    print(-1)
} else {
    print(primes.reduce(0, {$0 + $1}))
    print(primes[0])
}