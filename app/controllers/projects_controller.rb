class ProjectsController < ApplicationController
  before_action :logged_in_user, only: [:new]
  # GET /projects/new
  def new
    current_user.profile.experience.profiles.create
    flash[:success] = "Project added."
    redirect_to edit_url
  end