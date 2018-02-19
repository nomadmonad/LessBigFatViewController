import UIKit

class ViewController: UITableViewController {
    let items = ["Hello", "Less", "Fat", "TableView"]
    let identifier = "someCell"
    var source: SomeDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    private func setupTableView() {
        source = SomeDataSource(items: items,
                                identifier: identifier)
        self.tableView.dataSource = source
    }
}

//MARK:- UITableViewDelegate

extension ViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // do something
    }
}
