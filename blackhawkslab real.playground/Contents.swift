import UIKit
var playerdata: [[Any]] = [
    ["Connor Bedard", 2005, "Jul", "CAN", 178], // 5'10" = 178 cm
    ["Ilya Mikheyev", 1994, "Oct", "RUS", 188], // 6'2" = 188 cm
    ["Gavin Hayes", 2004, "May", "USA", 185], // 6'1" = 185 cm
    ["Frank Nazar", 2004, "Jan", "USA", 175], // 5'9" = 175 cm
    ["Paul Ludwinski", 2004, "Apr", "CAN", 180], // 5'11" = 180 cm
    ["Andreas Athanasiou", 1994, "Aug", "CAN", 188], // 6'2" = 188 cm
    ["Teuvo Teravainen", 1994, "Sep", "FIN", 180], // 5'11" = 180 cm
    ["Landon Slaggert", 2002, "Jun", "USA", 183], // 6'0" = 183 cm
    ["Marek Vanacker", 2006, "Apr", "CAN", 185], // 6'1" = 185 cm
    ["Patrick Maroon", 1988, "Apr", "USA", 191], // 6'3" = 191 cm
    ["Nick Lardis", 2005, "Jul", "CAN", 180], // 5'11" = 180 cm
    ["Lukas Reichel", 2002, "May", "DEU", 183], // 6'0" = 183 cm
    ["Taylor Hall", 1991, "Nov", "CAN", 185], // 6'1" = 185 cm
    ["Cole Guttman", 1999, "Apr", "USA", 175], // 5'9" = 175 cm
    ["Martin Misiak", 2004, "Sep", "SVK", 188], // 6'2" = 188 cm
    ["Samuel Savoie", 2004, "Mar", "CAN", 178], // 5'10" = 178 cm
    ["Brett Seney", 1996, "Feb", "CAN", 175], // 5'9" = 175 cm
    ["Tyler Bertuzzi", 1995, "Feb", "CAN", 188], // 6'2" = 188 cm
    ["Jalen Luypen", 2002, "Jun", "CAN", 178], // 5'10" = 178 cm
    ["Ryder Rolston", 2001, "Oct", "USA", 185], // 6'1" = 185 cm
    ["Colton Dach", 2003, "Jan", "CAN", 193], // 6'4" = 193 cm
    ["Philipp Kurashev", 1999, "Oct", "CHE", 183], // 6'0" = 183 cm
    ["Joey Anderson", 1998, "Jun", "USA", 183], // 6'0" = 183 cm
    ["Nick Foligno", 1987, "Oct", "USA", 183], // 6'0" = 183 cm
    ["Jason Dickinson", 1995, "Jul", "CAN", 188], // 6'2" = 188 cm
    ["Craig Smith", 1989, "Sep", "USA", 185], // 6'1" = 185 cm
    ["Zachary Sanford", 1994, "Nov", "USA", 193], // 6'4" = 193 cm
    ["Ryan Donato", 1996, "Apr", "USA", 183], // 6'0" = 183 cm
    ["Nolan Allan", 2003, "Apr", "CAN", 188], // 6'2" = 188 cm
    ["TJ Brodie", 1990, "Jun", "CAN", 188], // 6'2" = 188 cm
    ["Louis Crevier", 2001, "May", "CAN", 203], // 6'8" = 203 cm
    ["Ethan Del Mastro", 2003, "Jan", "CAN", 193], // 6'4" = 193 cm
    ["Seth Jones", 1994, "Oct", "USA", 193], // 6'4" = 193 cm
    ["Wyatt Kaiser", 2002, "Jul", "USA", 183], // 6'0" = 183 cm
    ["Kevin Korchinski", 2004, "Jun", "CAN", 185], // 6'1" = 185 cm
    ["Artyom Levshunov", 2005, "Oct", "BLR", 188], // 6'2" = 188 cm
    ["Alec Martinez", 1987, "Jul", "USA", 185], // 6'1" = 185 cm
    ["Connor Murphy", 1993, "Mar", "USA", 193], // 6'4" = 193 cm
    ["Isaak Phillips", 2001, "Sep", "CAN", 191], // 6'3" = 191 cm
    ["Alex Vlasic", 2001, "Jun", "USA", 198], // 6'6" = 198 cm
    ["Laurent Brossoit", 1993, "Mar", "CAN", 191], // 6'3" = 191 cm
    ["Drew Commesso", 2002, "Jul", "USA", 188], // 6'2" = 188 cm
    ["Petr Mrazek", 1992, "Feb", "CZE", 188], // 6'2" = 188 cm
    ["Arvid Soderblom", 1999, "Aug", "SWE", 191] // 6'3" = 191 cm
]
var team = [98: playerdata[0],
            95: playerdata[1],
            92: playerdata[2],
            91: playerdata[3],
            90: playerdata[4],
            89: playerdata[5],
            86: playerdata[6],
            84: playerdata[7],
            83: playerdata[8],
            77: playerdata[9],
            76: playerdata[10],
            73: playerdata[11],
            71: playerdata[12],
            70: playerdata[13],
            68: playerdata[14],
            67: playerdata[15],
            62: playerdata[16],
            59: playerdata[17],
            43: playerdata[18],
            36: playerdata[19],
            28: playerdata[20],
            23: playerdata[21],
            22: playerdata[22],
            17: playerdata[23],
            16: playerdata[24],
            15: playerdata[25],
            12: playerdata[26],
            8: playerdata[27],
            42: playerdata[28],
            78: playerdata[29],
            46: playerdata[30],
            38: playerdata[31],
            4: playerdata[32],
            44: playerdata[33],
            14: playerdata[34],
            55: playerdata[35],
            25: playerdata[36],
            5: playerdata[37],
            41: playerdata[38],
            72: playerdata[39],
            39: playerdata[40],
            33: playerdata[41],
            34: playerdata[42],
            40: playerdata[43]
]

