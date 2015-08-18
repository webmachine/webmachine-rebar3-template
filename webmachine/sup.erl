%%%-------------------------------------------------------------------
%% @doc {{name}} top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module('{{name}}_sup').

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================

%% Child :: {Id,StartFunc,Restart,Shutdown,Type,Modules}
init([]) ->
    Web = {webmachine_mochiweb,
           {webmachine_mochiweb, start, [{{name}}_config:web_config()]},
           permanent, 5000, worker, [mochiweb_socket_server]},
    Processes = [Web],
    {ok, { {one_for_one, 10, 10}, Processes} }.

%%====================================================================
%% Internal functions
%%====================================================================
