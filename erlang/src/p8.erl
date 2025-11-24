-module(p8).
-export([filter_type_str/1]).

filter_type_str(InputList) ->
    [ListItem || ListItem <- InputList, is_list(ListItem) or is_binary(ListItem)].
