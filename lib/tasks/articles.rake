namespace :articles do
  desc "prints the first article"
  task :first => :environment do
    articles = Article.all()
    article = articles[0]
    puts article.id, article.title, article.body
  end

  desc "prints the first article"
  task :show => :environment do
    number = ENV["ARTICLE"].to_i
    articles = Article.all()
    article = articles[number]
    puts article.id, article.title, article.body
  end
end