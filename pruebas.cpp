#include <math.h>/*************************Tiene los logaritmos, la potencia y nan*/
#include <stdio.h>
#include "maxiutils.h"
int main()
{
    double a;
    double Margins[2];
    double b[16];

    a = NAN;
    printf("a = NAN; --- %.16e\n", a);
    printf("isnan(a) --- %d\n\n", isnan(a));

    a = +HUGE_VAL;
    printf("a = +HUGE_VAL; --- %.16f\n", a);
    printf("(a<0) --- %d\n\n", (a<0));

    printf("Primer valor debajo de uno en double: nextafter(1,0) --- %.60e\n\n", nextafter(1,0));


    b[0] = 15;
    puts("double * b[16];");
    for ( int i = 1; i <= b[0]; i++ )
    {
        b[ i ] = (double)i;
        printf("b[%d] -- %.0f\n", i, b[i]);
    }
    puts("");

    Margins[0] = -1;
    Margins[1] = 17;
    printf("Margins -- {%.0f, %.0f}\n", Margins[0], Margins[1]);
    puts("double* b_norm = normalize_vector(b, Margins);");
    double* b_norm = normalize_vector(b, Margins);
    for ( int i = 1; i <= b[0]; i++ )
    {
        printf("b_norm[%d] -- %.60e\n", i, b_norm[i]);
    }
    puts("");

    puts("double* PDF_val_b = PDF_val(b, 19, Margins, \"normalyzed\");");
    double* PDF_val_b = PDF_val(b, 19, Margins, "normalyzed");
    for ( int i = 1; i <= PDF_val_b[0]; i++ )
    {
        printf("PDF_val_b[%d] -- %.60e\n", i, PDF_val_b[i]);
    }
    puts("");
}
