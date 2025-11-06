task generate_data: :environment do
  (1..100).each do |i|
    author = Author.create(name: "Author #{i}")

    post_count = [10].sample
    (1..post_count).each do |j|
      p = Post.create(
        title: "Author #{i}'s #{j.ordinalize} Post",
        author:,
        body: "some body"
      )

      Tag.create(name: "ruby", post: p) # if rand > 0.5
      Tag.create(name: "rails", post: p) # if rand > 0.5
      Tag.create(name: "postgres", post: p) # if rand > 0.5
      Tag.create(name: "elixir", post: p) # if rand > 0.5
      Tag.create(name: "react", post: p) # if rand > 0.5
    end
  end

  puts "Created #{Author.count} Authors"
  puts "Created #{Post.count} Posts"
  puts "Created #{Tag.count} Tags"
end
