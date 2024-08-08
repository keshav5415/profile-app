//  ContentView.swift
//  profile_app
//  Created by Keshav kumar on 03/08/24.

import SwiftUI

struct ContentView: View 
{
    var body: some View 
    {
        ZStack
        {
            Image("background").resizable()
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20)
                {
                    /*
                     spacing here shows space between 1st
                     and 2nd VStack
                    */
                    Image("myImage").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180 , height: 180 , alignment: .top)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Your Name")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .font(.system(.largeTitle))
                        .shadow(radius: 5)
                    Text("iOS | FrontEnd Developer")
                        .foregroundColor(.white)
                    
                    HStack(spacing : 30)
                    {
                        // we r going to use system image
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    // below properties will be applied to all the HStack content
                    // basically we can add properties globally to all HStack
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: .pink, radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 8)
                }
                Spacer()
                /*
                 'spacing' is allowing 'Follow' button to be in the middle of
                 the border of two colours.
                */
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 13)
                {
                    RoundedRectangle(cornerRadius: 100)
                        .frame(width : 200, height : 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                                .font(.system(size : 25))
                        )
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 60)
                    {
                        VStack
                        {
                            Text("1775")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Likes")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        VStack
                        {
                            Text("800")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        VStack
                        {
                            Text("231")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Following")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    Text("About You")
                    // first line has more value , order matters !
                        .font(.system(size : 40))
                        .font(.system(.largeTitle))
                    Text("I am an aspiring ios FrontEnd Developer . Welcome to the series of iOS projects . let's dive deeper into more exciting projects . ")
                        .font(.system(.body))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .lineLimit(4)
                        .opacity(0.7)
                }.padding()
            }.padding()
        }
        
    }
}

/*
 Padding is the space between the content and the border of an element. Padding is
 valuable in making additional space inside an element, keeping it at a set distance
 from other aspects of a website. Using padding is extremely beneficial when you
 need to separate text boxes and images while also keeping them aligned.
*/

/*
 -> we wanted to use an image whose name was 'background' ,
 so we called that image using his name .
 -> we used 'resizable()' which allows to resize the image ,
    or add any properties.
 ->
*/

#Preview {
    ContentView()
}
