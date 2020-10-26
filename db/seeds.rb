Championship.create!(
  title:    '2020 Cup',
  start_at: Date.new(2020, 1, 1).beginning_of_day,
  end_at:   Date.new(2020, 12, 31).end_of_day
)

Championship.create!(
  title:    'Winter 20/21',
  start_at: Date.new(2020, 12, 21).beginning_of_day,
  end_at:   Date.new(2021, 3, 21).end_of_day
)
