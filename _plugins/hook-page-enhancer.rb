Jekyll::Hooks.register :site, :post_read do |site|
    site.data['years'] = site.posts.docs
        .each do |post|
            post.data['year'] = post.data['date'].year
        end
        .map { |post| post.date.year.to_s }
        .uniq
end
