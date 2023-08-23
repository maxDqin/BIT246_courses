class Q5
  def converter(post_id, post_title, post_category, post_likes)
    u=0
    i=0
    while post_id.size >u
      post_Hash = Hash.new
      post_Hash[post_id[i]] = {:title=>post_title[i],
                               :category=>post_category[i],
                               :likes=>post_likes[i]}
      puts post_Hash
      i+=1
      u+=1
    end
  end
end

jh = Q5.new
jh.converter ["post1","post2","post3"],
             ["Models - Rails", "Applets","Servlets"],
             ["Ruby", "Java","Java"],
             [7,3,10]
