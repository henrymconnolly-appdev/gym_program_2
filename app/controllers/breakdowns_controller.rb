class BreakdownsController < ApplicationController
  def index
    @breakdowns = Breakdown.all

    render("breakdown_templates/index.html.erb")
  end

  def show
    @breakdown = Breakdown.find(params.fetch("id_to_display"))

    render("breakdown_templates/show.html.erb")
  end

  def new_form
    @breakdown = Breakdown.new

    render("breakdown_templates/new_form.html.erb")
  end

  def create_row
    @breakdown = Breakdown.new

    @breakdown.total_id = params.fetch("total_id")
    @breakdown.squat = params.fetch("squat")
    @breakdown.benchpress = params.fetch("benchpress")
    @breakdown.deadlift = params.fetch("deadlift")
    @breakdown.explained_lift_total = params.fetch("explained_lift_total")

    if @breakdown.valid?
      @breakdown.save

      redirect_back(:fallback_location => "/breakdowns", :notice => "Breakdown created successfully.")
    else
      render("breakdown_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @breakdown = Breakdown.find(params.fetch("prefill_with_id"))

    render("breakdown_templates/edit_form.html.erb")
  end

  def update_row
    @breakdown = Breakdown.find(params.fetch("id_to_modify"))

    @breakdown.total_id = params.fetch("total_id")
    @breakdown.squat = params.fetch("squat")
    @breakdown.benchpress = params.fetch("benchpress")
    @breakdown.deadlift = params.fetch("deadlift")
    @breakdown.explained_lift_total = params.fetch("explained_lift_total")

    if @breakdown.valid?
      @breakdown.save

      redirect_to("/breakdowns/#{@breakdown.id}", :notice => "Breakdown updated successfully.")
    else
      render("breakdown_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @breakdown = Breakdown.find(params.fetch("id_to_remove"))

    @breakdown.destroy

    redirect_to("/breakdowns", :notice => "Breakdown deleted successfully.")
  end
end
