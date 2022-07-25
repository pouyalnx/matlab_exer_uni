/*
 * Filter Coefficients (C Source) generated by the Filter Design and Analysis Tool
 * Generated by MATLAB(R) 8.3 and the Signal Processing Toolbox 6.21.
 * Generated on: 13-May-2019 17:33:23
 */

/*
 * Discrete-Time IIR Filter (real)
 * -------------------------------
 * Filter Structure    : Direct-Form II, Second-Order Sections
 * Number of Sections  : 1
 * Stable              : Yes
 * Linear Phase        : No
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
#define MWSPT_NSEC 3
const int NL[MWSPT_NSEC] = { 1,3,1 };
const int32_T NUM[MWSPT_NSEC][3] = {
  {
      44237387,           0,           0 
  },
  {
    2147483647,  2147483647,  2147483647 
  },
  {
    2147483647,           0,           0 
  }
};
const int DL[MWSPT_NSEC] = { 1,3,1 };
const int32_T DEN[MWSPT_NSEC][3] = {
  {
    2147483647,           0,           0 
  },
  {
    2147483647, -2147483648,  1526018424 
  },
  {
    2147483647,           0,           0 
  }
};
