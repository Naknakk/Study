/*************************************
 
 Do not modify this file.
 
 *************************************/

import UIKit

class ListViewController: UITableViewController {
        
    private var dataSource = ListDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.sortData()
        
        tableView.register(UINib(nibName: "ArbitraryLeftRightTextCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.numberOfItems()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ArbitraryLeftRightTextCell

        cell.leftLabel.text = dataSource.leftHandTextFor(index: indexPath.row)
        cell.rightLabel.text = dataSource.rightHandTextFor(index: indexPath.row)
        
        return cell
    }
    
    // This is a guess for the height of each row
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    // This tells the table to make the row the correct height based on the contents
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
