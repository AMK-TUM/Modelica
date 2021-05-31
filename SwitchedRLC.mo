model SwitchedRLC "An RLC circuit with a switch"

  //Type
  type Voltage=Real(unit="V");
  type Current=Real(unit"A");
  type Resistance=Real(unit="Ohm");
  type Capacitance=Real(unit="F");
  type Inductance=Real(unit="H");
  
  //Parameter
  parameter Voltage Vb=24 "Battery voltage";
  parameter Inductance L=1;
  parameter Resistance R=100;
  parameter Capacitance C =1e-3;
  
  Voltage Vs;
  Voltage V;
  Current i_L;
  Current i_C;
  Current i_R;


equation
  Vs = if time>0.5 then Vb else 0;
  V = i_R*R;
  C*der(V) = i_C;
  L*der(i_L) = (Vs-V);
  i_L=i_R+i_C;



end SwitchedRLC;
