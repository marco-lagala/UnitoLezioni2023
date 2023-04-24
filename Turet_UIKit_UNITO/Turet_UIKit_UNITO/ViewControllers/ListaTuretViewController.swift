import UIKit

class ListaTuretViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var datasource: [Turet] {
       return [
            Turet(id: 1, address: "Via Alessandro Magno", buildingDate: "1957", underMaintenance: false),
            Turet(id: 2, address: "Via Roma", buildingDate: "1949", underMaintenance: false),
            Turet(id: 3, address: "Via Accademia delle Scienze", buildingDate: "1993", underMaintenance: true)
        ]
    }
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ListaTuretViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //check if there is a valid element for the current row
        guard indexPath.row < datasource.count else {
            return UITableViewCell()
        }
        
        //check if the cell type is correctly registered
        /*guard let cell = tableView.dequeueReusableCell(withIdentifier: "TuretTableViewCell", for: indexPath) as? TuretTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: datasource[indexPath.row])
        return cell*/
        return UITableViewCell()
    }
    
}

