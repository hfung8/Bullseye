//
//  ContentView.swift
//  Bullseye
//
//  Created by Harrison Fung  on 1/16/20.
//  Copyright © 2020 Harrison Fung . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //Properties
    //==========
    
    //User interface views
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    
    //User interface content and layout
    var body: some View {
        VStack {
            //Target row
            HStack {
                Text("Put the bullseye as close as you can to :")
                Text("100")
            }
            .padding(.top, 40)
            
            Spacer()
            
            //Slider row
            HStack {
                Text("1")
                Slider(value: /*@START_MENU_TOKEN@*/self.$sliderValue, in : 1...100)/*@END_MENU_TOKEN*/
                Text("100")
            }
            
            Spacer()
            
            //Button row
            Button(action: {print("Button Pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: self.$alertIsVisible){
                Alert(title: Text("Hello there!"),
                      message: Text("The slider's value is \(self.sliderValue.rounded())."),
                      dismissButton: .default(Text("Awesome!")))
            }
            
            Spacer()
            
            //Score row
            HStack{
                Button(action: {}){
                Text("Start over")
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button(action: {}){
                Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }
    
    //METHODS
    //=======
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
