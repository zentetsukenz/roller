module Messages exposing (Msg(..))

import NavBar.Messages as NavBarMessages exposing (..)


type Msg
    = NavBarMsg NavBarMessages.Msg
