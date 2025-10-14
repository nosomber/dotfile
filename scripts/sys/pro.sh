#!/bin/sh

for file in eng/{9..16}.md; do
    echo "1"
    awk '{sub(/\([^)]*\)/, "()"); print}' $file > temp && mv temp $file
done

for file in ch/{9..16}.md; do
    echo "2"
    awk '{sub(/^[^)]*\)/, ""); print}' $file > temp && mv temp $file
done

for i in {9..16}; do
    echo "3"
    eng="eng/$i.md"
    ch="ch/$i.md"
    awk 'NR==FNR{a[NR]=$0; next} {print a[FNR]; print $0}' "$eng" "$ch" > temp && mv temp "$i.md"
done

for file in {9..16}.md; do
    echo "4"
    awk '{sub(/\)/, ") "); print}' $file > temp && mv temp $file
done
