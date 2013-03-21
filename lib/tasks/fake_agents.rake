namespace :db do
  desc "Create fake agents"
  task fake_agents: :environment do
    10.times do |index|
      agent = Agent.create!(name: "AGENT#{index}")
      Event.create!(mode: rand(1..5), agent_id: agent.id)
    end
  end
end