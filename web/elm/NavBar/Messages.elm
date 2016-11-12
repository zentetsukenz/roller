module NavBar.Messages exposing (Msg(..))

import NavBar.Nav.Messages as Nav exposing (..)
import NavBar.Models exposing (..)


type Msg
    = NavMsg Identifier Nav.Msg
