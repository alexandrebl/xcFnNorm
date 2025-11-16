//
// xcFnNorm by ABrandaoL
// Copyright xCoreng Inc.
// 00.00.00  20251116  0923
//
input
  valor(1.1);
  priod(1000);
var
  data, minVal, maxVal : real;
begin
  //
  // Variables
  //
  minVal :=  Lowest(valor, 1000);
  maxVal := Highest(valor, 1000);
  //
  // Calculation
  //
  if maxVal = minVal then
    data := 0
  else 
    data := (valor - minVal) / (maxVal - minVal);
  //
  // Plotagem
  //
  PlotN(1,data);
end;
