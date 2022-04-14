//
//  ContentView.swift
//  TurkizCard
//
//  Created by Türkiz Candan Şahin on 11.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Turkiz")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white,lineWidth: 5))
                Text("Türkiz Candan Şahin ")
                    .foregroundColor(Color.white)
                    .bold()
                .font(.custom("Pacifico-Regular", size: 40))
                Text("IOS Developer")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "+905394946129", ImageName: "phone.fill")
                InfoView(text: "turkizcandansahin@gmail.com", ImageName: "envelope.fill")
            }
            .padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text : String
    let ImageName : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 40)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: ImageName ).foregroundColor(.green)
                Text(text)
            })
    }
}
