//
//  ContentView.swift
//  NStackSwiftUi
//
//  Created by Praveen on 30/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple, .pink, .teal, .gray]

     
            NavigationStack{
                VStack {
                        VStack{
                            Button(action: {
                                print("button pressed")
                                
                            }) {
                                Image(systemName: "star.fill")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                                    .font(.body)
                                    
                            }
                        }
                        VStack {
                            List(0..<colors.count, id: \.self) { index in
                                HStack{
                                    NavigationLink(destination: SencondScreen(selectedColor: colors[index])){
                                        Text("TAP TO SELECT (\(index + 1))").font(.headline)
                                        Spacer()
                                        Image(systemName: "cloud.sun.rain.fill")
                                            .font(.title)
                                            .bold()
                                            .foregroundColor(colors[index % colors.count])
                                    }
                                }
                            }
                       
                        }
                    .navigationTitle("Dynamic Colour List")
                    .padding()
                }
            }
            
        }
}
struct SencondScreen: View {
    var selectedColor: Color
    var shades: [Color] {
         let adjustments: [CGFloat] = [-0.4, -0.3, -0.2, -0.1, 0, 0.1, 0.2, 0.3, 0.4]
         return adjustments.map { selectedColor.adjust(by: $0) }
     }
    var body: some View{
        NavigationLink(destination: ThirdScreen()){
            
            VStack {
                
                List(shades, id: \.self){ shade in
                    
                    Text(shade.description.capitalized).font(.headline)
                        .foregroundColor(.gray)
                    Image(systemName: "cloud.sun.rain.fill")
                        .font(.title)
                        .bold()
                        .foregroundColor(shade)
      
                }
            }.navigationTitle("ITS ALL SHEDS")
        }
    }
}
struct ThirdScreen: View{
    var body: some View{
        Image(systemName: "face.smiling")
            .font(.title)
            .bold()
            .foregroundColor(.black)
        Text("Thanks For Watching")
            .font(.title)
            .bold()
            .foregroundColor(.black)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
