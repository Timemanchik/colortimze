# frozen_string_literal: true

require_relative "colortimze/version"

module Colortimze
  class Error < StandardError
  end

  def colortize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colortize(31)
  end

  def green
    colortize(32)
  end

  def yellow
    colortize(33)
  end

  def blue
    colortize(34)
  end

  def pink
    colortize(35)
  end

  def light_blue
    colortize(36)
  end

  def black
    colortize(30)
  end
end