// The functions for the actual tests
func avgheight() -> Int {
    var totalheight = 0
    
    for (key,player) in team {
        totalheight += player[4] as! Int
    }
    return totalheight/44
}

func avgage( year: Int) -> Int {
    var totalage = 0
    for (key,player) in team {
        totalage += (year - (player[1] as! Int))
    }
    return totalage/44
}

func sortbyage(year: Int) -> [[Any]]{
    var sortedbyage: [[Any]] = [[18,"Marek Vanacker"]]
    for (key,player) in team{
        var playerage = year - (player[1] as! Int)
        var currentp: [Any] = [playerage,player[0]]
        for i in 0..<sortedbyage.count {
            if currentp[1] as! String == sortedbyage[i][1] as! String{
                break
            }else if playerage > sortedbyage[i][0] as! Int || playerage == sortedbyage[i][0] as! Int{
                sortedbyage.insert(currentp, at: i)
                break
            } else if currentp[0] as! Int > sortedbyage[i][0] as! Int{
                if sortedbyage[i+1][0] as! Int > currentp[0] as! Int && i+1 > sortedbyage.count-1{
                    sortedbyage.append(currentp)
                    break
                } else {
                    sortedbyage.insert(currentp, at: i+1)
                    break
                }
            }
        }
    }
    print(sortedbyage)
    print(sortedbyage.count)
    return sortedbyage
}

func sortbycountry() ->[[String]]{
    var sortedbycountry: [[String]] = [["CAN"],["RUS"],["USA"],["FIN"],["DEU"],["SVK"],["CHE"],["BLR"],["CZE"],["SWE"]]
    for (key,player) in team{
        for i in 0...9{
            if player[3] as! String == sortedbycountry[i][0]{
                sortedbycountry[i].insert(player[0] as! String, at: 1)
            }
        }
    }
    return sortedbycountry
}

func mostfromcountry() -> String {
    var countries = ["CAN": 0, "RUS": 0, "USA": 0, "FIN": 0, "DEU": 0, "SVK": 0, "CHE": 0, "BLR": 0, "CZE": 0, "SWE": 0]
    for (country,digit) in countries {
        var x = 0
        for (key,player) in team {
            if country == player[3] as! String {
                x+=1
            }
        }
        countries[country] = x
    }
    print(countries)
    var most = "SWE"
    var keys = Array(countries.keys)
    for i in 0..<keys.count {
        for j in (i+1)..<keys.count{
            var k1 = keys[i]
            var k2 = keys[j]
            if countries[k1]! < countries[k2]!{
                if countries[k2]! > countries[most]! {
                    most = k2
                }
            }
        }
    }
    return most
}

func mostpopmonth() -> String {
    var months = ["Jan": 0, "Feb": 0, "Mar": 0, "Apr": 0, "May": 0, "Jun": 0, "Jul": 0, "Aug": 0, "Sep": 0, "Oct": 0, "Nov":0, "Dec":0]
    for (month,digit) in months {
        var x = 0
        for (key,player) in team {
            if month == player[2] as! String {
                x+=1
            }
        }
        months[month] = x
    }
    print(months)
    var most = "Jan"
    var keys = Array(months.keys)
    for i in 0..<keys.count {
        for j in (i+1)..<keys.count{
            var k1 = keys[i]
            var k2 = keys[j]
            if months[k1]! < months[k2]!{
                if months[k2]! > months[most]! {
                    most = k2
                }
            }
        }
    }
    return most
    
}
//All the functions for the results
print(avgheight(),"cm")
print(avgage(year: 2024))
print(mostfromcountry())
print(sortbycountry())
print(sortbyage(year: 2024))
print(mostpopmonth())
