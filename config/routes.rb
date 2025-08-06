Rails.application.routes.draw do
  get("/rock", { :controller => "zebra", :action => "rock"})

  get("/paper", {:controller => "zebra", :action => "paper"})

  get("/scissors", {:controller => "zebra", :action => "scissors"})

  get("/", {:controller => "zebra", :action => "rules"})
end
