module Main exposing (..)

import Html exposing (Html, div, text)
import Navigation
import Routing exposing (..)


type alias Model =
    { route : Routing.Route }


type Msg
    = ShowDashboard
    | ShowAbout


init : Result String Route -> ( Model, Cmd Msg )
init result =
    let
        currentRoute =
            Routing.routeFromResult result
    in
        ( initModel currentRoute, Cmd.none )


initModel : Routing.Route -> Model
initModel route =
    Model route


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


urlUpdate : Result String Route -> Model -> ( Model, Cmd Msg )
urlUpdate result model =
    let
        currentRoute =
            Routing.routeFromResult result
    in
        ( { model | route = currentRoute }, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        ShowDashboard ->
            ( { model | route = DashboardRoute }, Cmd.none )

        ShowAbout ->
            ( { model | route = AboutRoute }, Cmd.none )


view : Model -> Html Msg
view model =
    div [] [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        DashboardRoute ->
            div [] [ text "Dashboard!!" ]

        AboutRoute ->
            div [] [ text "About!!" ]

        NotFoundRoute ->
            div [] [ text "Not Found!!" ]


main : Program Never
main =
    Navigation.program Routing.parser
        { init = init
        , view = view
        , update = update
        , urlUpdate = urlUpdate
        , subscriptions = subscriptions
        }
