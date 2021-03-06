%module sw_gnome
%{
/* Includes the header in the wrapper code */
#include <config.h>
#include <gtk/gtk.h>
#include <dialog-progress.h>
%}
#if defined(SWIGGUILE)
%{
#include "guile-mappings.h"

SCM scm_init_sw_gnome_module (void);
%}
#endif

%import "base-typemaps.i"

/* Parse the header file to generate wrappers */
%include <dialog-progress.h>

