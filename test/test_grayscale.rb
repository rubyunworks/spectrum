#!/usr/bin/env ruby
#--
# Color
# Colour management with Ruby
# http://rubyforge.org/projects/color
#   Version 1.5.0
#
# Licensed under a MIT-style licence. See Licence.txt in the main
# distribution for full licensing information.
#
# Copyright (c) 2005 - 2010 Austin Ziegler and Matt Lyon
#++

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../lib") if __FILE__ == $0
require 'test/unit'
require 'spectrum'

module TestColor
  class TestGrayScale < Test::Unit::TestCase
    def setup
      @gs = Spectrum::GrayScale.from_percent(33)
    end

    def test_brightness
      assert_in_delta(0.33, @gs.brightness, Spectrum::COLOR_TOLERANCE)
    end

    def test_darken_by
      assert_in_delta(29.7, @gs.darken_by(10).gray, Spectrum::COLOR_TOLERANCE)
    end

    def test_g
      assert_in_delta(0.33, @gs.g, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(33, @gs.grey, Spectrum::COLOR_TOLERANCE)
      assert_nothing_raised { @gs.gray = 40 }
      assert_in_delta(0.4, @gs.g, Spectrum::COLOR_TOLERANCE)
      assert_nothing_raised { @gs.g = 2.0 }
      assert_in_delta(100, @gs.gray, Spectrum::COLOR_TOLERANCE)
      assert_nothing_raised { @gs.grey = -2.0 }
      assert_in_delta(0.0, @gs.g, Spectrum::COLOR_TOLERANCE)
    end

    def test_html_css
      assert_equal("#545454", @gs.html)
      assert_equal("rgb(33.00%, 33.00%, 33.00%)", @gs.css_rgb)
      assert_equal("rgba(33.00%, 33.00%, 33.00%, 1.00)", @gs.css_rgba)
    end

    def test_lighten_by
      assert_in_delta(0.363, @gs.lighten_by(10).g, Spectrum::COLOR_TOLERANCE)
    end

    def test_pdf_fill
      assert_equal("0.330 g", @gs.pdf_fill)
      assert_equal("0.330 G", @gs.pdf_stroke)
    end

    def test_to_cmyk
      cmyk = nil
      assert_nothing_raised { cmyk = @gs.to_cmyk }
      assert_kind_of(Spectrum::CMYK, cmyk)
      assert_in_delta(0.0, cmyk.c, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.0, cmyk.m, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.0, cmyk.y, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.67, cmyk.k, Spectrum::COLOR_TOLERANCE)
    end

    def test_to_grayscale
      assert_equal(@gs, @gs.to_grayscale)
      assert_equal(@gs, @gs.to_greyscale)
    end

    def test_to_hsl
      hsl = nil
      assert_nothing_raised { hsl = @gs.to_hsl }
      assert_kind_of(Spectrum::HSL, hsl)
      assert_in_delta(0.0, hsl.h, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.0, hsl.s, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.33, hsl.l, Spectrum::COLOR_TOLERANCE)
      assert_equal("hsl(0.00, 0.00%, 33.00%)", @gs.css_hsl)
      assert_equal("hsla(0.00, 0.00%, 33.00%, 1.00)", @gs.css_hsla)
    end

    def test_to_rgb
      rgb = nil
      assert_nothing_raised { rgb = @gs.to_rgb }
      assert_kind_of(Spectrum::RGB, rgb)
      assert_in_delta(0.33, rgb.r, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.33, rgb.g, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.33, rgb.b, Spectrum::COLOR_TOLERANCE)
    end

    def test_to_yiq
      yiq = nil
      assert_nothing_raised { yiq = @gs.to_yiq }
      assert_kind_of(Spectrum::YIQ, yiq)
      assert_in_delta(0.33, yiq.y, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.0, yiq.i, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.0, yiq.q, Spectrum::COLOR_TOLERANCE)
    end

    def test_add
      delta = @gs + Spectrum::GrayScale.new(20)
      max   = @gs + Spectrum::GrayScale.new(80)

      assert_in_delta(1.0, max.g, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.53, delta.g, Spectrum::COLOR_TOLERANCE)
    end

    def test_subtract
      delta = @gs - Spectrum::GrayScale.new(20)
      max   = @gs - Spectrum::GrayScale.new(80)
      assert_in_delta(0.0, max.g, Spectrum::COLOR_TOLERANCE)
      assert_in_delta(0.13, delta.g, Spectrum::COLOR_TOLERANCE)
    end

    def test_inspect
      assert_equal("Gray [33.00%]", @gs.inspect)
    end
  end
end
