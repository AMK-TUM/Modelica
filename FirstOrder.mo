model FirstOrder "A simple  first order differential equation"
  Real x "State variable";
initial equation
  x = 2 ;
equation
  der(x) = 1-x "Equation";
end FirstOrder;
