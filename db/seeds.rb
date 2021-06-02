Note.create([
  {
    title: "Old",
    body: "MyOldTest",
    created_at: 2.days.from_now,
  },
  {
    title: "New",
    body: "MyNewText",
    created_at: 3.days.from_now,
  },
  {
    title: "Older",
    body: "MyOlderText",
    created_at: 1.day.from_now,
  },
  {
    title: 'Hello world!',
    body: 'This is my first note',
    created_at: Time.now,
  },
  {
    title: 'hello_world',
    body: 'The same, but underscored',
    created_at: 1.day.ago,
  },
  {
    title: 'hello\\ world',
    body: 'The same, but with backslash-escaped space',
    created_at: 2.day.ago,
  },
  {
    title: 'Hola mundo!',
    body: 'The same, but in Spanish',
    created_at: 3.day.ago,
  },
  {
    title: "Today's humidity: 70%",
    body: 'A little hotter than usual',
    created_at: 4.day.ago,
  },
  {
    title: 'This one is a little older',
    body: 'By half a year',
    created_at: 6.months.ago,
  },
  {
    title: 'world_hello',
    body: "Ive run out of ideas\n\nBut I do have\n\na lot of linebreaks.",
    created_at: 5.day.ago,
  },
].each {|r| r[:updated_at] = r[:created_at] })
