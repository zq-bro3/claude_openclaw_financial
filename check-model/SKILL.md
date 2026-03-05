---
name: fsi-check-model
description: |
  Debug and audit financial models for errors — circular references, broken formulas, hardcoded overrides, balance sheet imbalances, cash flow mismatches, and logic gaps. Use when a model isn't tying, producing unexpected results, or before sending to a client or IC.

  **Perfect for:**
  - Financial model debugging and auditing
  - Error detection and correction guidance
  - Model quality assurance
  - Pre-delivery model validation
  - Balance sheet troubleshooting
  - Formula integrity checking

  **Key Features:**
  - Comprehensive model error detection
  - Balance sheet validation
  - Formula integrity analysis
  - Logic gap identification
  - Professional audit reporting
homepage: https://github.com/anthropics/financial-services-plugins
---

# Model Checker

Debug and audit financial models for errors — circular references, broken formulas, hardcoded overrides, balance sheet imbalances, cash flow mismatches, and logic gaps.

## Overview

Comprehensive financial model audit and debugging system that identifies, categorizes, and provides solutions for common model errors and issues.

## Usage

### Command
```
/check-model [model_file]
```

### Examples
```
/check-model financial_model.xlsx
/check-model dcf_model.xlsx
/check-model lbo_model.xlsx
```

## Workflow

### Step 1: Model Ingestion

**File Analysis:**
- Accept Excel models (.xlsx or .xlsm)
- Identify model type: DCF, LBO, merger, 3-statement, comps, returns, or custom
- Map structure: tabs, linkages, input/output locations
- Document model organization and flow

**Initial Assessment:**
- Model complexity and size
- Number of tabs and interconnections
- Presence of macros or external links
- Overall model purpose and scope

### Step 2: Structural Checks

**Tab & Layout Review:**
- Inputs clearly separated from calculations?
- Consistent color-coding convention? (blue = input, black = formula, green = link)
- Hidden tabs or rows with overrides?
- Logical model flow? (assumptions → IS → BS → CF → valuation)

**Formula Consistency:**
- Hardcoded numbers inside formulas (partial hardcodes)
- Inconsistent formulas across row/column ranges
- #REF!, #VALUE!, #N/A, #DIV/0! errors
- Cells formatted as formulas but contain hardcoded values

### Step 3: Integrity Checks

**Balance Sheet Validation:**
- Total Assets = Total Liabilities + Equity (every period)
- Retained earnings rollforward: Prior RE + Net Income - Dividends = Current RE
- Goodwill and intangibles flow from acquisition assumptions
- Proper treatment of minority interest and non-controlling interests

**Cash Flow Reconciliation:**
- Ending cash from CF = Cash on BS (every period)
- Operating CF + Investing CF + Financing CF = Change in Cash
- D&A on CF matches D&A on IS
- Capex on CF matches PP&E rollforward on BS
- Working capital changes on CF match BS movements

**Income Statement Validation:**
- Revenue builds tie to segment/product detail
- COGS and gross margin consistency with assumptions
- Tax expense = Pre-tax income × tax rate (check deferred tax)
- Share count ties to dilution schedule (options, converts, buybacks)

**Circular Reference Analysis:**
- Check for circular references (interest → debt → cash → interest)
- If intentional (LBO/3-statement), verify iteration toggle works
- If unintentional, trace loop and suggest break points

### Step 4: Logic Checks

**Reasonableness Testing:**
- Growth rates make sense? (100%+ revenue growth without explanation = red flag)
- Margins within industry norms? Flag outliers
- Terminal value dominates DCF? (>75% of EV from TV = yellow flag)
- Projections hockey-sticking unrealistically?
- EBITDA growth compounds to absurd numbers by Year 10?

**Sensitivity & Edge Cases:**
- Model behavior at 0% growth, negative growth
- Model breaks with negative EBITDA?
- Leverage ratios go negative or exceed realistic bounds?
- Divide-by-zero risks identified?

**Cross-Tab Consistency:**
- Linked cells match their source? (copy-paste errors)
- Date headers consistent across all tabs?
- Units match (thousands vs. millions vs. actuals)?

### Step 5: Model-Specific Bug Detection

**DCF Model Issues:**
- Discount rate applied to wrong period (mid-year vs. end-of-year)
- Terminal value not discounted back correctly
- WACC uses book values instead of market values
- FCF includes interest expense (should be unlevered)
- Tax shield double-counted

**LBO Model Issues:**
- Debt paydown doesn't match cash sweep mechanics
- PIK interest not accruing to debt balance
- Management rollover not reflected in returns
- Exit multiple applied to wrong EBITDA (LTM vs. NTM)
- Fees and expenses not deducted from Day 1 equity

**Merger Model Issues:**
- Accretion/dilution uses wrong share count (pre- vs. post-deal)
- Synergies not phased in correctly
- Purchase price allocation doesn't balance
- Foregone interest on cash not included
- Transaction fees not in sources & uses

**3-Statement Model Issues:**
- Working capital changes have wrong sign convention
- Depreciation doesn't match PP&E schedule
- Debt maturity schedule doesn't match principal payments
- Dividends paid exceed net income without explanation

### Step 6: Issue Reporting

**Audit Report Structure:**
```
Financial Model Audit Report
==========================

Model: [Model Name]
Date: [Date]
Model Type: [DCF/LBO/Merger/3-Statement]
Overall Assessment: [Clean/Minor Issues/Major Issues]

Issues Summary:
- Critical Issues: [X]
- Warning Issues: [Y]
- Info Issues: [Z]

Issue Details:
[Detailed issue log with fixes]
```

**Issue Classification:**
- **Critical**: Model produces wrong output (BS doesn't balance, formulas broken)
- **Warning**: Model works but has risks (hardcodes, inconsistent formulas, edge case failures)
- **Info**: Style and best practice suggestions (color coding, layout, naming)

## Common Error Patterns

### Formula Errors
- Partial hardcodes in formulas
- Inconsistent drag-down formulas
- #REF! errors from deleted references
- Circular references
- Array formula issues

### Balance Sheet Issues
- Assets ≠ Liabilities + Equity
- Retained earnings doesn't roll forward
- Goodwill not properly amortized
- Minority interest missing

### Cash Flow Problems
- Cash doesn't reconcile to balance sheet
- Working capital sign errors
- D&A mismatch between statements
- Capex not properly reflected

### Logic Gaps
- Unreasonable growth assumptions
- Terminal value too dominant
- Negative margins without explanation
- Inconsistent time periods

## Quality Standards

### Technical Accuracy
- All mathematical calculations correct
- Balance sheet balances for all periods
- Cash flow reconciles properly
- All statements properly linked

### Best Practices
- Consistent formatting and color coding
- Clear documentation and comments
- Proper input organization
- Flexible and maintainable structure

### Professional Standards
- Industry-standard model layout
- Appropriate level of detail
- Clear assumptions and drivers
- Comprehensive validation checks

## Integration with OpenClaw

This skill integrates seamlessly with OpenClaw's ecosystem:
- **Direct File Analysis**: Excel model processing without conversion
- **Automated Reporting**: Generate detailed audit reports
- **Collaborative Review**: Team-based model validation
- **Template Integration**: Consistency with standard templates
- **Version Control**: Track model changes and revisions
