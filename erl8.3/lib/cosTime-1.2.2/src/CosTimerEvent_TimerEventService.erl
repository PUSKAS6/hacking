%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTimerEvent_TimerEventService
%% Source: /net/isildur/ldisk/daily_build/19_prebuild_opu_o.2017-03-14_21/otp_src_19/lib/cosTime/src/CosTimerEvent.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTimerEvent_TimerEventService').
-ic_compiled("4_4_2").


%% Interface functions
-export([register/3, register/4, unregister/2]).
-export([unregister/3, event_time/2, event_time/3]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: register
%% 
%%   Returns: RetVal
%%
register(OE_THIS, Event_interface, Data) ->
    corba:call(OE_THIS, register, [Event_interface, Data], ?MODULE).

register(OE_THIS, OE_Options, Event_interface, Data) ->
    corba:call(OE_THIS, register, [Event_interface, Data], ?MODULE, OE_Options).

%%%% Operation: unregister
%% 
%%   Returns: RetVal
%%
unregister(OE_THIS, Timer_event_handler) ->
    corba:call(OE_THIS, unregister, [Timer_event_handler], ?MODULE).

unregister(OE_THIS, OE_Options, Timer_event_handler) ->
    corba:call(OE_THIS, unregister, [Timer_event_handler], ?MODULE, OE_Options).

%%%% Operation: event_time
%% 
%%   Returns: RetVal
%%
event_time(OE_THIS, Timer_event) ->
    corba:call(OE_THIS, event_time, [Timer_event], ?MODULE).

event_time(OE_THIS, OE_Options, Timer_event) ->
    corba:call(OE_THIS, event_time, [Timer_event], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosTimerEvent/TimerEventService:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(register) -> 
	{{tk_objref,"IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0",
                    "TimerEventHandler"},
         [{tk_objref,"IDL:omg.org/CosEventComm/PushConsumer:1.0",
                     "PushConsumer"},
          tk_any],
         []};
oe_tc(unregister) -> 
	{tk_void,[{tk_objref,"IDL:omg.org/CosTimerEvent/TimerEventHandler:1.0",
                             "TimerEventHandler"}],
                 []};
oe_tc(event_time) -> 
	{{tk_objref,"IDL:omg.org/CosTime/UTO:1.0","UTO"},
         [{tk_struct,"IDL:omg.org/CosTimerEvent/TimerEventT:1.0",
                     "TimerEventT",
                     [{"utc",
                       {tk_struct,"IDL:omg.org/TimeBase/UtcT:1.0","UtcT",
                                  [{"time",tk_ulonglong},
                                   {"inacclo",tk_ulong},
                                   {"inacchi",tk_ushort},
                                   {"tdf",tk_short}]}},
                      {"event_data",tk_any}]}],
         []};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"event_time", oe_tc(event_time)},
	{"unregister", oe_tc(unregister)},
	{"register", oe_tc(register)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosTimerEvent/TimerEventService:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventService:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventService:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventService:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventService:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventService:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTimerEvent/TimerEventService:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosTimerEvent_TimerEventService_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosTimerEvent_TimerEventService_impl', Reason, State).


%%%% Operation: register
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, register, [Event_interface, Data]}, _, OE_State) ->
  corba:handle_call('CosTimerEvent_TimerEventService_impl', register, [Event_interface, Data], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: unregister
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, unregister, [Timer_event_handler]}, _, OE_State) ->
  corba:handle_call('CosTimerEvent_TimerEventService_impl', unregister, [Timer_event_handler], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: event_time
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, event_time, [Timer_event]}, _, OE_State) ->
  corba:handle_call('CosTimerEvent_TimerEventService_impl', event_time, [Timer_event], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(Info, State) ->
    corba:handle_info('CosTimerEvent_TimerEventService_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosTimerEvent_TimerEventService_impl', OldVsn, State, Extra).

