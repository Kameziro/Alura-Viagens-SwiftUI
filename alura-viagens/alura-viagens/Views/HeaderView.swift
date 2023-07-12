//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Cleber Neto on 12/07/23.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
 
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    VStack(spacing: 2.0) {
                        Text("Alura Viagens")
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                            .padding(.top, self.horizontalSizeClass == .compact ? 50 : 90)
                        Text("ESPECIAL")
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                        Text("BRASIL")
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 23 : 33))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                    }
                    .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 225 : 350, alignment: .top)
                    .background(Color.purple)
                    
                    HStack {
                        Button(action: {}) {
                            Text("Hoteís")
                                .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: horizontalSizeClass == .compact ? 100 : 150, height: horizontalSizeClass == .compact ? 50 : 75)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue,lineWidth: 10))
                        .background(Color.blue)
                        .offset(x: self.horizontalSizeClass == .compact ? 50 : view.size.width / 4)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Pacotes")
                                .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: horizontalSizeClass == .compact ? 100 : 150, height: horizontalSizeClass == .compact ? 50 : 75)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange,lineWidth: 10))
                        .background(Color.orange)
                        .offset(x: self.horizontalSizeClass == .compact ? -50 : -view.size.width / 4)
                    }
                    .offset(y: horizontalSizeClass == .compact ? -50 : -37.5)
                }
            }
        }
    }
    
    struct HeaderView_Previews: PreviewProvider {
        static var previews: some View {
            
            Group {
                HeaderView()
                    .environment(\.horizontalSizeClass, .compact)
                    .previewLayout(.fixed(width: 400, height: 220))
                
                HeaderView()
                    .environment(\.horizontalSizeClass, .regular)
                    .previewLayout(.fixed(width: 835, height: 310))
            }
        }
    }
}
