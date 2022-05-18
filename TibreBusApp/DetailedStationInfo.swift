//
//  DetailedStationInfo.swift
//  TibreBusApp
//
//  Created by Alfredo Rodriguez Coronado on 17/05/22.
//

import SwiftUI
import MapKit

struct DetailedStationInfo: View {
    
    var location: Location
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Estación \(location.numStation)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Horario de salida:")
                    .font(.title)
                    .fontWeight(.bold)
                ForEach(location.horario, id: \.self) { index in
                    Text(index)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(.vertical)
                }
            }
        }
    }
}

struct DetailedStationInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailedStationInfo(location:  Location(numStation: "1", coordinate: CLLocationCoordinate2D(latitude: 25.615466, longitude: -100.275324), horario: ["8:00 am", "10:00 am", "12:00 pm", "2:00 pm", "4:00 pm", "6:00 pm", "8:00 pm", "10:00 pm"]))
    }
}
