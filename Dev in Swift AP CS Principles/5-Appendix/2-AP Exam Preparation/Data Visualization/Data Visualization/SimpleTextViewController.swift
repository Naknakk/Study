import UIKit

class SimpleTextViewController: UIViewController {
    
    // Outlets to all the elements of the UI go here.
    @IBOutlet var summaryLabel: UILabel!
    @IBOutlet var otherTextLabel: UILabel!

    // This property contains an array of all the items in the JSON file.
    var summaryData = dataItems
    
    // This method runs once after the view is loaded. It's used to
    // configure the user interface.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        summaryLabel.text = "Important Statistics\n\nSample"
        otherTextLabel.text = "100% of students say Swift is great."
    }
        
    /*****************************
     
       Add helper methods below.
     
     *****************************/
    
    /*
     func aHelper() {
     
     }
     */
    
}
