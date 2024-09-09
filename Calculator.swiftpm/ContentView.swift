import SwiftUI

struct ContentView: View {
    @State private var tiktok = false
    @State private var reddit = false
    @State private var insta = false
    @State private var rep = false
    var body: some View {
        VStack {
            Toggle("Do you have TikTok?",isOn: $tiktok)
            Toggle("Do you use Reddit?", isOn: $reddit)
            Toggle("Do you have Instagram", isOn: $insta)
            Toggle("Do you care about your online reputation?",isOn: $rep)
            if ((tiktok || reddit) && rep) || rep {
                Text("Chronically online")
            } else if (tiktok && !rep) || tiktok {
                Text("You have brainrot")
            } else if insta && !rep {
                Text("You enjoy doomscrolling reels.")
            } else if insta && tiktok {
                Text("Meme Enjoyer")
            } else if reddit {
                Text("You are a redditor")
            } else if !(tiktok && rep && reddit && insta) {
                Text("you are not chronically online")
            } else if insta && rep{
                Text("You are trying to be an influencer")
            }
        }
    }
}
