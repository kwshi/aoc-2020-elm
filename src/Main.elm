module Main exposing (main)
import Browser
import Browser.Navigation as Nav
import Html.Styled as Ht
import Html.Styled.Attributes as At
import Html.Styled.Events as Ev
import Url
import Day.Day1
import Css
import Style

type alias Model =
  { day : 
    { day1 : Day.Day1.Model
    }
  }

type Day
  = Day1

type Msg 
  = Nop

main : Program {} Model Msg
main = 
  Browser.application
  { init = init
  , onUrlChange = \_ -> Nop
  , onUrlRequest = \_ -> Nop
  , subscriptions = \_ -> Sub.none
  , update = update
  , view = view
  }

init : {} -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init {} model msg = 
  ( { day = 
      { day1 = Day.Day1.init
      }
    }
  , Cmd.none 
  )

update : Msg -> Model -> ( Model, Cmd Msg )
update msg mod = ( mod, Cmd.none )

view : Model -> Browser.Document Msg
view mod = 
  { title = "hi"
  , body =
    [ Ht.main_ [ At.css Style.main_ ] 
      [ Ht.div [ At.css Style.head ]
        [ Ht.h1 [ At.css Style.title ]
          [ Ht.text "Advent of Code 2020: visualizations by Kye" ]
        , Ht.nav [ At.css Style.nav ] 
          [ Ht.text "1"
          ]
        ]
      , Ht.div [ At.css Style.app ]
        [ Ht.div [ At.css Style.controls ] 
          [ Ht.label [ ] 
            [ Ht.text "Input"
            ]
          , Ht.div
            [ ]
            [ Ht.button [ At.css Style.inputBtn ] 
              [ Ht.text "Sample (short)" ]
            , Ht.button [ At.css Style.inputBtn ] 
              [ Ht.text "Sample (long)" ]
            , Ht.button [ At.css Style.inputBtn ] 
              [ Ht.text "Custom" ]
            ]
          , Ht.textarea [ At.css Style.input ] [ ]
          , Ht.div [ At.css Style.space ] [ ]
          ]
        , Ht.div [ At.css Style.vis ]
          []
        ]
      ]
    ]
    |> List.map Ht.toUnstyled
  }

