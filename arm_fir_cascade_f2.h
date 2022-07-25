/*
 * Filter Coefficients (C Source) generated by the Filter Design and Analysis Tool
 * Generated by MATLAB(R) 8.3 and the Signal Processing Toolbox 6.21.
 * Generated on: 04-May-2019 11:00:30
 */

/*
 * Discrete-Time FIR Filter (real)
 * -------------------------------
 * Filter Structure  : Direct-Form FIR
 * Filter Length     : 32
 * Stable            : Yes
 * Linear Phase      : Yes (Type 4)
 */

/* General type conversion for MATLAB generated C-code  */
#include "tmwtypes.h"
/* 
 * Expected path to tmwtypes.h 
 * C:\Program Files\MATLAB\R2014a\extern\include\tmwtypes.h 
 */
/*
 * Warning - Filter coefficients were truncated to fit specified data type.  
 *   The resulting response may not match generated theoretical response.
 *   Use the Filter Design & Analysis Tool to design accurate
 *   int32 filter coefficients.
 */
const int BL = 32;
const int32_T B[32] = {
     -52140200,   -21330163,   -25792822,   -30949249,   -36958622,   -44037037,
     -52454663,   -62603367,   -75120638,   -91039209,  -112154358,  -141872595,
    -187445530,  -267764263,  -452277996, -1366038748,  1366038748,   452277996,
     267764263,   187445530,   141872595,   112154358,    91039209,    75120638,
      62603367,    52454663,    44037037,    36958622,    30949249,    25792822,
      21330163,    52140200
};