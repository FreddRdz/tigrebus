//
//  AgropecuariasMap.swift
//  TibreBusApp
//
//  Created by Alfredo Rodriguez Coronado on 17/05/22.
//

import SwiftUI
import MapKit

struct AgropecuariasMap: View {
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.779806, longitude: -100.288142), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    let locations = [
        Location(numStation: "1", coordinate: CLLocationCoordinate2D(latitude: 25.769290, longitude: -100.292556), horario: ["8:00 am", "10:00 am", "12:00 pm", "2:00 pm", "4:00 pm", "6:00 pm", "8:00 pm"]),
        Location(numStation: "2", coordinate: CLLocationCoordinate2D(latitude: 25.781490, longitude: -100.292040), horario: ["8:20 am", "10:20 am", "12:20 pm", "2:20 pm", "4:20 pm", "6:20 pm", "8:20 pm"]),
        Location(numStation: "3", coordinate: CLLocationCoordinate2D(latitude: 25.784277, longitude: -100.285852), horario: ["8:40 am", "10:40 am", "12:40 pm", "2:40 pm", "4:40 pm", "6:40 pm", "8:40 pm"]),
        Location(numStation: "4", coordinate: CLLocationCoordinate2D(latitude: 25.783169, longitude: -100.286727), horario: ["9:00 am", "11:00 am", "1:00 pm", "3:00 pm", "5:00 pm", "7:00 pm", "9:00 pm"]),
        Location(numStation: "5", coordinate: CLLocationCoordinate2D(latitude: 25.785156, longitude: -100.287297), horario: ["9:20 am", "11:20 am", "1:20 pm", "3:20 pm", "5:20 pm", "7:20 pm", "9:20 pm", "10:00 pm"]),
        Location(numStation: "6", coordinate: CLLocationCoordinate2D(latitude: 25.785884, longitude: -100.286944), horario: ["9:40 am", "11:40 am", "1:40 pm", "3:40 pm", "5:40 pm", "7:40 pm", "9:40 pm"])
    ]
    
    var body: some View {
        VStack {
            Text("Unidad Agropecuarias")
                .font(.title)
                .fontWeight(.bold)
            NavigationView {
                Map(coordinateRegion: $mapRegion, annotationItems: locations){ location in
                    MapAnnotation(coordinate: location.coordinate) {
                        NavigationLink {
                            DetailedStationInfo(location: location)
                                
                        } label: {
                            VStack {
                                Text(location.numStation)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                Circle()
                                    .stroke(.red, lineWidth: 3)
                                    .frame(width: 18, height: 18)
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

struct AgropecuariasMap_Previews: PreviewProvider {
    static var previews: some View {
        AgropecuariasMap()
    }
}
