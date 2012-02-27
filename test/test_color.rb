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
require 'spectrum/css'

module TestColor
  class TestColor < Test::Unit::TestCase
    def setup
      Kernel.module_eval do
        alias old_warn warn

        def warn(message)
          $last_warn = message
        end
      end
    end

    def teardown
      Kernel.module_eval do
        undef warn
        alias warn old_warn
        undef old_warn
      end
    end

    def test_const
      $last_warn = nil
      assert_equal(Spectrum::RGB::AliceBlue, Spectrum::AliceBlue)
      assert_equal("Spectrum::AliceBlue has been deprecated. Use Spectrum::RGB::AliceBlue instead.", $last_warn)

      $last_warn = nil # Do this twice to make sure it always happens...
      assert(Spectrum::AliceBlue)
      assert_equal("Spectrum::AliceBlue has been deprecated. Use Spectrum::RGB::AliceBlue instead.", $last_warn)

      $last_warn = nil
      assert_equal(Spectrum::COLOR_VERSION, Spectrum::VERSION)
      assert_equal("Spectrum::VERSION has been deprecated. Use Spectrum::COLOR_VERSION instead.", $last_warn)

      $last_warn = nil
      assert_equal(Spectrum::COLOR_VERSION, Spectrum::COLOR_TOOLS_VERSION)
      assert_equal("Spectrum::COLOR_TOOLS_VERSION has been deprecated. Use Spectrum::COLOR_VERSION instead.", $last_warn)

      $last_warn = nil
      assert(Spectrum::COLOR_VERSION)
      assert_nil($last_warn)
      assert(Spectrum::COLOR_EPSILON)
      assert_nil($last_warn)

      assert_raises(NameError) { assert(Spectrum::MISSING_VALUE) }
    end

    def test_normalize
      (1..10).each do |i|
        assert_equal(0.0, Spectrum.normalize(-7 * i))
        assert_equal(0.0, Spectrum.normalize(-7 / i))
        assert_equal(0.0, Spectrum.normalize(0 - i))
        assert_equal(1.0, Spectrum.normalize(255 + i))
        assert_equal(1.0, Spectrum.normalize(256 * i))
        assert_equal(1.0, Spectrum.normalize(65536 / i))
      end
      (0..255).each do |i|
        assert_in_delta(i / 255.0, Spectrum.normalize(i / 255.0),
                        1e-2)
      end
    end

    def test_normalize_range
      assert_equal(0, Spectrum.normalize_8bit(-1))
      assert_equal(0, Spectrum.normalize_8bit(0))
      assert_equal(127, Spectrum.normalize_8bit(127))
      assert_equal(172, Spectrum.normalize_8bit(172))
      assert_equal(255, Spectrum.normalize_8bit(255))
      assert_equal(255, Spectrum.normalize_8bit(256))

      assert_equal(0, Spectrum.normalize_16bit(-1))
      assert_equal(0, Spectrum.normalize_16bit(0))
      assert_equal(127, Spectrum.normalize_16bit(127))
      assert_equal(172, Spectrum.normalize_16bit(172))
      assert_equal(255, Spectrum.normalize_16bit(255))
      assert_equal(256, Spectrum.normalize_16bit(256))
      assert_equal(65535, Spectrum.normalize_16bit(65535))
      assert_equal(65535, Spectrum.normalize_16bit(66536))

      assert_equal(-100, Spectrum.normalize_to_range(-101, -100..100))
      assert_equal(-100, Spectrum.normalize_to_range(-100.5, -100..100))
      assert_equal(-100, Spectrum.normalize_to_range(-100, -100..100))
      assert_equal(-100, Spectrum.normalize_to_range(-100.0, -100..100))
      assert_equal(-99.5, Spectrum.normalize_to_range(-99.5, -100..100))
      assert_equal(-50, Spectrum.normalize_to_range(-50, -100..100))
      assert_equal(-50.5, Spectrum.normalize_to_range(-50.5, -100..100))
      assert_equal(0, Spectrum.normalize_to_range(0, -100..100))
      assert_equal(50, Spectrum.normalize_to_range(50, -100..100))
      assert_equal(50.5, Spectrum.normalize_to_range(50.5, -100..100))
      assert_equal(99, Spectrum.normalize_to_range(99, -100..100))
      assert_equal(99.5, Spectrum.normalize_to_range(99.5, -100..100))
      assert_equal(100, Spectrum.normalize_to_range(100, -100..100))
      assert_equal(100, Spectrum.normalize_to_range(100.0, -100..100))
      assert_equal(100, Spectrum.normalize_to_range(100.5, -100..100))
      assert_equal(100, Spectrum.normalize_to_range(101, -100..100))
    end

    def test_new
      $last_warn = nil
      c = Spectrum.new("#fff")
      assert_kind_of(Spectrum::HSL, c)
      assert_equal(Spectrum::RGB::White.to_hsl, c)
      assert_equal("Spectrum.new has been deprecated. Use Spectrum::RGB.new instead.", $last_warn)

      $last_warn = nil
      c = Spectrum.new([0, 0, 0])
      assert_kind_of(Spectrum::HSL, c)
      assert_equal(Spectrum::RGB::Black.to_hsl, c)
      assert_equal("Spectrum.new has been deprecated. Use Spectrum::RGB.new instead.", $last_warn)

      $last_warn = nil
      c = Spectrum.new([10, 20, 30], :hsl)
      assert_kind_of(Spectrum::HSL, c)
      assert_equal(Spectrum::HSL.new(10, 20, 30), c)
      assert_equal("Spectrum.new has been deprecated. Use Spectrum::HSL.new instead.", $last_warn)

      $last_warn = nil
      c = Spectrum.new([10, 20, 30, 40], :cmyk)
      assert_kind_of(Spectrum::HSL, c)
      assert_equal(Spectrum::CMYK.new(10, 20, 30, 40).to_hsl, c)
      assert_equal("Spectrum.new has been deprecated. Use Spectrum::CMYK.new instead.", $last_warn)
    end
  end
end
