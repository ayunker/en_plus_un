task purge_data: :environment do
  Tag.destroy_all
  Post.destroy_all
  Author.destroy_all
end
