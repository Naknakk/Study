let input = readLine()!.split{$0 == " "}.map{Int(String($0))!}

func reverse(of n: Int) -> Int{
    let result = (n%10)*100 + ((n/10)%10)*10 + (n/100)
    return result
}

print(max(reverse(of: input[0]),reverse(of: input[1])))