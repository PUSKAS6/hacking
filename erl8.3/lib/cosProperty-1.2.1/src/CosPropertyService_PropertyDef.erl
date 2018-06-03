%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosPropertyService_PropertyDef
%% Source: /net/isildur/ldisk/daily_build/19_prebuild_opu_o.2017-03-14_21/otp_src_19/lib/cosProperty/src/CosProperty.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosPropertyService_PropertyDef').
-ic_compiled("4_4_2").


-include("CosPropertyService.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:omg.org/CosPropertyService/PropertyDef:1.0",
                   "PropertyDef",
                   [{"property_name",{tk_string,0}},
                    {"property_value",tk_any},
                    {"property_mode",
                     {tk_enum,"IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                              "PropertyModeType",
                              ["normal","read_only","fixed_normal",
                               "fixed_readonly","undefined"]}}]}.

%% returns id
id() -> "IDL:omg.org/CosPropertyService/PropertyDef:1.0".

%% returns name
name() -> "CosPropertyService_PropertyDef".



