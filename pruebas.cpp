#include <math.h>/*************************Tiene los logaritmos, la potencia y nan*/
#include <stdio.h>
#include "maxiutils.h"
int main()
{
    /**
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
    /**/

    /**
    puts("Busca período");
    double DoubleAux;
    double Vector[] = {10, 3, 5, 5, 5, 1, 1, 3, 2, 5, 5};
    printf("Vector = ");
    for (int i = 1; i <= Vector[0]; i++)
    {
        printf("%.0f ", Vector[i]);
    }
    DoubleAux = find_period(Vector, 2);
    printf("\nfind_period(Vector, 2)\t%.0f\n", DoubleAux);
    printf("\n");
    /**/

    puts("Probando PDF_BP con retardo tau");
    double Vector[] = {10, 3, 2, 5, 5, 1, 1, 3, 2, 5, 5};
    unsigned long int D = 3;
    unsigned long int T = 2;

    double* BPHist = PDF_BP(Vector, D, T, "overlapped", "unnormalized");
    printf("\n\n BPHist: ");
    for (int i = 1; i <= BPHist[0]; i++)
    {
        printf("%.0f ", BPHist[i]);
    }

    printf("\n\n Tocame una tecla");
    getchar();

}
