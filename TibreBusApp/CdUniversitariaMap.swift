//
//  CdUniversitariaMap.swift
//  TibreBusApp
//
//  Created by Alfredo Rodriguez Coronado on 16/05/22.
//

import SwiftUI
import MapKit

struct CdUniversitariaMap: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.726910, longitude: -100.312297), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))

    let locations = [
        Location(numStation: "1", coordinate: CLLocationCoordinate2D(latitude: 25.725801, longitude: -100.309017), horario: ["8:15 am", "10:30 am", "12:45 pm", "3:00 pm", "5:15 pm", "7:30 pm"]),
        Location(numStation: "2", coordinate: CLLocationCoordinate2D(latitude: 25.729015, longitude: -100.308519), horario: ["8:30 am", "10:45 am", "1:00 pm", "3:15 pm", "5:30 pm", "7:45 pm"]),
        Location(numStation: "3", coordinate: CLLocationCoordinate2D(latitude: 25.728747, longitude: -100.311569), horario: ["8:45 am", "11:00 am", "1:15 pm", "3:30 pm", "5:45 pm", "8:00 pm"]),
        Location(numStation: "4", coordinate: CLLocationCoordinate2D(latitude: 25.729603, longitude: -100.312993), horario: ["9:00 am", "11:15 am", "1:30 pm", "3:45 pm", "6:00 pm", "8:15 pm"]),
        Location(numStation: "5", coordinate: CLLocationCoordinate2D(latitude: 25.726160, longitude: -100.316875), horario: ["9:15 am", "11:30 am", "1:45 pm", "4:00 pm", "6:15 pm", "8:30 pm"]),
        Location(numStation: "6", coordinate: CLLocationCoordinate2D(latitude: 25.723974, longitude: -100.316945), horario: ["9:30 am", "11:45 am", "2:00 pm", "4:15 pm", "6:30 pm", "8:45 pm"]),
        Location(numStation: "7", coordinate: CLLocationCoordinate2D(latitude: 25.723940, longitude: -100.313413), horario: ["9:45 am", "12:00 pm", "2:15 pm", "4:30 pm", "6:45 pm", "9:00 pm"]),
        Location(numStation: "8", coordinate: CLLocationCoordinate2D(latitude: 25.723849, longitude: -100.311633), horario: ["10:00 am", "12:15 pm", "2:30 pm", "4:45 pm", "7:00 pm", "9:15 pm"]),
        Location(numStation: "9", coordinate: CLLocationCoordinate2D(latitude: 25.723853, longitude: -100.309741), horario: ["10:15 am", "12:30 pm", "2:45 pm", "5:00 pm", "7:15 pm", "9:30 pm"])
    ]
            
    
    var body: some View {
        VStack {
            Text("Ciudad universitaria")
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

struct CdUniversitariaMap_Previews: PreviewProvider {
    static var previews: some View {
        CdUniversitariaMap()
    }
}
