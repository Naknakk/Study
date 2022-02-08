import UIKit

class PieChartViewController: UIViewController {
    
    @IBOutlet var pieChartView: PieChartView!
    @IBOutlet var keyView: ChartKeyView!
    
    // This property contains an array of all the items in the JSON file.
    var pieChartData = dataItems

    // This method runs once after the view is loaded. It's used to
    // configure the user interface.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pieChartView.wedges.append(PieWedge(proportion: 0.35, color: .green))
        pieChartView.wedges.append(PieWedge(proportion: 0.25, color: .purple))
    }
    
    /*****************************
     
       Add helper methods below.
     
     *****************************/
    
    /*
    func aHelper() {
     
    }
    */
    
}
