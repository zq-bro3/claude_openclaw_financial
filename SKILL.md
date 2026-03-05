---
name: financial-analysis
description: |
  Core financial modeling and analysis tools: DCF, comps, LBO, 3-statement models, competitive analysis, and deck QC.

  **Perfect for:**
  - Investment banking and M&A analysis
  - Equity research and valuation
  - Private equity due diligence
  - Wealth management and portfolio analysis
  - Financial modeling and benchmarking

  **Features:**
  - Comparable company analysis with institutional-grade spreadsheets
  - DCF valuation models with scenario analysis
  - LBO modeling for private equity transactions
  - 3-statement financial modeling
  - MCP integrations for real-time financial data
homepage: https://github.com/anthropics/financial-services-plugins
metadata:
  {
    "openclaw":
      {
        "emoji": "📊",
        "requires": { "bins": [] },
        "install": [],
      },
  }
---

# Financial Analysis

Professional financial modeling and analysis tools for investment banking, equity research, private equity, and wealth management workflows.

## Overview

This skill provides comprehensive financial analysis capabilities including:

- **Comparable Company Analysis**: Build institutional-grade comps with operating metrics, valuation multiples, and statistical benchmarking
- **DCF Valuation**: Discounted cash flow models with scenario analysis and sensitivity testing
- **LBO Modeling**: Leveraged buyout models for private equity transactions
- **3-Statement Modeling**: Integrated income statement, balance sheet, and cash flow projections
- **Data Integrations**: MCP connectors for real-time financial data from leading providers

## Available Skills

### comps-analysis
Build institutional-grade comparable company analyses with operating metrics, valuation multiples, and statistical benchmarking in Excel/spreadsheet format.

### dcf-model
Create comprehensive DCF valuation models with WACC calculation, terminal value methods, and scenario analysis.

### lbo-model
Build leveraged buyout models with entry/exit analysis, returns calculation, and debt structuring.

## MCP Data Connectors

When available, this skill prioritizes MCP data sources for accuracy and reliability:

1. **S&P Global (Kensho)** - Comprehensive financial data and analytics
2. **FactSet** - Institutional-grade market data and analysis
3. **Daloopa** - Automated financial data extraction
4. **Morningstar** - Equity research and fundamental data
5. **PitchBook** - Private market data and analysis
6. **LSEG** - Fixed income, FX, and macro data
7. **Moody's** - Credit ratings and research
8. **MT Newswires** - Real-time financial news
9. **Aiera** - AI-powered earnings analysis
10. **Chronograph** - Private equity performance data
11. **Egnyte** - Document management and collaboration

## Usage Examples

### Comparable Company Analysis
```
/comps Apple Microsoft Google
```
Build a comprehensive comparable company analysis for tech giants with operating metrics, valuation multiples, and peer benchmarking.

### DCF Valuation
```
/dcf Tesla
```
Create a DCF valuation model with WACC calculation, scenario analysis, and sensitivity testing.

### LBO Modeling
```
/lbo target_company
```
Build a leveraged buyout model with entry/exit assumptions, debt structuring, and returns analysis.

## Data Source Priority

**Always follow this hierarchy:**
1. **MCP data sources** (if available) - Use exclusively for financial and trading information
2. **Bloomberg Terminal** - Institutional terminal access
3. **SEC EDGAR filings** - Primary source documents
4. **Never use web search** - Lacks accuracy and audit trails required for institutional analysis

## Output Formats

- **Excel/Spreadsheet**: Professional-grade financial models with formulas, formatting, and documentation
- **PDF Reports**: Publication-ready analysis reports
- **PowerPoint Decks**: Investment committee presentations and pitch materials

## Quality Standards

All financial analysis follows institutional standards:
- **Data Verification**: Cross-check multiple sources
- **Audit Trails**: Document all data sources and assumptions
- **Formula Transparency**: Clear, traceable calculations
- **Professional Formatting**: Industry-standard presentation
- **Statistical Rigor**: Proper quartile analysis and benchmarking

## Security & Compliance

- **Data Privacy**: No sensitive client data stored in prompts
- **Source Verification**: All data sourced from verified providers
- **Methodology Documentation**: Clear explanation of analytical approaches
- **Review Process**: All analysis requires professional review

## Installation

This skill requires no additional binaries. MCP connectors may require separate subscriptions with respective data providers.

## Support

For issues with:
- **MCP Connectors**: Contact respective data provider support
- **Model Calculations**: Review assumptions and data sources
- **Formatting Issues**: Check template preferences and company style guides
