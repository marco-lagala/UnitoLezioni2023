import UIKit

class TuretInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var identifierLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    var info: Turet?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with turetInfo: Turet) {
        self.info = turetInfo
        let turetId = info?.id.description ?? "n.d."
        identifierLabel.text = "Turet " + turetId
        addressLabel.text = info?.address
        
    }

}
