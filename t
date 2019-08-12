
[1mFrom:[0m /home/ec2-user/environment/boardpost/app/controllers/posts_controller.rb @ line 16 PostsController#create:

    [1;34m14[0m: [32mdef[0m [1;34mcreate[0m
    [1;34m15[0m:   @post = [1;34;4mPost[0m.new(post_params)
 => [1;34m16[0m:   binding.pry
    [1;34m17[0m:   [32mif[0m @post.save
    [1;34m18[0m:     binding.pry
    [1;34m19[0m:     flash[[33m:success[0m] = [31m[1;31m'[0m[31mコメントが投稿されました[1;31m'[0m[31m[0m
    [1;34m20[0m:     redirect_back([35mfallback_location[0m: root_path)
    [1;34m21[0m:   [32melse[0m
    [1;34m22[0m:     [1;34m# binding.pry[0m
    [1;34m23[0m:     flash.now[[33m:danger[0m] = [31m[1;31m'[0m[31mコメントが投稿されませんでした[1;31m'[0m[31m[0m
    [1;34m24[0m:     redirect_back([35mfallback_location[0m: root_path)
    [1;34m25[0m:   [32mend[0m
    [1;34m26[0m: 
    [1;34m27[0m:   
    [1;34m28[0m: [32mend[0m

