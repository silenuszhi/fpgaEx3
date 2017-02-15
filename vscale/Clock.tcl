createClockTreeSpec -bufferList {buf_1 buf_2 buf_4 cd_12 cd_16 cd_8 inv_1 inv_2 inv_4} -file Clock.ctstch
specifyClockTree -clkfile Clock.ctstch
setCTSMode -routeGuide {true} -routeClkNet {true}
clockDesign -outDir  Clock_reports
setOptMode -simplifyNetlist {false}
clearClockDomains
optDesign -postCTS -outDir Clock_reports/PostCTS
