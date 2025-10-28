task generate_data: :environment do
  (1..20).each do |i|
    author = Author.create(name: "Author #{i}")

    post_count = [3, 4, 5].sample
    (1..post_count).each do |j|
      Post.create(
        title: "Author #{i}'s #{j.ordinalize} Post",
        author:,
        body: "some body"
      )
    end
  end

  puts "Created #{Author.count} Authors"
  puts "Created #{Post.count} Posts"
end
