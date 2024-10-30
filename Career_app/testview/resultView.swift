//
//  resultView.swift
//  Career_app
//
//  Created by Simonchik on 27.07.2024.
//

import SwiftUI

struct resultView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var settings = GlobalSettings.shared
    @ObservedObject var took = testPassed.shared
    /// 􀄩 тестовые переменные чтобы чекать как все работает, потом удалить
    @State private var r: Int = 0
    @State private var i: Int = 9
    @State private var a: Int = 0
    @State private var s: Int = 0
    @State private var e: Int = 0
    @State private var c: Int = 0
    @State private var rc: Int = 0
    @State private var cp: Int = 0
    
    @State private var exit = false
    
    @State var resultStr = "result"
    @State var result1Str = "result1"
    
    var body: some View {
        // 􀄩 в vars поменять r на settings.R и так далее
        let vars = [settings.R, settings.I, settings.A, settings.S, settings.E, settings.C]
        let varNames = ["r", "i", "a", "s", "e", "c"]
        // 􀄩 результаты становятся арреем типа [r 5, i 4, ...] чтобы после сортировки можно было понять какие баллы у какой категории
        let numberArray: [(value: Int, name: String)] = zip(vars, varNames).map { ($0.0, $0.1) }
        /// этот 􀄨 аррей с результатами сортируется 􀄩 от большего к меньшему
        let sortedNums = numberArray.sorted { $0.value > $1.value }
        /// 􀄩 от отсортированного аррея создается 5 арреев с один максимальным, двумя, и тд
        /// 􀄩 на желтые предупреждения насрать
        let oneLrg = Array(sortedNums.prefix(1))
        let twoLrg = Array(sortedNums.prefix(2))
        let threeLrg = Array(sortedNums.prefix(3))
        let fourLrg = Array(sortedNums.prefix(4))
        let fiveLrg = Array(sortedNums.prefix(5))
        
        NavigationStack {
            ScrollView{
                VStack(spacing: 15) {
                    
                    Image("anima")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                        .frame(width: 420, height: 200)
                        .offset(x: 20, y: 10)
                    //NAME
                    ZStack {
                        Rectangle()
                            .frame(width: 300.0, height: 70.0)
                            .cornerRadius(15)
                            .foregroundColor(.init(red: 0.236, green: 0.266, blue: 0.286))
                        
                        
                        Text("Your Results")
                            .font(Font.custom("Livvic-Regular", size: 35))
                            .lineLimit(0)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.54, green: 0.57, blue: 0.58))
                        
                        
                    }
                    
                    
                    
                    
                    
                    Text(took.resultOne)
                        .padding()
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .font(Font.custom("Livvic", size: 18))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .frame(width: 380)
                    
                    Text(took.resultTwo)
                        .padding()
                        .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .font(Font.custom("Livvic", size: 18))
                        .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                        .frame(width: 380)
                    
                    
                    
                    HStack{
                        
                        
                        
                        Spacer()
                        
                        
                            
                            
                        NavigationLink(destination: MainScreenView()){
                            Text("Main Menu")
                                .frame(width: 120,height: 40)
                                .background(Color(red: 0.32, green: 0.36, blue: 0.38).opacity(0.25), in: RoundedRectangle(cornerRadius: 15, style: .continuous))
                                .font(Font.custom("Livvic", size: 18))
                                .foregroundColor(Color(red: 0.19, green: 0.24, blue: 0.25))
                                
                        }.simultaneousGesture(TapGesture().onEnded{
                            took.taken = true
                        })
                            
                                
                        
                    }.frame(width: 375)
                        
                }
            }
            .onAppear(perform: {
                
                            if sortedNums.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Chief Operations Officer, Global Business Manager, International Relations Specialist \nYou may thrive in fields that involve hands-on work with tangible results, thrive in research-oriented tasks that require critical thinking, self-expression, are skilled at interpersonal interactions, enjoy management or entrepreneurial roles, precision. Consider exploring careers in relevant fields such as those listed below."
                            } else if sortedNums.allSatisfy({ $0.value <= 2 }) {
                                resultStr = "Please think about your interests and qualities. Then retake the test."
                                // 5 letters
                            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, creativity, helping others, leadership.\nProduct Designer, Operations Manager, Community Health Coordinator.\nYou are a dynamic individual who enjoys practical work, research, creativity, and leadership. Consider careers where your hands-on approach and diverse skills can lead to meaningful and innovative solutions that improve the lives of others."
                            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "c", "a", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, creativity, helping others, leadership, organization.\nProject Manager, Architect, Cultural Resource Manager.\nYou combine a love of creative, hands-on work with leadership and social interaction. Consider careers where your talents in design, management, and organization can be applied to projects that help others."
                            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "c", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, creativity, leadership, organization.\nIndustrial Designer, Project Manager, Operations Director.\nYou excel in roles that combine technical skills, creativity, leadership, and organization. Careers that allow you to balance hands-on work with research and management will provide the perfect platform for your diverse talents."
                            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "c", "i", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, helping others, leadership, organization.\nOperations Manager, Industrial Engineer, Supply Chain Coordinator.\nYou have a balanced mix of practical, analytical, and leadership skills, with a strong desire to help others. Explore careers where your ability to organize and lead can meet your technical and social interests."
                            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["c", "i", "a", "s", "e"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, creativity, helping others, leadership, organization.\nHealthcare Data Scientist, Operations Director, Clinical Research Coordinator.\nYou are highly skilled at balancing research, creativity, leadership, and organization. Explore careers where your analytical and creative mind can work together to lead, innovate, and help others in structured environments."
                            } else if Set(fiveLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s", "c"])) && fiveLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, creativity, helping others, organization.\nUrban Planner, Quality Control Specialist, Operations Manager.\nYou thrive in environments where you can apply your practical and analytical skills to both creative and social projects. Consider careers where your organizational abilities and desire to help others come together with your passion for research and hands-on work."
                
                                // 4 letters
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, creativity, helping others.\nMechanical Engineer, Forensic Scientist, Urban Planner.\nYou combine practical skills with research, creativity, and a desire to help others. Consider careers where your wide range of talents can create innovative solutions that improve lives."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, creativity, leadership.\nProduct Designer, Operations Manager, Industrial Engineer.\nYou thrive in environments that allow you to lead with both creative and technical skills. Explore careers where your practical, innovative, and managerial abilities can come together."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, creativity, precision.\nIndustrial Engineer, Quality Control Manager, Construction Manager.\nYou blend practical, technical, and creative skills with an attention to detail. Explore careers where your talents in design and precision can be utilized in structured environments."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "s", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, helping others, leadership.\nIndustrial-Organizational Psychologist, Operations Manager, Community Development Director.\nYou excel in both hands-on and research-driven roles, with a natural ability to lead and help others. Consider careers where your leadership, technical, and social skills can shine."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "c", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, helping others, organization.\nIndustrial Hygienist, Operations Manager, Safety Engineer.\nYou combine practical, analytical, and social skills in structured settings. Explore careers where your precision and care for others create safer, more efficient environments."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "c", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, leadership, organization.\nProcess Improvement Manager, Quality Control Engineer, Logistics Analyst.\nYou have a natural blend of leadership, analytical thinking, and hands-on skills, thriving in structured environments where you can solve complex problems and drive efficiency. Consider careers where your abilities in management, technical expertise, and organization are highly valued."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "e", "a", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, creativity, helping others, leadership.\nInterior Architect, Urban Planner, Event Coordinator.\nYou have a unique combination of creativity, practicality, and leadership skills, making you perfect for roles that involve hands-on problem-solving, artistic innovation, and guiding others. Careers where your creative vision and management abilities intersect with helping others will bring you fulfillment."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "s", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, creativity, helping others, organization.\nConstruction Project Manager, Logistics Coordinator, Urban Planner.\nYou thrive in environments where you can apply your creative, practical, and organizational skills to improve systems and structures. Consider careers where your artistic insight and attention to detail contribute to making processes more efficient and impactful."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "e", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, creativity, leadership, organization.\nProject Manager, Set Designer, Logistics Manager.\nYou excel at combining creative thinking with leadership in structured environments. Careers where your practical skills and artistic vision align with management and organization will allow you to thrive."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["r", "s", "c", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, helping others, leadership, organization.\nCommunity Health Organizer, Physical Therapy Director, Logistics Coordinator.\nYou have a strong mix of practical, social, and leadership skills, excelling in roles where helping others is combined with management and precision. Explore careers where your dedication to improving systems and enhancing people's well-being comes together."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["e", "i", "a", "s"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, creativity, helping others, leadership.\nPublic Health Scientist, Clinical Operations Manager, Community Health Director.\nYou blend an investigative mindset with creativity and a desire to lead and help others. Consider careers where your research, leadership, and creativity can all work in harmony to drive positive change in communities."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["s", "i", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, creativity, helping others, organization.\nClinical Data Manager, Research Coordinator, Public Health Analyst.\nYou excel at research and creativity while enjoying the structure and organization of conventional roles. Careers where your investigative mind and artistic expression can contribute to social well-being in a structured environment are ideal for you."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["e", "i", "a", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, creativity, leadership, organization.\nRegulatory Affairs Specialist, Clinical Operations Director, Data Manager.\nYou thrive in environments that combine scientific research, creativity, leadership, and structure. Explore careers where you can lead projects and ensure precision while allowing room for innovation and problem-solving."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["s", "i", "c", "e"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, helping others, leadership, organization.\nHealthcare Administrator, Medical Data Analyst, Compliance Officer.\nYou excel in both investigative and social roles, with a strong ability to lead and organize. Consider careers where your leadership, research, and people skills can make a significant difference in structured and regulated environments."
                            } else if Set(fourLrg.map({ $0.name })).isSubset(of: Set(["a", "s", "e", "c"])) && fourLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Creativity, helping others, leadership, organization.\nCorporate Communications Director, Healthcare Marketing Manager, Project Manager.\nYou combine artistic vision with leadership and organizational abilities, excelling in roles that require you to communicate, create, and lead. Careers that blend creativity and management will allow you to thrive."
                
                                // 3 letters
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "a"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, creativity.\nIndustrial Engineer, Mechanical Designer, Process Engineer.\nYou combine practicality with analytical thinking and creativity, making you ideal for careers where innovation, technical skills, and problem-solving meet."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "s"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, helping others.\nMechanical Engineer, Urban Planner, Manufacturing Supervisor.\nYou enjoy both practical work and research, but also thrive in environments where you can help and guide others. Consider careers that blend hands-on problem solving with a social purpose."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, leadership.\nProduct Developer, Automation Engineer, Quality Assurance Manager.\nYou are action-oriented, with a mind for research and a passion for leadership. Explore professions that allow you to combine these talents into innovative, managerial roles."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "i", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, research, precision.\nQuality Assurance Specialist, Mechanical Technician, Production Planner.\nYou thrive in structured environments where your investigative and practical skills are essential. Consider careers that require both technical expertise and methodical planning."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "a", "s"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, creativity, helping others.\nInterior Designer, Urban Planner, Event Coordinator.\nYou enjoy applying your creativity in practical settings while also helping others. Careers that balance hands-on work, artistic expression, and social interaction will suit you well."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "a", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, creativity, leadership.\nSet Designer, Art Director, Project Manager.\nYou have the unique ability to blend creativity with practical skills and leadership. Explore careers where your talents in design and management can come together."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "a", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, creativity, precision.\nArchitect, Construction Manager, Set Designer.\nYou combine a practical mindset with creative problem-solving and a love for structure. Careers that balance design, hands-on work, and attention to detail will allow you to thrive."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "s", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, helping others, leadership.\nOccupational Therapist, Environmental Health and Safety Specialist, Workplace Ergonomics Consultant.\nYou enjoy practical work and leading others, especially in environments that focus on health and safety. Consider roles where your leadership and problem-solving abilities are key to helping others."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "s", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, helping others, organization.\nConstruction Manager, Logistics Coordinator, Safety Inspector.\nYou excel at both practical tasks and helping others in structured environments. Careers where your organizational skills and hands-on abilities improve lives and systems will bring you satisfaction."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["r", "e", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, leadership, organization.\nOperations Manager, Logistics Manager, Project Coordinator.\nYou thrive in hands-on leadership roles, where your organizational skills ensure smooth operations. Consider careers where your ability to manage, lead, and organize is crucial to success."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "a", "s"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, creativity, helping others.\nClinical Researcher, Public Health Specialist, Behavioral Scientist.\nYou combine a passion for discovery and creativity with a desire to improve lives. Explore careers where your research and innovation can make a positive social impact."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "a", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, creativity, leadership.\nPolicy Analyst, Research Scientist, Urban Planner.\nYou excel in both research and leadership, with a creative approach to solving problems. Consider professions that allow you to lead with innovation and critical thinking."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "a", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, creativity, precision.\nBiochemist, Clinical Data Manager, Lab Technician.\nYou thrive in environments where research meets creativity and precision is key. Explore careers that value your analytical mind and meticulous approach to scientific exploration."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "s", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, helping others, leadership.\nData Scientist, Clinical Operations Manager, Healthcare Consultant.\n You are driven by both research and leadership, particularly in roles that allow you to help others. Consider careers where your analytical skills and leadership abilities combine to improve lives."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "s", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, helping others, organization.\nHealthcare Data Analyst, Quality Assurance Analyst, Public Health Officer.\nYou have a gift for blending research with social interaction in structured environments. Explore careers where your investigative skills and desire to help others are essential to making an impact."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["i", "e", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, leadership, organization.\nFinancial Planner, Corporate Strategy Consultant, Operations Analyst.\nYou thrive in structured environments that value both leadership and precision. Consider careers where your analytical mind and strategic thinking can drive results."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["a", "s", "e"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Creativity, helping others, leadership.\nPublic Relations Manager, Event Planner, HR Manager.\nYou are naturally creative, social, and driven by leadership. Consider roles where your artistic vision and interpersonal skills can come together to lead and inspire others."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["a", "s", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Creativity, helping others, organization.\nArt Conservator, Museum Director, Cultural Affairs Manager.\nYou combine a passion for creativity with a desire to help others, excelling in structured environments. Explore careers where your organizational skills and artistic talents can work in harmony."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["a", "e", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "aCreativity, leadership, precision.\nMarketing Director, Brand Manager, Corporate Communications Director.\nYou thrive in roles that require both creativity and precision, with a natural ability to lead. Consider careers where your innovative thinking and organizational skills are key to success."
                            } else if Set(threeLrg.map({ $0.name })).isSubset(of: Set(["s", "e", "c"])) && threeLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Helping others, leadership, organization.\nTraining and Development Manager, Human Resources Specialist, Project Coordinator.\nYou excel at connecting with people and organizing processes, with a strong leadership ability. Explore careers where your interpersonal skills and management talents are essential."
                
                                // 2 letters
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "i"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, analytical research.\n Industrial Engineer, Operations Manager, Mechanical Technician.\n You enjoy the practical aspects of hands-on work, combined with a deep curiosity for solving complex problems. Consider careers where both your technical skills and investigative nature can flourish."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "a"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = " Hands-on work, creativity, self-expression.\nArchitect, Urban Planner, Set Designer.\nYou are a practical creator, finding joy in both physical work and innovative design. Careers where you can combine structure with artistic freedom will provide you with the perfect balance."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "s"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, social interaction, helping others.\nPhysical Therapist, Occupational Therapist, Rehabilitation Counselor.\nYou are grounded in practicality and enjoy working directly with people to improve their lives. Consider careers where you can combine physical tasks with a social, helping role."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "e"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, leadership, management roles.\nSales Manager, Marketing Director, Project Manager.\nYou are action-oriented and enjoy leading teams to achieve tangible results. Explore professions where your practical skills and entrepreneurial spirit are both put to use."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["r", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on work, organization, precision.\nProduction Manager, Manufacturing Supervisor, Operations Coordinator.\nYou thrive in roles that require both practical work and a methodical approach to planning and organizing. Consider careers where your precision and hands-on skills are vital."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["i", "a"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, creativity, self-expression.\nResearch Scientist, Clinical Research Coordinator, Chemist.\nYou blend analytical thinking with creativity, making you a natural fit for fields that require both innovation and scientific inquiry."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["i", "s"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, helping others, social interaction.\nClinical Psychologist, Epidemiologist, Health Data Analyst.\nYou have a talent for solving complex problems and working with people. Consider fields where you can use your analytical skills to improve the well-being of others."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["i", "e"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, leadership, management.\n Financial Analyst, Business Analyst, Operations Research Analyst.\nFinancial Analyst, Business Analyst, Operations Research Analyst."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["i", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, organization, precision.\nData Analyst, Quality Control Specialist, Lab Technician.\nYour love of investigation, combined with your eye for detail, makes you well-suited for structured environments that rely on accuracy and methodical work."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["a", "s"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Creativity, helping others, social interaction.\nHistorian, Art Therapist, Cultural Arts Administrator.\nYou combine a passion for creativity with a desire to make meaningful connections with others. Careers that allow you to express yourself while benefiting society will bring you fulfillment."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["a", "e"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Creativity, leadership, entrepreneurial roles.\nBrand Strategist, Advertising Executive, Market Research Analyst.\nYou thrive in creative environments where you can also lead projects or businesses. Explore fields where your artistic vision and leadership skills are needed."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["a", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Creativity, organization, precision.\nArt Director, Graphic Designer, Advertising Manager.\nYou have a unique ability to balance creativity with structure, excelling in roles where attention to detail and artistic expression are equally valued."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["s", "e"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Social interaction, leadership, helping others.\nCorporate Communications Manager, Customer Service Manager, Human Resources Specialist.\nYou are a natural leader who excels at helping and managing others. Consider careers where your interpersonal skills and leadership abilities are crucial to success."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["s", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Social interaction, organization, precision.\nTraining and Development Specialist, School Principal, Education Consultant.\nYou are skilled at both connecting with people and organizing systems. Consider careers where your ability to structure and guide others is essential for success."
                            } else if Set(twoLrg.map({ $0.name })).isSubset(of: Set(["e", "c"])) && twoLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Leadership, organization, precision.\nBusiness Operations Manager, Financial Analyst, Compliance Manager.\nYour leadership talents and methodical approach make you well-suited for roles that require both management and meticulous attention to detail. Explore careers where strategy and precision are key."
                
                                // 1 letter
                            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["r"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Hands-on, practical work with tangible results.\nMechanical Engineer, Construction Project Manager, Landscape Architect.\nYou are grounded in reality and find satisfaction in working with your hands and seeing the concrete results of your efforts. Consider exploring careers where your practical nature and problem-solving skills are essential to success."
                            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["i"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Research, critical thinking, analytical tasks.\nData Scientist, Biostatistician, Forensic Analyst.\nYour analytical mind thrives in environments where you can solve complex problems through research and investigation. Explore careers where your intellectual curiosity and critical thinking will be valued."
                            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["a"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Creativity, innovation, self-expression.\nFilm Director, Graphic Designer, Interior Designer.\nYou are naturally drawn to creative pursuits where you can express yourself and work on unstructured tasks. Seek professions that allow your imagination and artistry to shine."
                            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["s"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = " Interpersonal interactions, helping others, social environments.\nCommunity Organizer, Speech-Language Pathologist, Child and Family Social Worker.\nYou are passionate about helping others and have a strong sense of community. Explore careers that allow you to make a positive impact on people's lives."
                            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["e"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Leadership, management, entrepreneurial roles.\nCEO, Entrepreneur, Project Manager.\nYou are a natural leader and have a strong sense of direction. Explore careers that allow you to make a positive impact on people's lives."
                            } else if Set(oneLrg.map({ $0.name })).isSubset(of: Set(["c"])) && oneLrg.allSatisfy({ $0.value >= 7 }) {
                                resultStr = "Organization, detail-oriented work, precision.\n Compliance Officer, Healthcare Administrator, Logistics Coordinator.\n You thrive in structured environments where attention to detail and organization are key. Explore careers that require methodical thinking and a focus on accuracy and efficiency."
                            }
                
                            if settings.CP >= 7 && settings.RC >= 7 {
                                result1Str = "You are highly prepared for your career path and adaptable to changes. Your confidence in your skills and the proactive steps you've taken show that you're ready to pursue your goals effectively. Continue seeking growth opportunities and maintaining flexibility as you move forward."
                            } else if settings.CP >= 7 {
                                result1Str = "You demonstrate strong readiness for your career path with clear goals and skills suited for your desired profession. However, you may need to develop greater adaptability and resilience in facing changes or challenges. Consider focusing on building flexibility, seeking mentorship, and reflecting on career choices to adapt as your career progresses."
                            } else if settings.RC >= 7 {
                                result1Str = "You’re well-prepared to handle changes and challenges in your career path, showing resilience and adaptability. However, it may be beneficial to solidify your career readiness by enhancing your confidence, creating a detailed career plan, and ensuring you have a portfolio or resume ready. Strengthening these areas can create a stronger foundation for your goals."
                            } else {
                                result1Str = "You may need to work on both your career readiness and adaptability. Building clarity in your career goals, understanding the requirements of your chosen path, and preparing a resume or portfolio can improve your preparedness. Additionally, developing strategies for handling change and seeking mentorship may help you become more resilient and proactive. Consider focusing on both areas to strengthen your readiness for future opportunities."
                            }
                
                        took.resultOne = resultStr
                        took.resultTwo = result1Str
                
                        })
        }.navigationBarHidden(true)
            
            
            
        }
    }


#Preview {
    resultView()
}
