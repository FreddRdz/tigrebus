//
//  Menu.swift
//  TibreBusApp
//
//  Created by Alfredo Rodriguez Coronado on 16/05/22.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack {
            Spacer()
            NavigationLink(destination: CdUniversitariaMap(), label: {
                Text("Bus Ciudad Universitaria")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            Spacer()
            NavigationLink(destination: AgropecuariasMap(), label: {
                Text("Bus Unidad Mederos")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            Spacer()
            NavigationLink(destination: AgropecuariasMap(), label: {
                Text("Bus Unidad Médica")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            Spacer()
            NavigationLink(destination: AreaMedicaMap(), label: {
                Text("Bus Unidad Agropecuaria")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            Spacer()
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
