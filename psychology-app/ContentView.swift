import SwiftUI

struct ContentView: View {
    // Define the grid layout
    @State private var searchText: String = ""
    @State private var tipos: [Tipos] = []
    private let colors: [Color] = [.blue, .red, .green, .purple, .orange, .pink]
    
    private let gridLayout: [GridItem] = Array(repeating: .init(.flexible()), count: 3)

    var body: some View {
            NavigationView {
                VStack{
                    SearchBar(searchText: $searchText)
                    Text(searchText)
                        .onAppear{decodeTipos()}
                    ScrollView {
                        LazyVGrid(columns: gridLayout, spacing: 20) {
                            ForEach(tipos.indices, id: \.self) { index in
                                NavigationLink(destination: DetailView(tipo: tipos[index])) {
                                    GridItemView(index: tipos[index], color: colors[index % colors.count])
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    .navigationTitle("Ayuda Psicologica")
                }
                .overlay(
                    FloatingCallButton()
                        .padding(.trailing, 16)
                        .padding(.bottom, 16),
                    alignment: .bottomTrailing
                )
            }
        }
    
    // Functions
    func decodeTipos(){
        var json = """
        [
            {
                "name": "Ataque de ansiedad",
                "description": "Es una blab bla bla..."
            },
            {
                "name": "Ataque de panico",
                "description": "Es una blab bla bla..."
            },
            {
                "name": "Trastorno Bipolar",
                "description": "Es una blab bla bla..."
            },
                    {
                        "name": "Ataque de ansiedad",
                        "description": "Es una blab bla bla..."
                    },
                    {
                        "name": "Ataque de panico",
                        "description": "Es una blab bla bla..."
                    },
                    {
                        "name": "Trastorno Bipolar",
                        "description": "Es una blab bla bla..."
                    }
        ]
        """
        
        let decoder = JSONDecoder()
        let data = try? decoder.decode([Tipos].self, from: json.data(using: .utf8)!)
        print(data)
        tipos = data ?? []
        
    }
    
    
}

struct Tipos:Decodable,Hashable {
    let name, description: String
}

struct GridItemView: View {
    let index: Tipos
    let color: Color

    var body: some View {
        VStack {
            Text(index.name)
                .padding()
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
