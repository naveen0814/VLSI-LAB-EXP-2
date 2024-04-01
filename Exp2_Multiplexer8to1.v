module m81(Y, I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2);
input I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2;
output Y;
wire T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11;
not g1(T1, S0);
not g2(T2, S1);
not g3(T3, S2);
and g4(T4, I0, T1, T2, T3), g5(T5, I1, S0, T2, T3);
and g6(T6, I2, T1, S1, T3), g7(T7, I3, S0, S1, T3);
and g8(T8, I4, T1, T2, S2), g9(T9, I5, S0, T2, S2);
and g10(T10, I6, T1, S1, S2), g11(T11, I7, S0, S1, S2);
or g12(Y, T4, T5, T6, T7, T8, T9, T10, T11);
endmodule
