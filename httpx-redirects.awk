# httpx v1.6.7

# httpx -l subdomains.txt -sc -ct -fr -silent | awk -f httpx-redirects.awk | sort

match($NF, /https?:\/\/[^/\]]+/) {

    URL=substr($NF, RSTART, RLENGTH);

    $2 = substr($2, 2, length($2) - 2); gsub(",", " ", $2);
    
    $3 = substr($3, 2, length($3) - 2);

    print $3, "\033[34m"URL"\033[36m <---\033[0m", $1, $2;
    
}