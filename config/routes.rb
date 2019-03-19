Rails.application.routes.draw do
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
