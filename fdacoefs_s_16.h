/*
 * Filter Coefficients (C Source) generated by the Filter Design and Analysis Tool
 * Generated by MATLAB(R) 8.3 and the Signal Processing Toolbox 6.21.
 * Generated on: 04-May-2019 09:40:43
 */

/*
 * Discrete-Time FIR Filter (real)
 * -------------------------------
 * Filter Structure  : Direct-Form FIR
 * Filter Length     : 17
 * Stable            : Yes
 * Linear Phase      : Yes (Type 1)
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
 *   single-precision filter coefficients.
 */
const int BL_f = 17;
const real32_T B_f[17] = {
   -0.03889911994, -0.09890328348, -0.05057916045,  0.05707198754,    0.039263051,
    -0.1009560674, -0.03597582132,   0.3158973157,   0.5366938114,   0.3158973157,
   -0.03597582132,  -0.1009560674,    0.039263051,  0.05707198754, -0.05057916045,
   -0.09890328348, -0.03889911994
};
