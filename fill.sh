## 📜 Step 3: Create the `fill.sh` Script
Add a clean version of the script you used to the repository:

```bash
#!/bin/bash

# Configuration
YEAR=2025  # Change this to whichever year you want to fill
START_DATE="$YEAR-01-01"
END_DATE="$YEAR-12-31"

curr="$START_DATE"

echo "Starting contribution generation for $YEAR..."

while [ "$curr" != "$END_DATE" ]; do
    # Randomly commit 0 to 3 times per day for a natural look
    NUM_COMMITS=$(( ( RANDOM % 4 ) ))
    
    if [ $NUM_COMMITS -gt 0 ]; then
        for ((i=1; i<=$NUM_COMMITS; i++)); do
            # Random time between 09:00 and 20:00
            HOUR=$(( ( RANDOM % 12 ) + 9 ))
            MIN=$(( ( RANDOM % 50 ) + 10 ))
            COMMIT_DATE="$curr ${HOUR}:${MIN}:00"
            
            echo "Contribution on $COMMIT_DATE" >> contribution.txt
            git add contribution.txt
            GIT_AUTHOR_DATE="$COMMIT_DATE" GIT_COMMITTER_DATE="$COMMIT_DATE" \
            git commit -m "chore: updates for $curr" --quiet
        done
    fi
    # Advance to next day
    curr=$(date -I -d "$curr + 1 day")
done

echo "Done! Run 'git push origin main' to see the magic."
