import SwiftUI
import UIKit

struct ContentView: View {
    @State private var lettuce = false
    @State private var tomato = false
    @State private var onion = false
    @State private var cheese = ""
    
    var body: some View {
        VStack {
            
            Text("Bill's Burgers").fontWeight(.bold).font(.title)
            Text("Burger Options")
            Toggle("Lettuce",isOn: $lettuce)
                .toggleStyle(.button)
            Toggle("Tomato", isOn: $tomato)
                .toggleStyle(.button)
            Toggle("Onion", isOn: $onion)
                .toggleStyle(.button)
            Text("Cheese:").position(x: CGFloat(160), y: CGFloat(10))
            TextField(text: $cheese, prompt: Text("Type Here")) {
            } .disableAutocorrection(true)
                .position(x: CGFloat(390), y: CGFloat(-85))
        }
        let burger = CustomBurger(l:lettuce, t:tomato, o:onion, ch:cheese)
        VStack{
            Text("Your Burger's name:").font(.title2).position(x: CGFloat(200), y: CGFloat(-150))
            Text(burger.nameburger()).multilineTextAlignment(.center).position(x: CGFloat(200), y: CGFloat(-200))
            if burger.nameburger() != "The cheese you chose was out of stock." && burger.nameburger() != "Please Choose a Cheese"{
                Text("Price:").font(.title2).position(x: CGFloat(200), y: CGFloat(-200))
                Text(burger.getprice()).multilineTextAlignment(.center).position(x:200, y: -250)
            }else{
                Text("Cheese List: \nCheddar, Brie, Gouda, Parmesan, Blue, Cheese, Mozzarella, Feta, Swiss, Gruyère, Ricotta, Camembert, Cotija, Manchego, Provolone, Asiago").multilineTextAlignment(.center)
            }
        }
    }
}

struct CustomBurger {
    var l = false
    var t = false
    var o = false
    var ch = ""
    //list of cheeses because i have no idea how to do a dropdown
    var cheeseStock: [String: (Bool, Float)] = [
        "Cheddar": (true, 8.5),
        "Brie": (false, 9.0),
        "Gouda": (true, 7.5),
        "Parmesan": (true, 9.5),
        "Blue Cheese": (false, 6.0),
        "Mozzarella": (true, 8.0),
        "Feta": (false, 7.0),
        "Swiss": (true, 7.5),
        "Gruyère": (false, 9.2),
        "Ricotta": (true, 8.8),
        "Camembert": (false, 9.1),
        "Cotija": (true, 6.5),
        "Manchego": (false, 8.3),
        "Provolone": (true, 7.8),
        "Asiago": (false, 7.2)
    ]
    func nameburger() -> String{
        var burgname = ""
        if ch == "" || (cheeseStock[ch] == nil){
            return "Please Choose a Cheese"
        }else{
            for (i, j) in cheeseStock{
                if i == ch{
                    if j.0 == true{
                        burgname = ch + " Cheese "
                        break
                    }else{
                        return "The cheese you chose was out of stock."
                    }
                }
            }
        }
        if l{
            burgname += "Lettuce "
        }
        if t{
            burgname += "and Tomato\n "
        }
        burgname += "Burger "
        if o{
            burgname += "with Onions"
        }
        return burgname
    }
    func getprice() -> String{
        var price: Float = 3.00
        for (i, j) in cheeseStock{
            if i == ch{
                if j.0 == true{
                    price += j.1
                    break
                }else{
                    return "The cheese you chose was out of stock."
                }
            }
        }
        if l{
            price += 0.75
        }
        if t{
            price += 0.75
        }
        if o{
            price += 0.50
        }
        return "$" + String(price)
    }
}

