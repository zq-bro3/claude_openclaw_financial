---
name: fsi-dcf-model
description: |
  Create comprehensive DCF (Discounted Cash Flow) valuation models with WACC calculation, terminal value methods, and scenario analysis.

  **Perfect for:**
  - Company valuation for M&A transactions
  - Investment analysis and equity research
  - Fair value assessment for financial reporting
  - Investment committee presentations
  - Sensitivity analysis and scenario planning

  **Key Features:**
  - WACC calculation with customizable inputs
  - Multiple terminal value methods (perpetual growth, exit multiple)
  - Scenario analysis (base, upside, downside cases)
  - Sensitivity tables for key assumptions
  - Professional Excel output with formulas
homepage: https://github.com/anthropics/financial-services-plugins
---

# DCF Valuation Model

## Overview

Build institutional-grade DCF valuation models that combine rigorous financial analysis with flexible scenario planning. The output is a comprehensive Excel model with transparent assumptions, live formulas, and professional presentation.

## Core Philosophy

**"Valuation is art and science - get the science right, then be thoughtful about the art."**

Start with solid financial projections, calculate WACC properly, choose appropriate terminal values, and then explore scenarios. A good DCF should be defensible to skeptical investors.

## Usage

### Command
```
/dcf [company_name]
```

### Examples
```
/dcf Apple
/dcf Microsoft
/dcf Tesla
```

## Model Structure

### Section 1: Assumptions & Inputs
- **Revenue Growth Rates**: Historical trends + forward estimates
- **Margins**: Gross, EBITDA, Net margin assumptions
- **Capital Efficiency**: CapEx, Working Capital, Tax Rate
- **Cost of Capital**: Risk-free rate, market risk premium, beta
- **Terminal Value**: Growth rate and exit multiple assumptions

### Section 2: Financial Projections
- **Revenue Forecast**: 5-10 year projection period
- **Income Statement**: Through EBIT/EBITDA
- **Balance Sheet Items**: Working capital and capital expenditures
- **Cash Flow Statement**: Operating CF, Investing CF, Financing CF
- **Free Cash Flow**: FCF available for discounting

### Section 3: WACC Calculation
- **Cost of Equity**: CAPM model with company-specific beta
- **Cost of Debt**: Based on current debt levels and credit rating
- **Capital Structure**: Target debt/equity mix
- **WACC**: Weighted average cost of capital

### Section 4: Valuation
- **PV of FCFs**: Discounted free cash flows
- **Terminal Value**: Perpetual growth and/or exit multiple
- **Enterprise Value**: Sum of PV of FCFs + terminal value
- **Equity Value**: Enterprise value less net debt
- **Share Price**: Equity value divided by shares outstanding

### Section 5: Scenario Analysis
- **Base Case**: Most likely assumptions
- **Upside Case**: Optimistic growth and margin assumptions
- **Downside Case**: Conservative assumptions
- **Sensitivity Tables**: Key assumption variations

## Key Features

### Data Source Integration
- **MCP Connectors**: Real-time financial data from S&P Kensho, FactSet
- **Market Data**: Current stock prices, trading multiples
- **Company Filings**: SEC 10-K, 10-Q for historical data
- **Industry Reports**: Growth forecasts and benchmarking

### Advanced Calculations
- **WACC Components**: Risk-free rate, market risk premium, beta
- **Terminal Value Methods**: Perpetual growth, exit multiple
- **Scenario Modeling**: Multiple cases with probability weighting
- **Sensitivity Analysis**: Tables showing valuation ranges

### Professional Output
- **Excel Model**: Live formulas and flexible inputs
- **Summary Dashboard**: Key outputs and assumptions
- **Charts & Graphs**: Visual representation of results
- **Documentation**: Complete audit trail of assumptions

## Industry-Specific Considerations

### Technology/SaaS
- **Growth Rates**: Higher initial growth, tapering over time
- **Margins**: Software margins (80%+) vs. hardware margins
- **Terminal Growth**: Lower terminal growth for mature tech
- **Working Capital**: Negative working capital for SaaS

### Financial Services
- **Cost of Equity**: Higher beta for financial institutions
- **Growth Assumptions**: Tied to loan growth and economic factors
- **Regulatory Capital**: Impact on free cash flow
- **Terminal Value**: Often based on book value or earnings

### Industrials/Manufacturing
- **CapEx Intensity**: Higher capital expenditures
- **Working Capital**: Seasonal variations and inventory
- **Margin Cycles**: Cyclical margin assumptions
- **Terminal Growth**: Tied to GDP growth rates

### Consumer/Retail
- **Same-Store Sales**: Growth driver for mature retailers
- **Margin Pressure**: Competitive dynamics
- **Inventory Management**: Working capital efficiency
- **Brand Value**: Terminal value considerations

## Quality Standards

### Financial Projections
- **Historical Analysis**: 5-10 years of historical data
- **Reasonable Growth**: Defensible growth rate assumptions
- **Margin Consistency**: Logical margin progression
- **Capital Efficiency**: Appropriate CapEx and working capital

### WACC Calculation
- **Market Data**: Current risk-free rates and market premiums
- **Company Beta**: Appropriate beta estimation
- **Capital Structure**: Realistic debt/equity targets
- **Industry Benchmarks**: WACC comparison to peers

### Terminal Value
- **Perpetual Growth**: Reasonable long-term growth rates
- **Exit Multiples**: Industry-appropriate multiples
- **Conservative Assumptions**: Avoid overly optimistic terminal values
- **Sensitivity**: Show impact of terminal value changes

## Common Pitfalls to Avoid

❌ Unrealistic growth assumptions (especially terminal growth)
❌ Incorrect WACC calculation methodology
❌ Inconsistent financial projection assumptions
❌ Overly optimistic terminal values
❌ Missing sensitivity analysis
❌ Inadequate documentation of assumptions
❌ Ignoring industry-specific factors

## Best Practices

1. **Start with historical analysis** - Understand the business before forecasting
2. **Use conservative assumptions** - Better to be conservative than optimistic
3. **Document everything** - Every assumption needs a rationale
4. **Run sensitivity analysis** - Show how valuation changes with key assumptions
5. **Compare to market** - Check if implied multiples make sense
6. **Get second opinions** - Have others review your assumptions

## Output Checklist

Before delivering a DCF model, verify:
- [ ] Historical financial data is accurate and complete
- [ ] Growth assumptions are reasonable and documented
- [ ] WACC calculation follows proper methodology
- [ ] Terminal value assumptions are conservative
- [ ] Scenario analysis covers relevant cases
- [ ] Sensitivity tables show key assumption variations
- [ ] All formulas are working correctly
- [ ] Documentation explains all assumptions
- [ ] Model is flexible for user inputs
- [ ] Summary dashboard highlights key results

## Integration with OpenClaw

This skill integrates seamlessly with OpenClaw's ecosystem:
- **Real-time Data**: MCP connectors for current market data
- **Collaborative Review**: Team members can review assumptions
- **Version Control**: Track changes to valuation models
- **Multi-format Output**: Excel, PDF, or presentation formats
- **Template Library**: Industry-specific model templates
