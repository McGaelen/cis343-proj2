
%{

#include <stdio.h>
#include "contacts.tab.h"

%}

%%

([a-z]|[0-9])([a-z]*[0-9]*)*@[a-z]+(\.[a-z]+)+     { return(EMAIL); } //Email
[A-Z][a-z]+         { return(NAME); } //Name
[0-9]{3}-[0-9]{4}   { return(PHONE_NUMBER); } //Phone number
[0-9]{5}            { return(ZIP_CODE); } //Zip code
[0-9]{4}            { return(STREET_NUMBER); } //4-digit street number
[a-z]+              { return(STREET_NAME); } //Street name with no spaces
(DR|RD|AV)          { return(STREET_TYPE); } //Street type

%%
