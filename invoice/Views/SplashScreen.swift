//
//  SplashScreen.swift
//  invoice
//
//  Created by Ben Dixon on 12/01/2020.
//  Copyright © 2020 NURO. All rights reserved.
//

import SwiftUI

struct Detail: View {
    var title: String = "title"
    var subTitle: String = "subTitle"
    var imageName: String = "car"

    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundColor(.primaryColor)
                .padding()
                .accessibility(hidden: true)

            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibility(addTraits: .isHeader)

                Text(subTitle)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding(.top)
    }
}

struct SplashScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var title: String = "Welcome to"
    var subTitle: String = "Gradients Game"

    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .center) {
                    Spacer()

                    VStack {
                        Spacer(minLength: 180)

                        Text(title)
                            .customTitleText()

                        Text(subTitle)
                            .customTitleText()
                            .foregroundColor(.primaryColor)
                    }

                    VStack(alignment: .leading) {
                        Detail(title: "Match", subTitle: "Match the gradients by moving the Red, Green and Blue sliders for the left and right colors.", imageName: "slider.horizontal.below.rectangle")

                        Detail(title: "Precise", subTitle: "More precision with the steppers to get that 100 score.", imageName: "minus.slash.plus")

                        Detail(title: "Score", subTitle: "A detailed score and comparsion of your gradient and the target gradient.", imageName: "checkmark.square")
                    }
                    .padding(.horizontal)

                    Spacer(minLength: 30)
                }
            }
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Get Started")
                    .customButton()
            }
            .padding(.all)
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Text("")
        }.sheet(isPresented: .constant(true)) {
            SplashScreen()
        }
    }
}
