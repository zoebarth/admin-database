## Overview
<!--
Provide a short description of what changes this PR includes (or doesn't include).
-->

## API Endpoints/Web Routes
<!--
If your PR is adding new endpoints or routes, please paste the `rake routes` output of the endpoints here.
-->

```
details_reports             GET       /reports/details(.:format)            reports#details
domestic_totals_reports     GET       /reports/domestic_totals(.:format)    reports#domestic_totals
foreign_totals_reports      GET       /reports/foreign_totals(.:format)     reports#foreign_totals
subscription_sales_reports  GET       /reports/subscription_sales(.:format) reports#subscription_sales
```

## Environment Variables
<!--
Does your PR add, remove, or change any environment variables? If so, list them out here with any required values.
-->

## Checklist
<!--
- [ ] do an important thing
- [ ] do another important thing
-->

<!--
Below are a few things to keep in mind…
-->

- Does this PR create migration(s)?
- Does this PR have unit tests to cover the changes?
- Does this PR require some documentation to be updated?
