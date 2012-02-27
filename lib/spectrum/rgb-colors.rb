#--
# Color
# Colour management with Ruby
# http://rubyforge.org/projects/color
#   Version 1.4.1
#
# Licensed under a MIT-style licence. See Licence.txt in the main
# distribution for full licensing information.
#
# Copyright (c) 2005 - 2010 Austin Ziegler and Matt Lyon
#++

class Spectrum::RGB
  AliceBlue             = Spectrum::RGB.new(0xf0, 0xf8, 0xff)
  AntiqueWhite          = Spectrum::RGB.new(0xfa, 0xeb, 0xd7)
  Aqua                  = Spectrum::RGB.new(0x00, 0xff, 0xff)
  Aquamarine            = Spectrum::RGB.new(0x7f, 0xff, 0xd4)
  Azure                 = Spectrum::RGB.new(0xf0, 0xff, 0xff)
  Beige                 = Spectrum::RGB.new(0xf5, 0xf5, 0xdc)
  Bisque                = Spectrum::RGB.new(0xff, 0xe4, 0xc4)
  Black                 = Spectrum::RGB.new(0, 0, 0)
  BlanchedAlmond        = Spectrum::RGB.new(0xff, 0xeb, 0xcd)
  Blue                  = Spectrum::RGB.new(0x00, 0x00, 0xff)
  BlueViolet            = Spectrum::RGB.new(0x8a, 0x2b, 0xe2)
  Brown                 = Spectrum::RGB.new(0xa5, 0x2a, 0x2a)
  BurlyWood             = Spectrum::RGB.new(0xde, 0xb8, 0x87)
  Burlywood             = BurlyWood
  CadetBlue             = Spectrum::RGB.new(0x5f, 0x9e, 0xa0)
  Carnation             = Spectrum::RGB.new(0xff, 0x5e, 0xd0)
  Cayenne               = Spectrum::RGB.new(0x8d, 0x00, 0x00)
  Chartreuse            = Spectrum::RGB.new(0x7f, 0xff, 0x00)
  Chocolate             = Spectrum::RGB.new(0xd2, 0x69, 0x1e)
  Coral                 = Spectrum::RGB.new(0xff, 0x7f, 0x50)
  CornflowerBlue        = Spectrum::RGB.new(0x64, 0x95, 0xed)
  Cornsilk              = Spectrum::RGB.new(0xff, 0xf8, 0xdc)
  Crimson               = Spectrum::RGB.new(0xdc, 0x14, 0x3c)
  Cyan                  = Spectrum::RGB.new(0x00, 0xff, 0xff)
  DarkBlue              = Spectrum::RGB.new(0x00, 0x00, 0x8b)
  DarkCyan              = Spectrum::RGB.new(0x00, 0x8b, 0x8b)
  DarkGoldenRod         = Spectrum::RGB.new(0xb8, 0x86, 0x0b)
  DarkGoldenrod         = DarkGoldenRod
  DarkGray              = Spectrum::RGB.new(0xa9, 0xa9, 0xa9)
  DarkGreen             = Spectrum::RGB.new(0x00, 0x64, 0x00)
  DarkGrey              = DarkGray
  DarkKhaki             = Spectrum::RGB.new(0xbd, 0xb7, 0x6b)
  DarkMagenta           = Spectrum::RGB.new(0x8b, 0x00, 0x8b)
  DarkOliveGreen        = Spectrum::RGB.new(0x55, 0x6b, 0x2f)
  DarkOrange            = Spectrum::RGB.new(0xff, 0x8c, 0x00)
  DarkOrchid            = Spectrum::RGB.new(0x99, 0x32, 0xcc)
  DarkRed               = Spectrum::RGB.new(0x8b, 0x00, 0x00)
  DarkSalmon            = Spectrum::RGB.new(0xe9, 0x96, 0x7a)
  DarkSeaGreen          = Spectrum::RGB.new(0x8f, 0xbc, 0x8f)
  DarkSlateBlue         = Spectrum::RGB.new(0x48, 0x3d, 0x8b)
  DarkSlateGray         = Spectrum::RGB.new(0x2f, 0x4f, 0x4f)
  DarkSlateGrey         = DarkSlateGray
  DarkTurquoise         = Spectrum::RGB.new(0x00, 0xce, 0xd1)
  DarkViolet            = Spectrum::RGB.new(0x94, 0x00, 0xd3)
  DarkoliveGreen        = DarkOliveGreen
  Darkorange            = Spectrum::RGB.new(0xff, 0x8c, 0x00)
  Darksalmon            = DarkSalmon
  DeepPink              = Spectrum::RGB.new(0xff, 0x14, 0x93)
  DeepSkyBlue           = Spectrum::RGB.new(0x00, 0xbf, 0xbf)
  DimGray               = Spectrum::RGB.new(0x69, 0x69, 0x69)
  DimGrey               = DimGray
  DodgerBlue            = Spectrum::RGB.new(0x1e, 0x90, 0xff)
  Feldspar              = Spectrum::RGB.new(0xd1, 0x92, 0x75)
  FireBrick             = Spectrum::RGB.new(0xb2, 0x22, 0x22)
  Firebrick             = FireBrick
  FloralWhite           = Spectrum::RGB.new(0xff, 0xfa, 0xf0)
  ForestGreen           = Spectrum::RGB.new(0x22, 0x8b, 0x22)
  Fuchsia               = Spectrum::RGB.new(0xff, 0x00, 0xff)
  Gainsboro             = Spectrum::RGB.new(0xdc, 0xdc, 0xdc)
  GhostWhite            = Spectrum::RGB.new(0xf8, 0xf8, 0xff)
  Gold                  = Spectrum::RGB.new(0xff, 0xd7, 0x00)
  GoldenRod             = Spectrum::RGB.new(0xda, 0xa5, 0x20)
  Goldenrod             = GoldenRod
  Gray                  = Spectrum::RGB.new(0x80, 0x80, 0x80)
  Gray10                = Spectrum::RGB.from_percentage(10, 10, 10)
  Gray20                = Spectrum::RGB.from_percentage(20, 20, 20)
  Gray30                = Spectrum::RGB.from_percentage(30, 30, 30)
  Gray40                = Spectrum::RGB.from_percentage(40, 40, 40)
  Gray50                = Spectrum::RGB.from_percentage(50, 50, 50)
  Gray60                = Spectrum::RGB.from_percentage(60, 60, 60)
  Gray70                = Spectrum::RGB.from_percentage(70, 70, 70)
  Gray80                = Spectrum::RGB.from_percentage(80, 80, 80)
  Gray90                = Spectrum::RGB.from_percentage(90, 90, 90)
  Green                 = Spectrum::RGB.new(0x00, 0x80, 0x00)
  GreenYellow           = Spectrum::RGB.new(0xad, 0xff, 0x2f)
  Grey                  = Gray
  Grey10                = Gray10
  Grey20                = Gray20
  Grey30                = Gray30
  Grey40                = Gray40
  Grey50                = Gray50
  Grey60                = Gray60
  Grey70                = Gray70
  Grey80                = Gray80
  Grey90                = Gray90
  HoneyDew              = Spectrum::RGB.new(0xf0, 0xff, 0xf0)
  Honeydew              = HoneyDew
  HotPink               = Spectrum::RGB.new(0xff, 0x69, 0xb4)
  IndianRed             = Spectrum::RGB.new(0xcd, 0x5c, 0x5c)
  Indigo                = Spectrum::RGB.new(0x4b, 0x00, 0x82)
  Ivory                 = Spectrum::RGB.new(0xff, 0xff, 0xf0)
  Khaki                 = Spectrum::RGB.new(0xf0, 0xe6, 0x8c)
  Lavender              = Spectrum::RGB.new(0xe6, 0xe6, 0xfa)
  LavenderBlush         = Spectrum::RGB.new(0xff, 0xf0, 0xf5)
  LawnGreen             = Spectrum::RGB.new(0x7c, 0xfc, 0x00)
  LemonChiffon          = Spectrum::RGB.new(0xff, 0xfa, 0xcd)
  LightBlue             = Spectrum::RGB.new(0xad, 0xd8, 0xe6)
  LightCoral            = Spectrum::RGB.new(0xf0, 0x80, 0x80)
  LightCyan             = Spectrum::RGB.new(0xe0, 0xff, 0xff)
  LightGoldenRodYellow  = Spectrum::RGB.new(0xfa, 0xfa, 0xd2)
  LightGoldenrodYellow  = LightGoldenRodYellow
  LightGray             = Spectrum::RGB.new(0xd3, 0xd3, 0xd3)
  LightGreen            = Spectrum::RGB.new(0x90, 0xee, 0x90)
  LightGrey             = LightGray
  LightPink             = Spectrum::RGB.new(0xff, 0xb6, 0xc1)
  LightSalmon           = Spectrum::RGB.new(0xff, 0xa0, 0x7a)
  LightSeaGreen         = Spectrum::RGB.new(0x20, 0xb2, 0xaa)
  LightSkyBlue          = Spectrum::RGB.new(0x87, 0xce, 0xfa)
  LightSlateBlue        = Spectrum::RGB.new(0x84, 0x70, 0xff)
  LightSlateGray        = Spectrum::RGB.new(0x77, 0x88, 0x99)
  LightSlateGrey        = LightSlateGray
  LightSteelBlue        = Spectrum::RGB.new(0xb0, 0xc4, 0xde)
  LightYellow           = Spectrum::RGB.new(0xff, 0xff, 0xe0)
  Lightsalmon           = LightSalmon
  LightsteelBlue        = LightSteelBlue
  Lime                  = Spectrum::RGB.new(0x00, 0xff, 0x00)
  LimeGreen             = Spectrum::RGB.new(0x32, 0xcd, 0x32)
  Linen                 = Spectrum::RGB.new(0xfa, 0xf0, 0xe6)
  Magenta               = Spectrum::RGB.new(0xff, 0x00, 0xff)
  Maroon                = Spectrum::RGB.new(0x80, 0x00, 0x00)
  MediumAquaMarine      = Spectrum::RGB.new(0x66, 0xcd, 0xaa)
  MediumAquamarine      = MediumAquaMarine
  MediumBlue            = Spectrum::RGB.new(0x00, 0x00, 0xcd)
  MediumOrchid          = Spectrum::RGB.new(0xba, 0x55, 0xd3)
  MediumPurple          = Spectrum::RGB.new(0x93, 0x70, 0xdb)
  MediumSeaGreen        = Spectrum::RGB.new(0x3c, 0xb3, 0x71)
  MediumSlateBlue       = Spectrum::RGB.new(0x7b, 0x68, 0xee)
  MediumSpringGreen     = Spectrum::RGB.new(0x00, 0xfa, 0x9a)
  MediumTurquoise       = Spectrum::RGB.new(0x48, 0xd1, 0xcc)
  MediumVioletRed       = Spectrum::RGB.new(0xc7, 0x15, 0x85)
  MidnightBlue          = Spectrum::RGB.new(0x19, 0x19, 0x70)
  MintCream             = Spectrum::RGB.new(0xf5, 0xff, 0xfa)
  MistyRose             = Spectrum::RGB.new(0xff, 0xe4, 0xe1)
  Moccasin              = Spectrum::RGB.new(0xff, 0xe4, 0xb5)
  NavajoWhite           = Spectrum::RGB.new(0xff, 0xde, 0xad)
  Navy                  = Spectrum::RGB.new(0x00, 0x00, 0x80)
  OldLace               = Spectrum::RGB.new(0xfd, 0xf5, 0xe6)
  Olive                 = Spectrum::RGB.new(0x80, 0x80, 0x00)
  OliveDrab             = Spectrum::RGB.new(0x6b, 0x8e, 0x23)
  Olivedrab             = OliveDrab
  Orange                = Spectrum::RGB.new(0xff, 0xa5, 0x00)
  OrangeRed             = Spectrum::RGB.new(0xff, 0x45, 0x00)
  Orchid                = Spectrum::RGB.new(0xda, 0x70, 0xd6)
  PaleGoldenRod         = Spectrum::RGB.new(0xee, 0xe8, 0xaa)
  PaleGoldenrod         = PaleGoldenRod
  PaleGreen             = Spectrum::RGB.new(0x98, 0xfb, 0x98)
  PaleTurquoise         = Spectrum::RGB.new(0xaf, 0xee, 0xee)
  PaleVioletRed         = Spectrum::RGB.new(0xdb, 0x70, 0x93)
  PapayaWhip            = Spectrum::RGB.new(0xff, 0xef, 0xd5)
  PeachPuff             = Spectrum::RGB.new(0xff, 0xda, 0xb9)
  Peachpuff             = PeachPuff
  Peru                  = Spectrum::RGB.new(0xcd, 0x85, 0x3f)
  Pink                  = Spectrum::RGB.new(0xff, 0xc0, 0xcb)
  Plum                  = Spectrum::RGB.new(0xdd, 0xa0, 0xdd)
  PowderBlue            = Spectrum::RGB.new(0xb0, 0xe0, 0xe6)
  Purple                = Spectrum::RGB.new(0x80, 0x00, 0x80)
  Red                   = Spectrum::RGB.new(0xff, 0x00, 0x00)
  RosyBrown             = Spectrum::RGB.new(0xbc, 0x8f, 0x8f)
  RoyalBlue             = Spectrum::RGB.new(0x41, 0x69, 0xe1)
  SaddleBrown           = Spectrum::RGB.new(0x8b, 0x45, 0x13)
  Salmon                = Spectrum::RGB.new(0xfa, 0x80, 0x72)
  SandyBrown            = Spectrum::RGB.new(0xf4, 0xa4, 0x60)
  SeaGreen              = Spectrum::RGB.new(0x2e, 0x8b, 0x57)
  SeaShell              = Spectrum::RGB.new(0xff, 0xf5, 0xee)
  Seashell              = SeaShell
  Sienna                = Spectrum::RGB.new(0xa0, 0x52, 0x2d)
  Silver                = Spectrum::RGB.new(0xc0, 0xc0, 0xc0)
  SkyBlue               = Spectrum::RGB.new(0x87, 0xce, 0xeb)
  SlateBlue             = Spectrum::RGB.new(0x6a, 0x5a, 0xcd)
  SlateGray             = Spectrum::RGB.new(0x70, 0x80, 0x90)
  SlateGrey             = SlateGray
  Snow                  = Spectrum::RGB.new(0xff, 0xfa, 0xfa)
  SpringGreen           = Spectrum::RGB.new(0x00, 0xff, 0x7f)
  SteelBlue             = Spectrum::RGB.new(0x46, 0x82, 0xb4)
  Tan                   = Spectrum::RGB.new(0xd2, 0xb4, 0x8c)
  Teal                  = Spectrum::RGB.new(0x00, 0x80, 0x80)
  Thistle               = Spectrum::RGB.new(0xd8, 0xbf, 0xd8)
  Tomato                = Spectrum::RGB.new(0xff, 0x63, 0x47)
  Turquoise             = Spectrum::RGB.new(0x40, 0xe0, 0xd0)
  Violet                = Spectrum::RGB.new(0xee, 0x82, 0xee)
  VioletRed             = Spectrum::RGB.new(0xd0, 0x20, 0x90)
  Wheat                 = Spectrum::RGB.new(0xf5, 0xde, 0xb3)
  White                 = Spectrum::RGB.new(0xff, 0xff, 0xff)
  WhiteSmoke            = Spectrum::RGB.new(0xf5, 0xf5, 0xf5)
  Yellow                = Spectrum::RGB.new(0xff, 0xff, 0x00)
  YellowGreen           = Spectrum::RGB.new(0x9a, 0xcd, 0x32)

  AliceBlue.freeze
  AntiqueWhite.freeze
  Aqua.freeze
  Aquamarine.freeze
  Azure.freeze
  Beige.freeze
  Bisque.freeze
  Black.freeze
  BlanchedAlmond.freeze
  Blue.freeze
  BlueViolet.freeze
  Brown.freeze
  Burlywood.freeze
  CadetBlue.freeze
  Cayenne.freeze
  Carnation.freeze
  Chartreuse.freeze
  Chocolate.freeze
  Coral.freeze
  CornflowerBlue.freeze
  Cornsilk.freeze
  Crimson.freeze
  Cyan.freeze
  DarkBlue.freeze
  DarkCyan.freeze
  DarkGoldenrod.freeze
  DarkGray.freeze
  DarkGreen.freeze
  DarkKhaki.freeze
  DarkMagenta.freeze
  DarkoliveGreen.freeze
  Darkorange.freeze
  DarkOrchid.freeze
  DarkRed.freeze
  Darksalmon.freeze
  DarkSeaGreen.freeze
  DarkSlateBlue.freeze
  DarkSlateGray.freeze
  DarkTurquoise.freeze
  DarkViolet.freeze
  DeepPink.freeze
  DeepSkyBlue.freeze
  DimGray.freeze
  DodgerBlue.freeze
  Feldspar.freeze
  Firebrick.freeze
  FloralWhite.freeze
  ForestGreen.freeze
  Fuchsia.freeze
  Gainsboro.freeze
  GhostWhite.freeze
  Gold.freeze
  Goldenrod.freeze
  Gray.freeze
  Green.freeze
  GreenYellow.freeze
  Honeydew.freeze
  HotPink.freeze
  IndianRed.freeze
  Indigo.freeze
  Ivory.freeze
  Khaki.freeze
  Lavender.freeze
  LavenderBlush.freeze
  LawnGreen.freeze
  LemonChiffon.freeze
  LightBlue.freeze
  LightCoral.freeze
  LightCyan.freeze
  LightGoldenrodYellow.freeze
  LightGray.freeze
  LightGreen.freeze
  LightPink.freeze
  Lightsalmon.freeze
  LightSeaGreen.freeze
  LightSkyBlue.freeze
  LightSlateBlue.freeze
  LightSlateGray.freeze
  LightsteelBlue.freeze
  LightYellow.freeze
  Lime.freeze
  LimeGreen.freeze
  Linen.freeze
  Magenta.freeze
  Maroon.freeze
  MediumAquamarine.freeze
  MediumBlue.freeze
  MediumOrchid.freeze
  MediumPurple.freeze
  MediumSeaGreen.freeze
  MediumSlateBlue.freeze
  MediumSpringGreen.freeze
  MediumTurquoise.freeze
  MediumVioletRed.freeze
  MidnightBlue.freeze
  MintCream.freeze
  MistyRose.freeze
  Moccasin.freeze
  NavajoWhite.freeze
  Navy.freeze
  OldLace.freeze
  Olive.freeze
  Olivedrab.freeze
  Orange.freeze
  OrangeRed.freeze
  Orchid.freeze
  PaleGoldenrod.freeze
  PaleGreen.freeze
  PaleTurquoise.freeze
  PaleVioletRed.freeze
  PapayaWhip.freeze
  Peachpuff.freeze
  Peru.freeze
  Pink.freeze
  Plum.freeze
  PowderBlue.freeze
  Purple.freeze
  Red.freeze
  RosyBrown.freeze
  RoyalBlue.freeze
  SaddleBrown.freeze
  Salmon.freeze
  SandyBrown.freeze
  SeaGreen.freeze
  Seashell.freeze
  Sienna.freeze
  Silver.freeze
  SkyBlue.freeze
  SlateBlue.freeze
  SlateGray.freeze
  Snow.freeze
  SpringGreen.freeze
  SteelBlue.freeze
  Tan.freeze
  Teal.freeze
  Thistle.freeze
  Tomato.freeze
  Turquoise.freeze
  Violet.freeze
  VioletRed.freeze
  Wheat.freeze
  White.freeze
  WhiteSmoke.freeze
  Yellow.freeze
  YellowGreen.freeze
  Gray10.freeze
  Gray20.freeze
  Gray30.freeze
  Gray40.freeze
  Gray50.freeze
  Gray60.freeze
  Gray70.freeze
  Gray80.freeze
  Gray90.freeze
end
