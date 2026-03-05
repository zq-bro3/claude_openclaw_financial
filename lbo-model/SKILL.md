---
name: fsi-lbo-model
description: |
  Build comprehensive LBO (Leveraged Buyout) models for private equity transactions with entry/exit analysis, returns calculation, and debt structuring.

  **Perfect for:**
  - Private equity deal analysis and due diligence
  - LBO modeling for investment committees
  - Returns analysis and sensitivity testing
  - Debt structuring and financing analysis
  - Portfolio company valuation

  **Key Features:**
  - Multiple debt tranches and financing structures
  - Returns calculation (IRR, MOIC)
  - Exit scenario analysis
  - Debt amortization schedules
  - Professional Excel output with live formulas
homepage: https://github.com/anthropics/financial-services-plugins
---

# LBO Model

## Overview

Build institutional-grade LBO models that analyze leveraged buyout transactions from entry to exit. The model includes comprehensive debt structuring, returns calculation, and scenario analysis to support private equity investment decisions.

## Core Philosophy

**"LBO modeling is about disciplined analysis - understand the business, structure the debt properly, and be realistic about exits."**

Start with solid business fundamentals, appropriate debt levels, and realistic exit assumptions. A good LBO model should withstand scrutiny from experienced private equity professionals.

## Usage

### Command
```
/lbo [company_name]
```

### Examples
```
/lbo target_company
/lbo portfolio_company
/lbo acquisition_target
```

## Model Structure

### Section 1: Transaction Assumptions
- **Purchase Price**: Entry multiple and valuation
- **Financing Structure**: Debt/equity split and debt tranches
- **Fees**: Transaction fees, financing fees, advisory fees
- **Sources & Uses**: Detailed breakdown of capital sources and uses

### Section 2: Debt Structure
- **Senior Debt**: Term loan A, term loan B, revolving credit
- **Mezzanine Debt**: Subordinated debt with warrants
- **High-Yield Bonds**: Senior unsecured debt
- **Equity**: Sponsor equity, management rollover

### Section 3: Financial Projections
- **Revenue Growth**: Business case growth assumptions
- **Margin Improvement**: Operational improvements and synergies
- **Working Capital**: Changes in working capital requirements
- **CapEx**: Capital expenditure requirements

### Section 4: Debt Service Analysis
- **Interest Coverage**: EBITDA/interest expense ratios
- **Leverage Ratios**: Debt/EBITDA progression
- **Covenant Compliance**: Debt covenant testing
- **Refinancing Risk**: Debt maturity analysis

### Section 5: Exit Analysis
- **Exit Timing**: 3-7 year holding period scenarios
- **Exit Multiples**: Conservative, base, optimistic cases
- **Exit Value**: Enterprise value at exit
- **Returns Calculation**: IRR, MOIC for equity holders

### Section 6: Returns Analysis
- **Equity Returns**: IRR and MOIC calculation
- **Sensitivity Analysis**: Impact of key assumptions
- **Scenario Comparison**: Base case vs. alternative scenarios
- **Waterfall Analysis**: Returns distribution by capital class

## Key Features

### Debt Structuring
- **Multiple Tranches**: Senior, mezzanine, high-yield debt
- **Flexible Terms**: Interest rates, amortization schedules
- **Covenant Testing**: Compliance monitoring
- **Refinancing Analysis**: Debt maturity management

### Returns Calculation
- **IRR Calculation**: Internal rate of return for equity
- **MOIC Analysis**: Multiple of invested capital
- **Sensitivity Tables**: Impact of key assumptions
- **Scenario Modeling**: Multiple exit scenarios

### Professional Output
- **Excel Model**: Comprehensive financial model
- **Summary Dashboard**: Key metrics and returns
- **Debt Schedules**: Detailed amortization tables
- **Exit Analysis**: Multiple exit scenarios

## Industry-Specific Considerations

### Technology/SaaS
- **Growth Assumptions**: Higher growth rates
- **Margin Expansion**: Software margin improvements
- **Debt Capacity**: Lower leverage due to asset-light nature
- **Exit Multiples**: Premium multiples for growth

### Financial Services
- **Regulatory Capital**: Impact on leverage
- **Business Mix**: Different debt capacity by business line
- **Cyclical Factors**: Economic sensitivity
- **Exit Considerations**: Strategic buyer interest

### Industrials/Manufacturing
- **Asset Base**: Higher debt capacity
- **Cyclical Nature**: Conservative leverage assumptions
- **Working Capital**: Seasonal variations
- **Synergy Potential**: Operational improvements

### Consumer/Retail
- **Brand Value**: Intangible asset considerations
- **Same-Store Sales**: Growth driver assumptions
- **E-commerce Impact**: Digital transformation
- **Competitive Dynamics**: Market position assessment

## Quality Standards

### Transaction Assumptions
- **Purchase Price**: Reasonable entry multiples
- **Financing Terms**: Market-appropriate debt terms
- **Fee Structure**: Realistic transaction costs
- **Sources & Uses**: Balanced capital structure

### Financial Projections
- **Business Case**: Defensible growth assumptions
- **Margin Improvement**: Realistic operational improvements
- **Working Capital**: Appropriate assumptions
- **CapEx Requirements**: Adequate capital expenditure planning

### Debt Analysis
- **Leverage Ratios**: Appropriate debt levels
- **Coverage Ratios**: Adequate interest coverage
- **Covenant Compliance**: Maintaining debt covenants
- **Refinancing Risk**: Managing debt maturities

### Exit Analysis
- **Exit Multiples**: Conservative exit assumptions
- **Exit Timing**: Reasonable holding periods
- **Market Conditions**: Consider market cycles
- **Returns Calculation**: Accurate IRR and MOIC

## Common Pitfalls to Avoid

❌ Overly optimistic growth assumptions
❌ Excessive leverage levels
❌ Inadequate debt service coverage
❌ Unrealistic exit multiples
❌ Missing sensitivity analysis
❌ Ignoring industry cycles
❌ Inadequate documentation of assumptions

## Best Practices

1. **Conservative Assumptions** - Better to be conservative than optimistic
2. **Adequate Debt Coverage** - Ensure sufficient interest coverage
3. **Realistic Exit Timing** - Consider market cycles and business maturity
4. **Comprehensive Sensitivity** - Test multiple scenarios
5. **Industry Knowledge** - Understand sector-specific factors
6. **Documentation** - Explain all assumptions clearly

## Output Checklist

Before delivering an LBO model, verify:
- [ ] Purchase price assumptions are reasonable
- [ ] Debt structure is appropriate for the business
- [ ] Financial projections are well-documented
- [ ] Debt service coverage is adequate
- [ ] Exit assumptions are conservative
- [ ] Returns calculations are accurate
- [ ] Sensitivity analysis covers key variables
- [ ] All formulas are working correctly
- [ ] Model is flexible for user inputs
- [ ] Documentation explains all assumptions

## Integration with OpenClaw

This skill integrates seamlessly with OpenClaw's ecosystem:
- **Real-time Data**: MCP connectors for current market data
- **Collaborative Review**: Investment committee review and approval
- **Version Control**: Track changes to deal models
- **Template Library**: Industry-specific LBO templates
- **Multi-format Output**: Excel for analysis, PDF for presentations
