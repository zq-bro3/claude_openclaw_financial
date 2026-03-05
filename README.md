# Financial Analysis Skills for OpenClaw

Professional financial modeling and analysis tools for investment banking, equity research, private equity, and wealth management workflows.

## Overview

This skill package provides comprehensive financial analysis capabilities that have been converted from the Anthropic Financial Services Plugins to work with OpenClaw. The skills include:

- **Comparable Company Analysis**: Build institutional-grade comps with operating metrics, valuation multiples, and statistical benchmarking
- **DCF Valuation**: Discounted cash flow models with WACC calculation and scenario analysis
- **LBO Modeling**: Leveraged buyout models for private equity transactions
- **3-Statement Modeling**: Integrated financial statement models with proper linkages
- **Competitive Analysis**: Systematic competitive landscape and market positioning analysis
- **Model Checking**: Comprehensive financial model audit and debugging
- **Deck Review**: Investment banking presentation quality control
- **PPT Template Creator**: Convert PowerPoint templates to reusable skills

## Installation

### Automatic Installation (Recommended)

1. Navigate to the financial-analysis skill directory
2. Run the installation script:

```bash
cd skills/financial-analysis
chmod +x install.sh
./install.sh
```

### Manual Installation

1. Copy the skill files to your OpenClaw workspace:

```bash
mkdir -p ~/.openclaw/workspace/skills/financial-analysis
mkdir -p ~/.openclaw/workspace/skills/financial-analysis/comps-analysis
mkdir -p ~/.openclaw/workspace/skills/financial-analysis/dcf-model
mkdir -p ~/.openclaw/workspace/skills/financial-analysis/lbo-model
mkdir -p ~/.openclaw/workspace/skills/financial-analysis/3-statements
mkdir -p ~/.openclaw/workspace/skills/financial-analysis/competitive-analysis
mkdir -p ~/.openclaw/workspace/skills/financial-analysis/check-deck
mkdir -p ~/.openclaw/workspace/skills/financial-analysis/check-model
mkdir -p ~/.openclaw/workspace/skills/financial-analysis/ppt-template-creator

cp SKILL.md ~/.openclaw/workspace/skills/financial-analysis/
cp comps-analysis/SKILL.md ~/.openclaw/workspace/skills/financial-analysis/comps-analysis/
cp dcf-model/SKILL.md ~/.openclaw/workspace/skills/financial-analysis/dcf-model/
cp lbo-model/SKILL.md ~/.openclaw/workspace/skills/financial-analysis/lbo-model/
cp 3-statements/SKILL.md ~/.openclaw/workspace/skills/financial-analysis/3-statements/
cp competitive-analysis/SKILL.md ~/.openclaw/workspace/skills/financial-analysis/competitive-analysis/
cp check-deck/SKILL.md ~/.openclaw/workspace/skills/financial-analysis/check-deck/
cp check-model/SKILL.md ~/.openclaw/workspace/skills/financial-analysis/check-model/
cp ppt-template-creator/SKILL.md ~/.openclaw/workspace/skills/financial-analysis/ppt-template-creator/
cp .mcp.json ~/.openclaw/workspace/skills/financial-analysis/
```

2. Restart OpenClaw to load the new skills:

```bash
openclaw gateway restart
```

## Usage

### Comparable Company Analysis

Build institutional-grade comparable company analyses:

```bash
/comps Apple Microsoft Google
/comps JPM BAC WFC
/comps Exxon Chevron ConocoPhillips
```

**Features:**
- Operating metrics and financial ratios
- Valuation multiples and benchmarking
- Statistical analysis (quartiles, outliers)
- Professional Excel output
- MCP data source integration

### DCF Valuation

Create comprehensive DCF valuation models:

```bash
/dcf Apple
/dcf Microsoft
/dcf Tesla
```

**Features:**
- WACC calculation with CAPM
- Multiple terminal value methods
- Scenario analysis (base, upside, downside)
- Sensitivity tables
- Professional Excel output

### LBO Modeling

Build leveraged buyout models:

```bash
/lbo TargetCompany
/lbo PortfolioCompany
/lbo AcquisitionTarget
```

**Features:**
- Multiple debt tranches
- Returns calculation (IRR, MOIC)
- Exit scenario analysis
- Debt amortization schedules
- Professional Excel output

### 3-Statement Modeling

Build integrated financial statement models:

```bash
/3-statements Microsoft
/3-statements TargetCompany
/3-statements PortfolioCompany
```

**Features:**
- Integrated Income Statement, Balance Sheet, Cash Flow
- Proper statement linkages and validation
- Working capital and debt schedules
- Balance sheet integrity checks

### Competitive Analysis

Systematic competitive landscape analysis:

```bash
/competitive-analysis cloud-computing
/competitive-analysis EV-manufacturing
/competitive-analysis fintech-payments
```

**Features:**
- Market positioning assessment
- Competitor profiling and benchmarking
- Strategic implications analysis
- Investment recommendation frameworks

### Model Checking

Comprehensive financial model audit:

```bash
/check-model financial_model.xlsx
/check-model dcf_model.xlsx
/check-model lbo_model.xlsx
```

