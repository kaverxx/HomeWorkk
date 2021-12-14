//TO:DO Я попытался что-то написать, но из-за того что случайно пропустил урок - не успеваю разобраться в теме

final class Computer {
    
    var computerParts[
        "Mather Card": Item(brand: "AMD", count: 1, part: Part, (name: "Mather Card")),
        "Video Card": Item(brand: "NVidea", count: 1, part: Part, (name: "Video Card")),
        "Power Unit": Item(brand: "aaaa", count: 1, part: Part, (name: "Power Unit"))
    ]
    
    var check = 0
    
    func checkParts(ItemName name: String) throws -> Part {
        guard let item = computerParts[name] else {
            throw ComputerError.invalidPart
        }
    }
}

do {
    let onComputer = try Computer.checkParts(ItemName: "Power Unit")
} catch let error {
    print(error.invalidPart)
}

