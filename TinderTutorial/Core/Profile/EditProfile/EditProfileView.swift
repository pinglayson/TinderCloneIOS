//
//  EditProfileView.swift
//  TinderTutorial
//
//  Created by Ping Layson on 9/5/2024.
//

import SwiftUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var bio = ""
    @State private var occupation = "Fighter"
    let user: User
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(user: user)
                    .padding()
                
                VStack(spacing: 24) {
                    VStack(alignment: .leading) {
                        Text("ABOUT ME")
                            .font(.subheadline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                        
                        TextField("Add your bio", text:$bio, axis: .vertical)
                            .padding()
                            .frame(height: 64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("OCCUPATION")
                            .font(.subheadline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                        
                        HStack {
                            Image(systemName: "book")
                            Text("Occupation")
                            
                            Spacer()
                            
                            Text(occupation)
                                .font(.footnote)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("GENDER")
                            .font(.subheadline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                        
                        HStack {
                            Text("Man")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("SEXUAL ORIENTATION")
                            .font(.subheadline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                        
                        HStack {
                            Text("Straight")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                    
                }

            }
            .scrollIndicators(.hidden)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    EditProfileView(user: MockData.users[2])
}
