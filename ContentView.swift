import SwiftUI
import Subsonic

struct ContentView: View {
    let names = ["Bird", "Car", "Money"]
    @State var blockColor = Color.blue
    var body: some View {
            ZStack {
                //Zstack shows 3 ways to set up Views
                Color.cyan
                NavigationView {
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(names, id: \.self){ name in
                                Button{
                                    play(sound: "\(name).m4a")
                                } label: {
                                    Image(name)
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(25)
                                        .padding(.horizontal)
                                }
                            }
                            Text("Child Object")
                        }
                    }
                    .navigationTitle("Noah's App")
                }
                .navigationViewStyle(.stack)
                Text("Im ON TOP")
            }
        //Changed font on parent object and subsequently changed font on all child text objects.
            .font(.title)
        blockColor
        Button("Change Color"){
            if(blockColor == Color.blue){
                self.blockColor = Color.green
            } else if(blockColor == Color.green){
                self.blockColor = Color.blue
            }
        }
        .foregroundColor(blockColor)
        
        
    }
}
