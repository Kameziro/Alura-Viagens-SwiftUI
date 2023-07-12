//
//  ContentView.swift
//  alura-viagens
//
//  Created by Cleber Neto on 12/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        
        NavigationView {
            GeometryReader { view in
            //MARK: - VStack Principal
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 225 : 390, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationTitle("Localização").edgesIgnoringSafeArea(.bottom)) {
                            CelulaViagemView(viagem: viagem)
                                }
                    }.navigationTitle("")
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
       

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
