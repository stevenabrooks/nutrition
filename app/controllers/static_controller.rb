class StaticController < ApplicationController
  def index
    @testimonials = Testimonial.order('created_at DESC').limit(2)
    @t1 = @testimonials.first
    @t2 = @testimonials.last
  end
end
