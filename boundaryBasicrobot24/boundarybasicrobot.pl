%====================================================================================
% boundarybasicrobot description   
%====================================================================================
request( step, step(TIME) ).
reply( stepfailed, stepfailed(DURATION,CAUSE) ).  %%for step
reply( stepdone, stepdone(V) ).  %%for step
dispatch( setdirection, dir(D) ).
request( engage, engage(CALLER,STEP) ).
reply( engagedone, engagedone(ARG) ).  %%for engage
reply( engagerefused, engagerefused(ARG) ).  %%for engage
%====================================================================================
context(ctxboundarybasicrobot, "localhost",  "TCP", "8000").
context(ctxbasicrobot, "127.0.0.1",  "TCP", "8020").
 qactor( basicrobot, ctxbasicrobot, "external").
  qactor( boundarybasicrobot, ctxboundarybasicrobot, "it.unibo.boundarybasicrobot.Boundarybasicrobot").
 static(boundarybasicrobot).
