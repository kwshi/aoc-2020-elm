module Style exposing (..)
import Css exposing (..)

main_ : List Style
main_ =
  [ displayFlex
  , flexDirection column
  , position absolute
  , left <| pt 0
  , right <| pt 0
  , top <| pt 0
  , bottom <| pt 0
  , backgroundColor <| hex "1d2021"
  , color <| hex "ebdbb2"
  , fontFamilies [ "Roboto Mono", "monospace" ]
  , fontSize <| rem <| 7/8
  ]

head : List Style
head =
  [ backgroundColor <| hex "32302f"
  , padding2 (rem <| 1/2) (rem 1)
  ]

title : List Style
title =
  [ fontSize <| em 1
  , margin <| pt 0
  ]

nav : List Style
nav =
  [ marginTop <| em (1/2)
  ]

app : List Style
app =
  [ flexGrow <| num 1
  , displayFlex
  , flexDirection row
  ]

controls : List Style
controls =
  [ backgroundColor <| hex "282828"
  , padding <| rem 1
  , displayFlex
  , flexDirection column
  , minWidth <| rem 24
  ]

input : List Style
input =
  [ resize none
  , backgroundColor <| hex "1d2021"
  , border3 (px 1) solid <| hex "32302f"
  , borderRadius <| px 2
  , flexGrow <| num 2
  , margin <| pt 0
  ]

inputBtn : List Style
inputBtn =
  [ backgroundColor <| hex "32302f"
  , borderStyle none
  , color inherit
  , padding2 (rem <| 1/4) (rem <| 1/2)
  , fontFamily inherit
  , fontSize <| em <| 7/8
  , borderBottomLeftRadius <| px 3
  ]

vis : List Style
vis =
  [ flexGrow <| num 1
  ]

space : List Style
space =
  [ flexGrow <| num 1 ]
