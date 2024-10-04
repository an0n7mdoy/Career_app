//
//  testlistdrop.swift
//  Career_app
//
//  Created by Simonchik on 04.10.2024.
//

import SwiftUI

struct testlistdrop: View {
    
    @State private var isExpanded = false
    @State private var items: [String] = ["Item 1", "Item 2", "Item 3"]
    @State private var newItem = ""

    
    var body: some View {
        
            
            VStack() {
                    // Dropdown button
                    Button(action: {
                        withAnimation {
                            isExpanded.toggle()
                        }
                    }) {
                        HStack {
                            Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                            Spacer()
                            
                            Text("Dropdown")
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                    }
                    
                    // Dropdown list (conditionally displayed)
                    if isExpanded {
                        VStack {
                            ForEach(items, id: \.self) { item in
                                HStack {
                                    Text(item)
                                    Spacer()
                                    Button(action: {
                                        removeItem(item)
                                    }) {
                                    Image(systemName: "trash")
                                            .foregroundColor(.red)
                                    }
                                }
                                .padding(.vertical, 5)
                            }

                                // Add new item section
                            HStack {
                                TextField("New item", text: $newItem)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
                                Button(action: {
                                    addItem()
                                }) {
                                    Text("Add")
                                        .padding(.horizontal)
                                        .padding(.vertical, 5)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                            }
                        }
                        .padding(.vertical, 10)
                        //.transition(.push(from: .bottom))
                    }
                        
                        
                }
                    .padding()
            }
            
           
            
        
        
            // Add item function
        private func addItem() {
            if !newItem.isEmpty {
                items.append(newItem)
                newItem = ""
            }
        }
            
            // Remove item function
        private func removeItem(_ item: String) {
            items.removeAll { $0 == item }
            }
        }

#Preview {
    testlistdrop()
}
