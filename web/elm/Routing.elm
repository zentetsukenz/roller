module Routing exposing (..)

import Navigation
import String
import UrlParser exposing (..)


type Route
    = DashboardRoute
    | AboutRoute
    | NotFoundRoute


routeFromResult : Result String Route -> Route
routeFromResult routeResult =
    case routeResult of
        Ok route ->
            route

        Err reason ->
            NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ format DashboardRoute (s "")
        , format AboutRoute (s "about")
        ]


hashParser : Navigation.Location -> Result String Route
hashParser location =
    location.hash
        |> String.dropLeft 1
        |> parse identity matchers


parser : Navigation.Parser (Result String Route)
parser =
    Navigation.makeParser hashParser
