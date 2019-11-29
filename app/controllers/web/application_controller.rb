# frozen_string_literal: true
include Concerns::AuthHelper
helper_method :current_user

class Web::ApplicationController < ApplicationController
end
