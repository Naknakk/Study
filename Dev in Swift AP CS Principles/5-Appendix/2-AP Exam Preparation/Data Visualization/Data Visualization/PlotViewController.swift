import UIKit

class PlotViewController: UIViewController {
    
    @IBOutlet var plotView: PlotView!
    @IBOutlet var keyView: ChartKeyView!
    
    // This property contains an array of all the items in the JSON file.
    var pieChartData = dataItems
    
    // This method runs once after the view is loaded. It's used to
    // configure the user interface.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plotView.points.append(PlotPoint(x: 0.25, y: 0.65, color: .blue))
        plotView.points.append(PlotPoint(x: 0.5, y: 0.15, color: .orange))
    }
    
    /*****************************
     
       Add helper methods below.
     
     *****************************/
    
    /*
    func aHelper() {
     
    }
    */
    
}
