import UIKit

class SomeDataSource: NSObject, UITableViewDataSource {
    var items: [String]
    var cellIdentifier: String

    init(items: [String], identifier: String) {
        self.items = items
        self.cellIdentifier = identifier
    }
}

//MARK:- UITableViewDataSource

extension SomeDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,
                                                 for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}
