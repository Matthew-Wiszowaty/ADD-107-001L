import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            let playerdata: [[Any]] = [
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
            var team = [98: playerdata[1],
                        95: playerdata[2],
                        92: playerdata[3],
                        91: playerdata[4],
                        90: playerdata[5],
                        89: playerdata[6],
                        86: playerdata[7],
                        84: playerdata[8],
                        83: playerdata[9],
                        77: playerdata[10],
                        76: playerdata[11],
                        73: playerdata[12],
                        71: playerdata[13],
                        70: playerdata[14],
                        68: playerdata[15],
                        67: playerdata[16],
                        62: playerdata[17],
                        59: playerdata[18],
                        43: playerdata[19],
                        36: playerdata[20],
                        28: playerdata[21],
                        23: playerdata[22],
                        22: playerdata[23],
                        17: playerdata[24],
                        16: playerdata[25],
                        15: playerdata[26],
                        12: playerdata[27],
                        8: playerdata[28],
                        42: playerdata[29],
                        78: playerdata[30],
                        46: playerdata[31],
                        38: playerdata[32],
                        4: playerdata[33],
                        44: playerdata[34],
                        14: playerdata[35],
                        55: playerdata[36],
                        25: playerdata[37],
                        5: playerdata[38],
                        41: playerdata[39],
                        72: playerdata[40],
                        39: playerdata[41],
                        33: playerdata[42],
                        34: playerdata[43],
                        40: playerdata[44],
                        
            ]
            

        }
        func averageheight() {
            print(team[98])
        }
    }
}
