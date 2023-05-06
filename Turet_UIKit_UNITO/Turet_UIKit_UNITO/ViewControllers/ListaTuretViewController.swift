import UIKit

class ListaTuretViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var datasource: [Turet] {
        return mockData
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.largeTitleDisplayMode = .always
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //check if there is a valid element for the current row
        guard indexPath.row < datasource.count else { return }
        
        let info = datasource[indexPath.row]
        guard let detailVC = storyboard.instantiateViewController(withIdentifier: "TuretDetailViewController") as? TuretDetailViewController else { return }
        detailVC.configure(with: info)
        detailVC.modalPresentationStyle = .fullScreen
        
        self.navigationController?.pushViewController(detailVC, animated: true)
        
        //prepare(for: UIStoryboardSegue(identifier: "showDetail", source: self, destination: detailVC), sender: nil)
        //performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
}

extension ListaTuretViewController {
    override var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}
