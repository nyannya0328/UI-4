//
//  ContentView.swift
//  Custom Animation
//
//  Created by にゃんにゃん丸 on 2020/09/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
      Loding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Loding : View {
    @State var animate = false
    var body: some View{
    
        ZStack{
            
            
            VStack{
                
                Image("image").resizable().frame(width: 350, height: 350)
                    .clipShape(Circle())
                    .scaleEffect(self.animate ? 3 : 0)
                
                
                
                Image("image1").resizable().frame(width: 350, height: 350)
                    .clipShape(Circle())
                    .scaleEffect(self.animate ? 2 : 0)
            }
            
            
          

            
        }.onAppear{
            
            self.animate.toggle()
            
        }
        .animation(Animation.linear(duration: 25).repeatForever(autoreverses: true))
    
        
    }
}

