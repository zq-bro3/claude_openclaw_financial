---
name: fsi-comps-analysis
description: |
  Build institutional-grade comparable company analyses with operating metrics, valuation multiples, and statistical benchmarking in Excel/spreadsheet format.

  **Perfect for:**
  - Public company valuation (M&A, investment analysis)
  - Benchmarking performance vs. industry peers
  - Pricing IPOs or funding rounds
  - Identifying valuation outliers (over/under-valued)
  - Supporting investment committee presentations
  - Creating sector overview reports

  **Not ideal for:**
  - Private companies without comparable public peers
  - Highly diversified conglomerates
  - Distressed/bankrupt companies
  - Pre-revenue startups
  - Companies with unique business models
homepage: https://github.com/anthropics/financial-services-plugins
---

# Comparable Company Analysis

## ⚠️ CRITICAL: Data Source Priority (READ FIRST)

**ALWAYS follow this data source hierarchy:**

1. **FIRST: Check for MCP data sources** - If S&P Kensho MCP, FactSet MCP, or Daloopa MCP are available, use them exclusively for financial and trading information
2. **DO NOT use web search** if the above MCP data sources are available
3. **ONLY if MCPs are unavailable:** Then use Bloomberg Terminal, SEC EDGAR filings, or other institutional sources
4. **NEVER use web search as a primary data source** - it lacks the accuracy, audit trails, and reliability required for institutional-grade analysis

**Why this matters:** MCP sources provide verified, institutional-grade data with proper citations. Web search results can be outdated, inaccurate, or unreliable for financial analysis.

---

## Overview

Build institutional-grade comparable company analyses that combine operating metrics, valuation multiples, and statistical benchmarking. The output is a structured Excel/spreadsheet that enables informed investment decisions through peer comparison.

## Core Philosophy

**"Build the right structure first, then let the data tell the story."**

Start with headers that force strategic thinking about what matters, input clean data, build transparent formulas, and let statistics emerge automatically. A good comp should be immediately readable by someone who didn't build it.

## Usage

### Command
```
/comps [company1] [company2] [company3]...
```

### Examples
```
/comps Apple Microsoft Google
/comps JPM BAC WFC
/comps Exxon Chevron ConocoPhillips
```

## Key Features

### Data Source Integration
- **MCP Connectors**: Prioritize S&P Kensho, FactSet, Daloopa for real-time data
- **SEC Filings**: Primary source for financial statements
- **Market Data**: Real-time pricing and trading information
- **Institutional Sources**: Bloomberg Terminal, Capital IQ

### Statistical Analysis
- **Quartile Analysis**: 25th, Median, 75th percentile for context
- **Outlier Detection**: Statistical identification of valuation anomalies
- **Benchmarking**: Peer group comparison and relative performance
- **Trend Analysis**: Historical growth rates and momentum indicators

### Professional Output
- **Excel Format**: Native spreadsheet with live formulas
- **Institutional Formatting**: Professional presentation standards
- **Audit Trails**: Complete documentation of data sources
- **Flexible Templates**: Adaptable to different industries and use cases

## Industry-Specific Metrics

### Technology/SaaS
- Revenue Growth, ARR, Net Dollar Retention
- Gross Margin, EBITDA Margin, FCF Margin
- Rule of 40, EV/Revenue, EV/EBITDA
- Customer Metrics: CAC Payback, LTV/CAC

### Financial Services
- ROE, ROA, Efficiency Ratio
- Net Interest Margin, Loan Loss Reserves
- Price/Book, P/E, Dividend Yield
- Tier 1 Capital, Leverage Ratios

### Industrials/Manufacturing
- Asset Turnover, Inventory Turns
- CapEx Intensity, Backlog
- ROIC, EBITDA Margin
- Revenue Growth, Debt/Equity

### Healthcare
- R&D/Revenue, Pipeline Value
- Gross Margin, EBITDA Margin
- Revenue Growth, EV/Revenue
- Regulatory Milestones

## Quality Standards

### Data Verification
- Cross-check multiple sources
- Document all data sources with citations
- Verify calculation consistency
- Ensure proper time period alignment

### Formula Integrity
- Transparent cell references
- No hardcoded values in formulas
- Proper error handling
- Clear calculation methodology

### Professional Presentation
- Consistent formatting conventions
- Clear section headers
- Statistical summaries
- Comprehensive notes section

## Output Checklist

Before delivering a comp analysis, verify:
- [ ] All companies are truly comparable
- [ ] Data is from consistent time periods
- [ ] Units are clearly labeled (millions/billions)
- [ ] Formulas reference cells, not hardcoded values
- [ ] All hard-coded input cells have comments with data sources
- [ ] Statistics include quartiles (Max, 75th, Med, 25th, Min)
- [ ] Notes section documents sources and methodology
- [ ] Sanity checks pass (margins logical, multiples reasonable)
- [ ] Date stamp is current and accurate

## Common Pitfalls to Avoid

❌ Mixing market cap and enterprise value in formulas
❌ Using different time periods for numerator and denominator
❌ Hardcoding numbers without source documentation
❌ Including non-comparable companies
❌ Using outdated data without disclosure
❌ Calculating averages of percentages incorrectly
❌ Missing statistical analysis for key metrics

## Best Practices

1. **Start with the right peer group** - Better to have 3 perfect comps than 6 questionable ones
2. **Use consistent time periods** - LTM for all companies to smooth seasonality
3. **Document everything** - Data sources, assumptions, and methodology
4. **Focus on what matters** - 5-10 key metrics vs. 20 that don't tell a story
5. **Let statistics guide insights** - Quartiles reveal more than averages
6. **Maintain professional standards** - Institutional-quality formatting and presentation

## Integration with OpenClaw

This skill integrates seamlessly with OpenClaw's ecosystem:
- **Multi-channel delivery**: Share analyses via WhatsApp, Slack, email
- **Collaborative review**: Team members can review and comment
- **Version control**: Track changes and maintain audit trails
- **Template management**: Reuse and customize industry templates
- **Data source management**: Centralized MCP connector configuration
