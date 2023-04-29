import UIKit

class ListaTuretViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var datasource: [TuretInfo] {
       return [
            TuretInfo(id: 1, address: "Via Alessandro Magno", buildingDate: "1957", underMaintenance: false),
            TuretInfo(id: 2, address: "Via Roma", buildingDate: "1949", underMaintenance: false),
            TuretInfo(id: 3, address: "Via Accademia delle Scienze", buildingDate: "1993", underMaintenance: true)
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TuretInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "TuretInfoTableViewCell")
        tableView.reloadData()
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TuretInfoTableViewCell", for: indexPath) as? TuretInfoTableViewCell else {
            return UITableViewCell()
        }
        let info = datasource[indexPath.row]
        cell.configure(with: info)
        return cell
        
    }
    
}

