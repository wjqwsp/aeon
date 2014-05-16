
-module(aeon).

% Another Erlang to Object Notation translator
% A validating / type-enforcing Erlang record <=> JSON
% converter built on top of JSX supporting deeply nested types

% Requires that the modules defining the types be compiled
% with the runtime_types and exprecs parse transforms

-export([
	 to_record/3,
	 to_type/3,
	 record_to_jsx/2,
	 type_to_jsx/3
	]).

to_record(Jsx, Module, RecordType) ->
	aeon_to_erl:to_record(Jsx, Module, RecordType).

to_type(Jsx, Module, TypeName) ->
	aeon_to_erl:to_type(Jsx, Module, TypeName).

record_to_jsx(Record, Module) ->
	aeon_to_jsx:record_to_jsx(Record, Module).

type_to_jsx(Term, Module, TypeName) ->
	aeon_to_jsx:type_to_jsx(Term, Module, TypeName).

