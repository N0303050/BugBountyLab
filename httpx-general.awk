# httpx v1.6.7

# httpx -l subdomains.txt -sc -cl -ct -title -fc 301,302,307,308 -silent | awk -f httpx-general.awk | sort

{
    
    printf "%s ", $2; printf "%s ", $4;

    for (i=5; i<=NF; i++) { printf $i " " };

    print $3, $1;

}