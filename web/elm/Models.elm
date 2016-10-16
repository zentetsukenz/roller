module Models exposing (..)

import Routing exposing (..)


type alias Model =
    { route : Routing.Route }


initModel : Routing.Route -> Model
initModel route =
    Model route
