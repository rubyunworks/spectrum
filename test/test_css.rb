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
  class TestCSS < Test::Unit::TestCase
    def test_index
      assert_equal(Spectrum::RGB::AliceBlue, Spectrum::CSS[:aliceblue])
      assert_equal(Spectrum::RGB::AliceBlue, Spectrum::CSS["AliceBlue"])
      assert_equal(Spectrum::RGB::AliceBlue, Spectrum::CSS["aliceBlue"])
      assert_equal(Spectrum::RGB::AliceBlue, Spectrum::CSS["aliceblue"])
      assert_equal(Spectrum::RGB::AliceBlue, Spectrum::CSS[:AliceBlue])
    end
  end
end
