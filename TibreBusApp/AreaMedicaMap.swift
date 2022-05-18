//
//  AreaMedicaMap.swift
//  TibreBusApp
//
//  Created by Alfredo Rodriguez Coronado on 17/05/22.
//

import SwiftUI
import MapKit

struct AreaMedicaMap: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.691097, longitude: -100.345740), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    let locations = [
        Location(numStation: "7", coordinate: CLLocationCoordinate2D(latitude: 25.687651, longitude: -100.345790), horario: ["8:00 am", "10:00 am", "12:00 pm", "2:00 pm", "4:00 pm", "6:00 pm", "8:00 pm", "10:00 pm"]),
        Location(numStation: "1", coordinate: CLLocationCoordinate2D(latitude: 25.689120, longitude: -100.347052), horario: ["8:00 am", "10:20 am", "12:40 pm", "3:20 pm", "5:40 pm", "8:00 pm"]),
        Location(numStation: "2", coordinate: CLLocationCoordinate2D(latitude: 25.691758, longitude: -100.346900), horario: ["8:20 am", "10:40 am", "1:20 pm", "3:40 pm", "6:00 pm", "8:20 pm"]),
        Location(numStation: "3", coordinate: CLLocationCoordinate2D(latitude: 25.693755, longitude: -100.346794), horario: ["8:40 am", "11:00 am", "1:40 pm", "4:00 pm", "6:20 pm", "8:40 pm"]),
        Location(numStation: "4", coordinate: CLLocationCoordinate2D(latitude: 25.695005, longitude: -100.345507), horario: ["9:00 am", "11:20 am", "2:00 pm", "4:20 pm", "6:40 pm", "9:00 pm"]),
        Location(numStation: "5", coordinate: CLLocationCoordinate2D(latitude: 25.695295, longitude: -100.344466), horario: ["9:20 am", "11:40 am", "2:20 pm", "4:40 pm", "7:00 pm", "9:20 pm"]),
        Location(numStation: "6", coordinate: CLLocationCoordinate2D(latitude: 25.691669, longitude: -100.345026), horario: ["9:40 am", "12:00 pm", "2:40 pm", "5:00 pm", "7:20 pm", "9:40 pm"])
    ]
    
    var body: some View {
        VStack {
            Text("Unidad Mederos")
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

struct AreaMedicaMap_Previews: PreviewProvider {
    static var previews: some View {
        AreaMedicaMap()
    }
}
