import UIKit

class TuretInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var identifierLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    var info: TuretInfo?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with turetInfo: TuretInfo) {
        self.info = turetInfo
        let turetId = info?.id.description ?? "n.d."
        identifierLabel.text = "Turet " + turetId
        addressLabel.text = info?.address
        
    }

}