**Features:**
- Balance sheet validation
- Formula integrity checking
- Error detection and debugging
- Professional audit reporting

### Deck Review

Investment banking presentation QC:

```bash
/check-deck pitch_deck.pptx
/check-deck client_presentation.pptx
/check-deck investment_memorandum.pptx
```

**Features:**
- Number consistency validation
- Data-narrative alignment checking
- Professional language standards
- Formatting quality control

### PPT Template Creator

Convert PowerPoint templates to reusable skills:

```bash
/ppt-template-creator create --template company_template.pptx --name company-presentations
/ppt-template-creator validate --skill company-presentations
```

**Features:**
- Template analysis and extraction
- Skill structure creation
- Placeholder mapping and documentation
- Reusable template generation

## Data Sources

### MCP Connectors (Priority)

When available, the skills prioritize MCP data sources:

1. **S&P Global (Kensho)** - Comprehensive financial data
2. **FactSet** - Institutional-grade market data
3. **Daloopa** - Automated financial data extraction
4. **Morningstar** - Equity research and fundamentals
5. **PitchBook** - Private market data
6. **LSEG** - Fixed income, FX, and macro data
7. **Moody's** - Credit ratings and research
8. **MT Newswires** - Real-time financial news
9. **Aiera** - AI-powered earnings analysis
10. **Chronograph** - Private equity data
11. **Egnyte** - Document management

### Alternative Sources

When MCP connectors are not available:

- **SEC EDGAR filings** - Primary source documents
- **Bloomberg Terminal** - Institutional terminal access
- **Company investor relations** - Press releases and filings

**Important:** Web search is never used as a primary data source due to accuracy and reliability concerns.

## Output Formats

### Excel/Spreadsheet
- Professional-grade financial models
- Live formulas and flexible inputs
- Institutional formatting standards
- Complete documentation and audit trails

### PDF Reports
- Publication-ready analysis reports
- Investment committee presentations
- Client-ready documentation

### PowerPoint Decks
- Summary presentations
- Investment committee materials
- Pitch books and marketing materials

## Quality Standards

All financial analysis follows institutional standards:

- **Data Verification**: Cross-check multiple sources
- **Audit Trails**: Complete documentation of sources and assumptions
- **Formula Transparency**: Clear, traceable calculations
- **Professional Formatting**: Industry-standard presentation
- **Statistical Rigor**: Proper quartile analysis and benchmarking

## Industry-Specific Features

### Technology/SaaS
- Revenue growth and ARR metrics
- SaaS margins (Rule of 40, net dollar retention)
- Customer acquisition cost analysis
- Enterprise value multiples for growth companies

### Financial Services
- ROE, ROA, and efficiency ratios
- Net interest margin analysis
- Regulatory capital considerations
- Credit risk assessment

### Industrials/Manufacturing
- Asset turnover and efficiency metrics
- CapEx intensity and backlog analysis
- Working capital management
- Cyclical adjustments

### Consumer/Retail
- Same-store sales growth
- Brand value assessment
- Inventory turnover analysis
- E-commerce impact

## Configuration

### MCP Connector Setup

To configure MCP data sources, edit your OpenClaw configuration:

```json
{
  "mcp": {
    "servers": {
      "spglobal": {
        "url": "https://kfinance.kensho.com/integrations/mcp",
        "apiKey": "your-api-key"
      },
      "factset": {
        "url": "https://mcp.factset.com/mcp",
        "credentials": "your-factset-credentials"
      }
    }
  }
}
```

### Skill Preferences

Customize skill behavior through OpenClaw settings:

```json
{
  "skills": {
    "financial-analysis": {
      "defaultCurrency": "USD",
      "reportFormat": "excel",
      "statisticalAnalysis": true,
      "industryTemplates": true
    }
  }
}
```

## Troubleshooting

### Common Issues

1. **Skills not loading**: Restart OpenClaw gateway
2. **MCP connection issues**: Verify API credentials and network connectivity
3. **Excel output errors**: Check system has Excel or compatible spreadsheet software
4. **Data source errors**: Ensure MCP connectors are properly configured

### Verification Commands

Check if skills are properly installed:

```bash
# List available skills
openclaw skills list

# Test skill functionality
openclaw agent --message "/comps Apple Microsoft"
```

### Getting Help

For issues with:
- **MCP Connectors**: Contact respective data provider support
- **OpenClaw Integration**: Check OpenClaw documentation
- **Model Calculations**: Review assumptions and data sources

## Security & Compliance

- **Data Privacy**: No sensitive client data stored in prompts
- **Source Verification**: All data sourced from verified providers
- **Methodology Documentation**: Clear explanation of analytical approaches
- **Review Process**: All analysis requires professional review

## License

This skill package is converted from Anthropic's Financial Services Plugins and maintains the same Apache License 2.0.

## Disclaimer

These skills assist with financial workflows but do not provide financial or investing advice. Always verify conclusions with qualified financial professionals. AI-generated analysis should be reviewed by financial professionals before being relied upon for financial or investment decisions.
