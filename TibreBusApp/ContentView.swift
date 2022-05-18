//
//  ContentView.swift
//  TibreBusApp
//
//  Created by Alfredo Rodriguez Coronado on 12/05/22.
//

import SwiftUI

struct ContentView: View {
//  Variables dinamicas dentro de la interfaz
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
//  Inicializamos nuestra interfaz declarando var body y escribimos lo que queremos mostrar
    var body: some View {
//      Contenedor que permite crear una pila de navegacion entre pantallas
        NavigationView {
//          Ztack es un elemento para apilar elementos uno sobre otro
            ZStack {
                // imagen de fondo del login
                Image("loginScreen")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(1.0)
                // Elemento stack vertical para acomodar elementos en ese sentido
                VStack {
                    Text("TigreBusApp")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    // input del nombre del usuario
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(1))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    // input de la contraseña del usuario
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(1))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    // botón para validar los datos del usuario mandandole la funcion los parametros capturando los inputs
                    Button("Login") {
                        autheticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    // en caso que la variables showingLoginScreen sea false, no irá a esa interfaz, caso contrario si la variable sea true
                    NavigationLink(destination: Menu(), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                        
                }
            }
            .navigationBarHidden(true)
            
        }
    }
    
    // funcion que autentica el usuario
    func autheticateUser(username: String, password: String) {
        if username.lowercased() == "angie"{
            wrongUsername = 0
            if password.lowercased() == "123456" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
