namespace :db do
  desc "Create fake agents"
  task fake_agents: :environment do
    agent = Agent.create!(name: "Joel Robotham")
    Event.create!(description: "Date With Agents", happen_time: Time.now, mode: rand(1..5), event_type: "Meeting", agent_id: agent.id)

    agent = Agent.create!(name: "Jinwen Zhang")
    Event.create!(description: "Date With Agents", happen_time: Time.now, mode: rand(1..5), event_type: "Meeting", agent_id: agent.id)
    
    agent = Agent.create!(name: "David Collins")
    Event.create!(description: "Date With Agents", happen_time: Time.now, mode: rand(1..5), event_type: "Meeting", agent_id: agent.id)
    
    agent = Agent.create!(name: "Sam Weller")
    Event.create!(description: "Date With Agents", happen_time: Time.now, mode: rand(1..5), event_type: "Meeting", agent_id: agent.id)
    
    agent = Agent.create!(name: "Patrik Mihailescu")
    Event.create!(description: "Date With Agents", happen_time: Time.now, mode: rand(1..5), event_type: "Meeting", agent_id: agent.id)
    
    agent = Agent.create!(name: "Stimmel Christopher")
    Event.create!(description: "Date With Agents", happen_time: Time.now, mode: rand(1..5), event_type: "Meeting", agent_id: agent.id)
    
    agent = Agent.create!(name: "Jia Feng")
    Event.create!(description: "Date With Agents", happen_time: Time.now, mode: rand(1..5), event_type: "Meeting", agent_id: agent.id)
    
    agent = Agent.create!(name: "Ying Fu")
    Event.create!(description: "Date With Agents", happen_time: Time.now, mode: rand(1..5), event_type: "Meeting", agent_id: agent.id)
  end
end