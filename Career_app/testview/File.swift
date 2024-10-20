//
//  File.swift
//  Career_app
//
//  Created by Simonchik on 20.10.2024.
//


.simultaneousGesture(TapGesture().onEnded{
                                    if !settings.checkR1 {
                                        settings.checkR = checkall()
                                        settings.checkR1 = true
                                    } else {
                                        
                                    }
                                })