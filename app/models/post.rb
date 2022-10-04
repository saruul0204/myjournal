# frozen_string_literal: true

class Post < ApplicationRecord
    belongs_to :user
    validates :title, :content, presence: true
  end