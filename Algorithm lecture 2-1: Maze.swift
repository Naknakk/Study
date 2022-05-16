var maze: [[Int]] = [
    [0, 0, 0, 0, 0, 0, 0, 1], 
    [0 ,1 ,1 ,0, 1, 1, 0, 1], 
    [0, 0, 0, 1, 0, 0, 0, 1],
    [0, 1, 0, 0, 1, 1, 0, 0],
    [0, 1, 1, 1, 0, 0, 1, 1],
    [0, 1, 0, 0, 0, 1, 0, 1],
    [0, 0, 0, 1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0, 1, 0, 0]
]
typealias Position = (Int, Int)

let exit = (7, 7)
let start = (0, 0)


let white = 0
let blue = 1
let green = 2
let red = 3



func findPath(position: Position) -> Bool {
    let (x, y) = position
    if x < 0 || y < 0  || x > 7 || y > 7 {
        return false
    }
    // 출구를 green 으로 칠하고 종료하는 base case
    if (x, y) == exit {
        maze[x][y] = green
        return true
    } 
    
    // 한번도 안 간 곳이라면 우선 방문 기록 남기기
    if maze[x][y] == white {
        maze[x][y] = green
    }else {
        return false
    }
    
    
    if (findPath(position: (x-1, y)) || findPath(position: (x, y+1)) || findPath(position: (x+1, y)) || findPath(position: (x, y-1))) {
        return true
    }else {
        maze[x][y] = red
        return false
    }
}

findPath(position: start)
print(maze)

[
    [2, 3, 3, 3, 3, 3, 3, 1], 
    [2, 1, 1, 3, 1, 1, 3, 1], 
    [2, 3, 3, 1, 3, 3, 3, 1], 
    [2, 1, 3, 3, 1, 1, 3, 3], 
    [2, 1, 1, 1, 3, 3, 1, 1], 
    [2, 1, 2, 2, 2, 1, 3, 1], 
    [2, 2, 2, 1, 2, 2, 2, 1], 
    [0, 1, 1, 1, 0, 1, 2, 2]
]
