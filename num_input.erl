-module(num_input). 
-export([start/0]). 

fac(N) -> tail_fac(N,1).
tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc).


start() -> 
     {ok, Num} = io:read("Enter a number: "),
        io:format("The number you entered is: ~w~n", [Num]),
   
   if 
      not(is_integer(Num)) -> 
         io:fwrite("Not an Integer\n"); 
      Num < 0 -> 
         io:fwrite("~w", [round(math:pow(abs(Num), 7))]),
         io:fwrite("\n"); 
      Num == 0 -> 
         io:fwrite("~w", [0]);
      true->
      if 
        Num rem 7 == 0 -> 
           io:fwrite("~w", [math:pow(Num, 0.2)]),   
                 io:fwrite("\n"); 
        true ->
           io:fwrite("~w", [fac(Num)]),
           io:fwrite("\n")
      end
   end.

