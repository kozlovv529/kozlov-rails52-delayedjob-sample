# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # change partials path to frontend
  prepend_view_path Rails.root.join("frontend")
  before_action :set_cache_buster

  # health monitoring URL
  def ping
    render plain: "ok"
  end

  def set_cache_buster
    response.headers["Cache-Control"] =
      "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end
end
