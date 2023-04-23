

class Turet: Codable {
    var id: Int
    var address: String
    var buildingDate: String
    var underMaintenance: Bool
    
    init(id: Int, address: String, buildingDate: String, underMaintenance: Bool) {
        self.id = id
        self.address = address
        self.buildingDate = buildingDate
        self.underMaintenance = underMaintenance
    }
}
