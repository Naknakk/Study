import UIKit

class BarChartViewController: UIViewController {
    
    @IBOutlet var barChartView: BarChartView!
    @IBOutlet var keyView: ChartKeyView!
    
    // This property contains an array of all the items in the JSON file.
    var pieChartData = dataItems
    
    // This method runs once after the view is loaded. It's used to
    // configure the user interface.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barChartView.bars.append(ChartBar(length: 0.8, color: .red))
        barChartView.bars.append(ChartBar(length: 0.3, color: .yellow))
    }
    
    /*****************************
     
       Add helper methods below.
     
     *****************************/
    
    /*
    func aHelper() {
     
    }
    */
    
}
