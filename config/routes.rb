Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "totals#index"
  # Routes for the Breakdown resource:

  # CREATE
  get("/breakdowns/new", { :controller => "breakdowns", :action => "new_form" })
  post("/create_breakdown", { :controller => "breakdowns", :action => "create_row" })

  # READ
  get("/breakdowns", { :controller => "breakdowns", :action => "index" })
  get("/breakdowns/:id_to_display", { :controller => "breakdowns", :action => "show" })

  # UPDATE
  get("/breakdowns/:prefill_with_id/edit", { :controller => "breakdowns", :action => "edit_form" })
  post("/update_breakdown/:id_to_modify", { :controller => "breakdowns", :action => "update_row" })

  # DELETE
  get("/delete_breakdown/:id_to_remove", { :controller => "breakdowns", :action => "destroy_row" })

  #------------------------------

  # Routes for the Subscription resource:

  # CREATE
  get("/subscriptions/new", { :controller => "subscriptions", :action => "new_form" })
  post("/create_subscription", { :controller => "subscriptions", :action => "create_row" })

  # READ
  get("/subscriptions", { :controller => "subscriptions", :action => "index" })
  get("/subscriptions/:id_to_display", { :controller => "subscriptions", :action => "show" })

  # UPDATE
  get("/subscriptions/:prefill_with_id/edit", { :controller => "subscriptions", :action => "edit_form" })
  post("/update_subscription/:id_to_modify", { :controller => "subscriptions", :action => "update_row" })

  # DELETE
  get("/delete_subscription/:id_to_remove", { :controller => "subscriptions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Profile resource:

  # CREATE
  get("/profiles/new", { :controller => "profiles", :action => "new_form" })
  post("/create_profile", { :controller => "profiles", :action => "create_row" })

  # READ
  get("/profiles", { :controller => "profiles", :action => "index" })
  get("/profiles/:id_to_display", { :controller => "profiles", :action => "show" })

  # UPDATE
  get("/profiles/:prefill_with_id/edit", { :controller => "profiles", :action => "edit_form" })
  post("/update_profile/:id_to_modify", { :controller => "profiles", :action => "update_row" })

  # DELETE
  get("/delete_profile/:id_to_remove", { :controller => "profiles", :action => "destroy_row" })

  #------------------------------

  # Routes for the Feed resource:

  # CREATE
  get("/feeds/new", { :controller => "feeds", :action => "new_form" })
  post("/create_feed", { :controller => "feeds", :action => "create_row" })

  # READ
  get("/feeds", { :controller => "feeds", :action => "index" })
  get("/feeds/:id_to_display", { :controller => "feeds", :action => "show" })

  # UPDATE
  get("/feeds/:prefill_with_id/edit", { :controller => "feeds", :action => "edit_form" })
  post("/update_feed/:id_to_modify", { :controller => "feeds", :action => "update_row" })

  # DELETE
  get("/delete_feed/:id_to_remove", { :controller => "feeds", :action => "destroy_row" })

  #------------------------------

  # Routes for the Total resource:

  # CREATE
  get("/totals/new", { :controller => "totals", :action => "new_form" })
  post("/create_total", { :controller => "totals", :action => "create_row" })

  # READ
  get("/totals", { :controller => "totals", :action => "index" })
  get("/totals/:id_to_display", { :controller => "totals", :action => "show" })

  # UPDATE
  get("/totals/:prefill_with_id/edit", { :controller => "totals", :action => "edit_form" })
  post("/update_total/:id_to_modify", { :controller => "totals", :action => "update_row" })

  # DELETE
  get("/delete_total/:id_to_remove", { :controller => "totals", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
