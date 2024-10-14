import UIKit
//Packages taken from: https://www.toyotaoftacoma.com/op-what-are-the-trims-of-the-2014-toyota-prius/?srsltid=AfmBOooWXs89Y8V4gcXW6KuA6j_tnimmpRQJNj35TaafO1N0J0UFxngl
//The toyota website doesnt display 2014 toyota options
//trim levels are two three four and five
class newPrius {
    var color: String
    var trim: String
    var intcolor: String
    var aeropackage = false
    
    init(color: String, trim: String, intcolor: String, aeropackage: Bool = false) {
        self.color = color
        self.trim = trim
        self.intcolor = intcolor
        self.aeropackage = aeropackage
    }
    
    func printcar() {
        if self.aeropackage == true{
            print(self.color + "Prius" + self.trim + "with the aero package and a " + self.intcolor + " interior")
        }else{
            print(self.color + " Prius " + self.trim + " with a " + self.intcolor + " interior")
        }
    }
    func paintcar(newcol: String) {
        if newcol != self.color{
            color = newcol
            print("Your car has been repainted to " + self.color)
        }else{
            print("Your car is already that color")
        }
    }
    func buyaero(){
        if self.aeropackage == true{
            print("You already own this package")
        }else{
            aeropackage = true
            print("Package successfully purchased")
        }
    }
}

var myprius = newPrius(color: "Red", trim: "Four", intcolor: "Beige")
myprius.printcar()
myprius.paintcar(newcol: "Blue")
myprius.printcar()
myprius.buyaero()
myprius.printcar()
