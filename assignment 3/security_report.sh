#!/bin/bash

LOG="system_access_log.txt"
REPORT="security_report.txt"

echo "SECURITY REPORT" > "$REPORT"

echo "Total security-related events:" >> "$REPORT"
grep -Ec 'FAILED|DENIED' "$LOG" >> "$REPORT"

echo "Users associated with failed/denied activities:" >> "$REPORT"
awk -F'|' '$9=="FAILED" || $9=="DENIED" {print $3 " - " $4}' "$LOG" | sort -u >> "$REPORT"

echo "Most frequently occurring failed/denied action:" >> "$REPORT"
awk -F'|' '$9=="FAILED" || $9=="DENIED" {count[$8]++} END {for (a in count) print count[a], a}' "$LOG" | sort -nr | head -1 >> "$REPORT"

echo "Relevant IP addresses:" >> "$REPORT"
awk -F'|' '$9=="FAILED" || $9=="DENIED" {print $10}' "$LOG" | sort -u >> "$REPORT"

echo "Departments involved:" >> "$REPORT"
awk -F'|' '$9=="FAILED" || $9=="DENIED" {count[$6]++} END {for (d in count) print d, count[d]}' "$LOG" | sort -k2 -nr >> "$REPORT"
