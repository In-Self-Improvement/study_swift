//
//  ContentView.swift
//  study_swift
//
//  Created by bong on 2022/11/24.
//

import SwiftUI

struct ContentView: View {
    @State
    private var isTrue: Bool = false;
    var body: some View {
        VStack{
            increaseView().padding(isTrue ? 50 : 0).background(isTrue ? Color(.blue) : Color(.white)).foregroundColor(isTrue ? .red : .black)
            increaseView()
            increaseView()
        }.onTapGesture{self.isTrue.toggle()}
    }
}

struct increaseView: View {
    var body: some View {
        HStack{
            Text("1!").fontWeight(.bold).font(.system(size:50))
            Text("2!").fontWeight(.bold).font(.system(size:60))
            Text("3!").fontWeight(.bold).font(.system(size:70))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
