URL="https://www.amfiindia.com/spages/NAVAll.txt"
OUT="amfi_nav.tsv"

curl -s "$URL" | \
awk -F ';' 'NR > 1 && NF >= 5 {print $4 "\t" $5}' > "$OUT"

echo "Saved Output into $OUT"
