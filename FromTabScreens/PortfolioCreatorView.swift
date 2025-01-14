//
//  PortfolioCreatorView.swift
//  TabBarControllerBeatOven
//
//  Created by mathangy on 10/01/24.
//

import SwiftUI

struct PortfolioCreatorView: View {
    @State private var groupName: String = ""
    @State private var groupDescription: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        
        NavigationView{
            ZStack {
                Color(red: 0.99, green: 0.87, blue: 0.82)
                ScrollView {
                    ZStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.black)
                            Text("Back")
                                .foregroundColor(.black)
                        }
                        .offset(x:-160,y:-380)
                        Text("Portfolio Creator")
                          .font(
                            Font.custom("Poppins", size: 20)
                              .weight(.medium)
                          )
                          .kerning(0.36)
                          .foregroundColor(.black)
                          .frame(width: 163, height: 34, alignment: .topLeading)
                          .offset(x:-75,y:-330)
                    
                            Image("grp-img-collabreq")
                            .frame(width: 92, height: 88)
                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                       .offset(x:-130,y:-250)
                        TextField("Username", text: $groupName)
                            .frame(width: 247.20534, height: 27)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .background(Color(red: 1, green: 0.79, blue: 0.7, opacity: 0.965))
                            
                            .offset(x: 50, y: -270)
                        
                        TextField("📍Location", text: $groupDescription)
                            .frame(width: 247.20534, height: 27)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(Color(red: 1, green: 0.79, blue: 0.7))
                            .offset(x: 50, y: -230)
                        
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 355, height: 1)
                          .background(.black.opacity(0.3))
                          .offset(x:0,y:-190)
                        Text("Sections to Customise")
                          .font(
                            Font.custom("Catamaran", size: 20)
                              .weight(.bold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.black)
                          .frame(width: 238, height: 38, alignment: .top)
                          .offset(x:0,y:-165)
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 355, height: 1)
                          .background(.black.opacity(0.3))
                          .offset(x:0,y:-159)
                        
                        NavigationLink(destination: IntrotextEditorView().navigationBarBackButtonHidden(true)) {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 155, height: 155)
                              .background(
                                Image("addtext")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 170, height: 170)
                                  .clipped()
                              )
                              .cornerRadius(15)
                              .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                                    
                        }.offset(x:-100,y:-67)
                        NavigationLink(destination: VoiceTrackAddView().navigationBarBackButtonHidden(true)) {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 150, height: 200)
                              .background(
                                Image("addsongs")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 180, height: 220)
                                  .clipped()
                              )
                              .cornerRadius(15)
                              .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                                    
                        }.offset(x:80,y:-40)
                        NavigationLink(destination: NotableWorksAddView().navigationBarBackButtonHidden(true)) {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 155, height: 200)
                              .background(
                                Image("addnotableworks")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 170, height: 200)
                                  .clipped()
                              )
                              .cornerRadius(15)
                              .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                                    
                        }
                        .offset(x:-100,y:140)
                        NavigationLink(destination: SocialMediaAddView().navigationBarBackButtonHidden(true)) {
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 155, height: 165)
                              .background(
                                Image("addsocial-mediaprofiles")
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                                  .frame(width: 170, height: 170)
                                  .clipped()
                              )
                              .cornerRadius(15)
                              .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                                    
                        }
                        
                          .offset(x:80,y:160)
                        NavigationLink(destination: PortfolioEditorView().navigationBarBackButtonHidden(true)) {
                            Text("View current portfolio")
                              .foregroundColor(.white)
                              .font(.system(size: 20))
                              .frame(width: 235, height: 55)
                              .background(Color(red: 0.37, green: 0.16, blue: 0.12))
                              .cornerRadius(100)
                                                    
                       }.offset(x:0,y:330)
                        
                
                        
                    }
                    
                    .frame(width: 393, height: 852)
                    .foregroundColor(.clear)
                }
            }.ignoresSafeArea()
        }
        
        
    }
}

#Preview {
    PortfolioCreatorView()
}
