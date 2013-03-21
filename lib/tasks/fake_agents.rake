namespace :db do
  desc "Create fake agents"
  task fake_agents: :environment do
    10.times do |index|
      agent = Agent.create!(name: "AGENT#{index}")
      3.times do |time|
        Event.create!(mode: rand(5) - rand(time), agent_id: agent.id)
      end
    end
  end
end