//
//  ContentView.swift
//  RandomPlace
//
//  Created by 이수민 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView{
            ZStack {
                Color(red: 0.835, green: 0.784, blue: 0.784).ignoresSafeArea(.all)
                VStack{
                    Spacer()
                    Text("오늘 뭐 먹지? 🍖")
                        .font(.system(size: 50))
                        .bold()
                        .padding()
                    Spacer()
                    VStack{
                        NavigationLink {
                            RandomView()
                                .navigationBarBackButtonHidden(true)
                                    .navigationBarItems(leading:
                                    HStack {
                                        Button {
                                            self.presentationMode.wrappedValue.dismiss()
                                        } label: {
                                            Image(systemName: "chevron.backward")
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(.black)
                                        }

                                    })
                        } label: {
                                Text("GO")
                                .frame(width: 300, height: 70)
                                .padding()
                                .font(.title)
                                 .bold()
                                 .foregroundColor(.black)
                                 .background(Color(red: 0.9, green: 0.9, blue: 0.707))
                                 .cornerRadius(25)
                        }
                        }.padding()
                        NavigationLink {
                            HelpView()
                        } label: {
                            ZStack{
                                Text("도움말")
                                .frame(width: 300, height: 70)
                                .padding()
                                .font(.title)
                                 .bold()
                                 .foregroundColor(.black)
                                 .background(Color(red: 0.9, green: 0.9, blue: 0.707))
                                .cornerRadius(25)
                            }
                        }.padding()
                    }
                }
            }
            
        }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
