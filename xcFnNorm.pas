//
// xcFnNorm by ABrandaoL
// Copyright xCoreng Inc.
// 00.00.00  20251116  0923
//
input
  valor(1.1);
  period(1000);
var
  data, minVal, maxVal : real;
begin
  //
  // Variables
  //
  minVal :=  Lowest(valor, period);
  maxVal := Highest(valor, period);
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
