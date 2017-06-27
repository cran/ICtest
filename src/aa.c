#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
   Check these declarations against the C/Fortran source code.
*/

/* .Call calls */
extern SEXP ICtest_computeObj_C(SEXP, SEXP, SEXP);
extern SEXP ICtest_computeTVec_C(SEXP, SEXP, SEXP, SEXP);
extern SEXP ICtest_symmetricPower_C(SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
    {"ICtest_computeObj_C",     (DL_FUNC) &ICtest_computeObj_C,     3},
    {"ICtest_computeTVec_C",    (DL_FUNC) &ICtest_computeTVec_C,    4},
    {"ICtest_symmetricPower_C", (DL_FUNC) &ICtest_symmetricPower_C, 2},
    {NULL, NULL, 0}
};

void R_init_ICtest(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
