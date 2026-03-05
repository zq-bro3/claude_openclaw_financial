---
name: fsi-3-statements
description: |
  Complete, populate and fill out 3-statement financial model templates (Income Statement, Balance Sheet, Cash Flow Statement). Use when asked to fill out model templates, complete existing model frameworks, populate financial models with data, complete a partially filled IS/BS/CF framework, or link integrated financial statements within an existing template structure.

  **Perfect for:**
  - Building integrated 3-statement financial models
  - Populating model templates with real data
  - Linking financial statements properly
  - Completing partially built models
  - Financial modeling and forecasting

  **Key Features:**
  - Integrated Income Statement, Balance Sheet, Cash Flow
  - Proper linkages between statements
  - Working capital schedules
  - Debt and depreciation schedules
  - Balance sheet validation
homepage: https://github.com/anthropics/financial-services-plugins
---

# 3-Statement Financial Model Template Completion

Complete and populate integrated financial model templates with proper linkages between Income Statement, Balance Sheet, and Cash Flow Statement.

## Overview

Build comprehensive 3-statement financial models that ensure all three financial statements are properly linked and balanced. This skill focuses on the technical aspects of model construction and population.

## Usage

### Command
```
/3-statements [company_name]
```

### Examples
```
/3-statements Microsoft
/3-statements TargetCompany
/3-statements PortfolioCompany
```

## Model Structure

### Identifying Template Tab Organization

Templates vary in their tab naming conventions and organization. Before populating, review all tabs to understand the template's structure.

| Common Tab Names | Contents to Look For |
|------------------|----------------------|
| IS, P&L, Income Statement | Income Statement |
| BS, Balance Sheet | Balance Sheet |
| CF, CFS, Cash Flow | Cash Flow Statement |
| WC, Working Capital | Working Capital Schedule |
| DA, D&A, Depreciation, PP&E | Depreciation & Amortization Schedule |
| Debt, Debt Schedule | Debt Schedule |
| NOL, Tax, DTA | Net Operating Loss Schedule |
| Assumptions, Inputs, Drivers | Driver assumptions and inputs |
| Checks, Audit, Validation | Error-checking dashboard |

### Template Review Checklist
- Identify which tabs exist in the template (not all templates include every schedule)
- Note any template-specific tabs not listed above
- Map the flow of calculations between tabs
- Identify input cells vs. calculation cells

## Core Modeling Principles

### Statement Linkages

**Income Statement → Balance Sheet:**
- Net Income flows to Retained Earnings
- Depreciation flows to PP&E on Balance Sheet
- Changes in working capital affect both statements

**Balance Sheet → Cash Flow:**
- Changes in balance sheet items drive cash flow
- Beginning and ending balances must reconcile
- Debt issuance/repayment affects financing cash flow

**Cash Flow → Balance Sheet:**
- Net change in cash updates cash balance
- Investing activities affect PP&E and other assets
- Financing activities affect debt and equity

### Balance Sheet Validation

**The Golden Rule:**
```
Total Assets = Total Liabilities + Shareholders' Equity
```

This must hold true for every single period. If it doesn't balance, nothing else matters until it does.

### Working Capital Logic

**Sign Conventions:**
- **Increase in AR**: Use of cash (negative in CF)
- **Decrease in AR**: Source of cash (positive in CF)
- **Increase in AP**: Source of cash (positive in CF)
- **Decrease in AP**: Use of cash (negative in CF)

## Data Source Integration

### MCP Connectors (Priority)
When available, use MCP data sources for historical financial data:
- **S&P Global (Kensho)** - Comprehensive financial statements
- **FactSet** - Institutional-grade financial data
- **Daloopa** - Automated financial data extraction
- **Morningstar** - Equity research and fundamentals

### Alternative Sources
- **SEC 10-K/10-Q filings** - Primary source documents
- **Company investor relations** - Quarterly reports
- **EDGAR database** - Historical filing data

## Model Building Workflow

### Step 1: Structure Setup
1. **Review template structure**
2. **Identify all tabs and their purposes**
3. **Map calculation flow between tabs**
4. **Locate input cells and assumption drivers**

### Step 2: Historical Data Population
1. **Gather historical financial data**
2. **Input historical income statement data**
3. **Input historical balance sheet data**
4. **Input historical cash flow data**
5. **Verify balance sheet balances historically**

### Step 3: Schedule Development
1. **Build working capital schedule**
2. **Create depreciation and amortization schedule**
3. **Develop debt schedule and interest calculations**
4. **Build tax schedule and NOL tracking**

### Step 4: Forecast Integration
1. **Link income statement forecasts**
2. **Connect to balance sheet projections**
3. **Generate cash flow statement**
4. **Validate all linkages and balances**

### Step 5: Validation and Testing
1. **Balance sheet balance check**
2. **Cash flow reconciliation**
3. **Formula consistency review**
4. **Reasonableness testing**

## Common Pitfalls to Avoid

❌ Balance sheet doesn't balance (stop everything until fixed)
❌ Incorrect sign conventions in working capital
❌ Missing links between statements
❌ Hardcoded values that should be formulas
❌ Inconsistent time periods across statements
❌ Forgotten tax effects on depreciation
❌ Incorrect debt paydown calculations

## Best Practices

1. **Color Coding**: Use consistent formatting (blue = inputs, black = formulas)
2. **Formula Consistency**: Same formula across rows when appropriate
3. **Documentation**: Add comments to complex calculations
4. **Validation Checks**: Build in error-checking formulas
5. **Sensitivity Testing**: Test model with different assumptions
6. **Audit Trail**: Document all data sources and assumptions

## Quality Standards

### Technical Accuracy
- Balance sheet balances for all periods
- Cash flow reconciles properly
- All statements properly linked
- Formulas are consistent and traceable

### Professional Presentation
- Clear tab organization and naming
- Consistent formatting conventions
- Comprehensive documentation
- Professional layout and design

### Data Integrity
- All data sources documented
- Assumptions clearly stated
- Calculations are transparent
- Model is flexible for updates

## Output Specifications

### Excel Model Features
- Integrated 3-statement model
- Supporting schedules (WC, D&A, Debt)
- Input summary dashboard
- Validation and error checking
- Professional formatting

### Documentation
- Model methodology guide
- Data source documentation
- Assumption summary
- User instructions

## Integration with OpenClaw

This skill integrates seamlessly with OpenClaw's ecosystem:
- **Real-time Data**: MCP connectors for current financial data
- **Collaborative Review**: Team members can review and validate models
- **Version Control**: Track changes to model assumptions
- **Template Library**: Industry-specific model templates
- **Quality Assurance**: Built-in validation and error checking
