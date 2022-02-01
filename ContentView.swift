import SwiftUI
import Subsonic

struct ContentView: View {
    let names = ["Bird", "Car", "Money"]
    var body: some View {
        VStack {
            NavigationView {
                ScrollView{
                    ForEach(names, id: \.self){ name in
                        Button{
                            play(sound: "thunder.m4a")
                            print("worked")
                        } label: {
                            Image(name)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(25)
                                .padding(.horizontal)
                        }
                    }
                }
                .navigationTitle("Noah's App")
            }
            .navigationViewStyle(.stack)
        }
    }
}
