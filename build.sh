#!/bin/sh

# Temporary helper script to export GA stats
# Requires https://github.com/18F/analytics-reporter

# Also see ./reports.json for custom ONS reports

export ANALYTICS_REPORT_EMAIL=ons-analytics@ons-analytics.iam.gserviceaccount.com
export ANALYTICS_REPORT_IDS=ga:104040341
export ANALYTICS_KEY_PATH=../ONS-Analytics-95eb94bbb46f.json
export ANALYTICS_REPORTS_PATH=reports.json
export ANALYTICS_HOSTNAME=https://beta.ons.gov.uk

analytics --output=ons-data
analytics --output=ons-data --csv
