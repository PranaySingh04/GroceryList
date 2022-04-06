//
//  ContentView.swift
//  firstAPP
//
//  Created by 90305656 on 2/25/22.
//

import SwiftUI

struct ContentView: View {
    @State var groceries = ""
    @State var groc = ""
    @State var groc2 = ""
    @State var groc3 = ""
    @State var groc4 = ""
    @State var groc5 = ""
    @State var groc6 = ""
    @State var groc7 = ""
    @State var groc8 = ""
    @State var groc9 = ""
    @State var groc10 = ""

    @State var GrocNum = 0
   
    var body: some View {
    
       
        NavigationView {
            
            VStack {
                Spacer()
                    List() {
                        Section (header: Text("Enter Items Here")
                                    .frame(width: 10000,
                                         height:1)
                        ){
                            
                            HStack {
                            TextField("New Item",text:
                                        $groceries)
                            
                                Button(action:{
                                    GrocNum = GrocNum+1
                                    if groceries != "" && GrocNum == 1 {
                                        groc = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 2 {
                                        groc2 = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 3 {
                                        groc3 = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 4 {
                                        groc4 = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 5 {
                                        groc5 = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 6 {
                                        groc6 = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 7 {
                                        groc7 = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 8 {
                                        groc8 = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 9 {
                                        groc9 = groceries
                                        groceries = ""
                                    } else if groceries != "" && GrocNum == 10 {
                                        groc10 = groceries
                                        groceries = ""
                                    } else if groceries == "" {
                                        GrocNum -= 1
                                    }
                                        
                                    }
                                   
                               , label: {
                                    Text("Add to List")
                                        .foregroundColor(.green)
                                }
                                )}
                                       
                                      
                            
                            }
                        Section (header: Text("Your List")
                                    .frame(width: 1000,
                                           height: 1,
                                           alignment: .center)
                        ) {
                            
                            Text(groc)
                            Text(groc2)
                            Text(groc3)
                            Text(groc4)
                            Text(groc5)
                            Text(groc6)
                            Text(groc7)
                            Text(groc8)
                            Text(groc9)
                            Text(groc10)
                       
                        }
                        
                        Button(action:{
                               
                                groc=""
                                groc2=""
                                groc3=""
                                groc4=""
                                groc5=""
                                groc6=""
                                groc7=""
                                groc8=""
                                groc9=""
                                groc10=""
                            GrocNum = 0
                                
                            },label: {
                                Text("Clear List")
                                   
                                
                                    .frame(width: 340,
                                         height: 50,
                                         alignment: .center)
                                .cornerRadius(40)
                                .background(Color.red)
                                .foregroundColor(.white)
                            })
                    }
               
                        }
           
              
            .navigationTitle("Grocery List")
                            
                        }
                        
                       
    
            
            }
            }
        
        

    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

