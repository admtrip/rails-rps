Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "rules" })
  
  get("/rock", { :controller => "zebra", :action => "play_rock" })

  get("/paper", { :controller => "zebra", :action => "play_paper" })

  get("/scissors", { :controller => "zebra", :action => "play_scissors" })

end
