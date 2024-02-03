import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    @State private var searchText = ""
    @State private var selectedOption = "Selectează opțiunea"
        
    let searchOptions = ["Opțiune 1", "Opțiune 2", "Opțiune 3"]
    let dayOfTheWeek = ["Luni", "Marti", "Miecuri", "Joi", "Vineri", "Sambata", "Duminica"]
    
    var body: some View {
        VStack {
            Image("logo-orar")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            
            ZStack {
                RoundedRectangle(cornerRadius: 80)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.6), Color.green.opacity(0.4)]), startPoint: .leading, endPoint: .trailing))
                    .frame(height: 50)
                    .shadow(radius: 5)
                Text("Orarul Cursurilor")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.horizontal, 18)
            .padding(10)
            
            HStack{
                Spacer()
                
                Button(action: {
                    selectedTab = 1
                }) {
                    Text("Grupuri")
                }
                .frame(width: 90, height: 40)
                .background(selectedTab == 1 ? Color.green.opacity(0.4) : Color.gray.opacity(0.2))
                .foregroundColor(.black)
                .cornerRadius(50)
                
                Spacer()
                
                Button(action: {
                    selectedTab = 2
                }) {
                    Text("Profesori")
                }
                .frame(width: 90, height: 40)
                .background(selectedTab == 2 ? Color.green.opacity(0.4) : Color.gray.opacity(0.2))
                .foregroundColor(.black)
                .cornerRadius(50)
                
                Spacer()
                
                Button(action: {
                    selectedTab = 3
                }) {
                    Text("Aule")
                }
                .frame(width: 90, height: 40)
                .background(selectedTab == 3 ? Color.green.opacity(0.4) : Color.gray.opacity(0.2))
                .foregroundColor(.black)
                .cornerRadius(50)
                
                Spacer()
            }
            
                TextField("Introducere text", text: $searchText)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                           .padding(.horizontal, 32 )
                           .padding(.top, 15)
                           .cornerRadius(10)
            
                Picker("Alege o opțiune", selection: $selectedOption) {
                           ForEach(searchOptions, id: \.self) { option in
                               Text(option)
                                   .foregroundColor(Color.red)
                           }
                       }
                       .pickerStyle(MenuPickerStyle())
                       .frame(width: 330, height: 35)
                       .background(LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.6), Color.green.opacity(0.4)]), startPoint: .leading, endPoint: .trailing))
                       .cornerRadius(10)
            
                Picker("Alege ziua", selection: $selectedOption) {
                       ForEach(dayOfTheWeek, id: \.self) { day in
                           Text(day)
                               .foregroundColor(Color.black)
                       }
                   }
                   .pickerStyle(MenuPickerStyle())
                   .frame(width: 330, height: 35)
                   .background(LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.6), Color.green.opacity(0.4)]), startPoint: .leading, endPoint: .trailing))
                   .cornerRadius(10)
            
                Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
