//
//  TuretDetailViewController.swift
//  Turet_UIKit_UNITO
//
//  Created by Fulgione Marilyn on 06/05/23.
//

import UIKit
import MapKit
class TuretDetailViewController: UIViewController {
    
    var turet: Turet?
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var buildingDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        setupLayout()
    }
    
    func configure(with turet: Turet) {
        self.turet = turet
    }
    
    func setupNavigationBar() {
        //Title
        var id = "n.d."
        if let turetId = turet?.id {
            id = String(turetId)
        }
        self.title = "Turet \(id)"
        
        //Back item
        self.navigationItem.backBarButtonItem?.title = "Indietro"
    }
    
    func setupLayout() {
        addressLabel.text = turet?.address ?? "Indirizzo non disponibile"
        
        if let buildingDate = turet?.buildingDate {
            buildingDateLabel.text = "In funzione dal " +  buildingDate
        } else {
            buildingDateLabel.text = "Anno di costruzione non disponibile"
        }
    }
    
}
