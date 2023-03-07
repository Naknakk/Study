import SwiftUI

struct WeeklyRecord: View {
    @State var colorSet: [[Double]] = []
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(getTodayColor(colorSet: colorSet))
                .frame(width: 97, height: 97, alignment: .center)
                .overlay {
                    Circle().stroke(lineWidth: 3).fill(Color.afterLifeColor)
                        .frame(width: 98, height: 98, alignment: .center)
                    
                }
            YearLifeTimeCalendarRow(task: TestTask(title: "Study", color: Color.adultColor))
            YearLifeTimeCalendarRow(task: TestTask(title: "Work", color: Color.childColor))
            YearLifeTimeCalendarRow(task: TestTask(title: "Training", color: Color.elderColor))
            YearLifeTimeCalendarRow(task: TestTask(title: "Running", color: Color.teenagerColor))
            YearLifeTimeCalendarRow(task: TestTask(title: "test", color: Color.black))

        }
    }
    
    func getTodayColor(colorSet: [[Double]]) -> Color {
        var output: [Double] = [0.0, 0.0, 0.0]
        var counter = 0.0
        for color in colorSet {
            if color == [0.0, 0.0, 0.0] {
                counter += 1.0
            } else {
                for i in 0..<3 {
                    output[i] += color[i]
                }
            }
       }
        let rate = (output.max()! / 255.0)
        
        let darkrate = 1.0 - (counter / Double(colorSet.count))
        let darkrateSmooth = (2.0 - darkrate) * darkrate
        
        for i in 0..<3 {
            output[i] = (output[i] / rate) * darkrateSmooth
            
        }
        print(output)
        return Color(output[0], output[1], output[2])
    }
    
    func YearLifeTimeCalendarRow(days: [Int]) -> some View {
        return HStack(spacing: 0) {
            ForEach(days, id: \.self) { day in
                Circle().stroke(Color.beforLifeColor)
                    .padding(3)
                    .frame(width: 40, height: 40, alignment: .center)
            }
        }
    }
    
    struct TestTask {
        let title: String
        let color: Color
    }
    
    func YearLifeTimeCalendarRow(task: TestTask) -> some View {
        return Button(action: {
            colorSet.append(task.color.getrgb())
            print(colorSet)
            //print(getTodayColor(colorSet: colorSet).getrgb())
        }, label: {
            HStack {
                Circle().fill(task.color)
                    .frame(width: 20, height: 20, alignment: .center)
                Text(task.title)
                    .font(.largeTitle)
            }
        })
    }
}

struct WeeklyRecord_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyRecord()
    }
}
