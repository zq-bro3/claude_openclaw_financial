---
name: fsi-competitive-analysis
description: |
  Framework for competitive landscape analysis across any industry. Use when creating competitor analysis, market positioning assessments, investment memos, strategic reviews, or any analysis requiring systematic evaluation of competitive dynamics.

  **Perfect for:**
  - Competitive landscape analysis
  - Market positioning assessments
  - Investment committee memos
  - Strategic reviews and planning
  - Market structure analysis
  - Investment recommendations

  **Key Features:**
  - Systematic competitor evaluation
  - Market positioning framework
  - Strategic assessment tools
  - Investment memo preparation
  - Industry analysis templates
homepage: https://github.com/anthropics/financial-services-plugins
---

# Competitive Landscape Mapping

Systematic framework for competitive landscape analysis across any industry or market segment.

## Overview

Build comprehensive competitive analyses that evaluate market dynamics, competitive positioning, and strategic implications. This skill provides structured frameworks for analyzing competitive landscapes and supporting investment decisions.

## Usage

### Command
```
/competitive-analysis [industry/company]
```

### Examples
```
/competitive-analysis cloud-computing
/competitive-analysis EV-manufacturing
/competitive-analysis fintech-payments
```

## Critical Standards

### Source File Primacy

When source files (Excel/CSV) are provided:
- **Extract values DIRECTLY** — Do not perform your own calculations; use the numbers as they appear
- **Maintain consistency** — When the same metric appears in multiple places, ensure identical values throughout
- **Verify calculations** — If the prompt asks you to calculate something, verify your result matches related data in the source
- **Round only as shown** — Use the same decimal precision as the source file

### Prompt Fidelity

When the prompt specifies exact requirements, follow them verbatim:

**Slide Titles & Section Names:**
- If prompt says `"Overview and Competitive Scope"` slide — use EXACTLY that title
- If prompt says `within the "Segment Mix"` section — use EXACTLY "Segment Mix" as the section header
- Never substitute with creative alternatives

**Chart vs Table:**
- If prompt says `embedded chart` — create an actual PowerPoint chart object, NOT a table
- If prompt says `data table` — create a table, NOT a chart

## Analysis Framework

### 1. Market Definition
- **Total Addressable Market (TAM)**: Overall market size and growth
- **Serviceable Addressable Market (SAM)**: Segment the company can reach
- **Serviceable Obtainable Market (SOM)**: Realistic capture potential
- **Market Growth Rates**: Historical and projected growth
- **Market Dynamics**: Key trends and drivers

### 2. Competitive Landscape
- **Market Share Analysis**: Current market positioning
- **Competitor Identification**: Direct and indirect competitors
- **Concentration Metrics**: Market concentration (HHI, C4)
- **Entry Barriers**: Obstacles to new entrants
- **Switching Costs**: Customer switching difficulty

### 3. Competitor Profiling
- **Business Model Overview**: How competitors make money
- **Product/Service Offering**: Core value propositions
- **Financial Performance**: Revenue, profitability, growth
- **Strategic Initiatives**: Recent investments and focus areas
- **Strengths & Weaknesses**: SWOT analysis for each competitor

### 4. Positioning Analysis
- **Price Positioning**: Premium vs. value positioning
- **Quality Positioning**: Product/service quality levels
- **Feature Differentiation**: Unique selling propositions
- **Customer Segments**: Target customer profiles
- **Geographic Focus**: Regional vs. global presence

### 5. Strategic Implications
- **Competitive Advantages**: Sustainable differentiation
- **Market Opportunities**: Untapped segments or needs
- **Threat Assessment**: Competitive threats and risks
- **Strategic Options**: Potential strategic moves
- **Investment Recommendations**: Actionable insights

## Data Sources

### Primary Sources
- **Company Filings**: 10-K, 10-Q, investor presentations
- **Industry Reports**: Specialized research and analysis
- **Market Research**: Surveys and industry studies
- **Expert Interviews**: Industry professionals and analysts

### Secondary Sources
- **News Articles**: Recent developments and announcements
- **Company Websites**: Product information and positioning
- **Analyst Reports**: Investment research and coverage
- **Trade Publications**: Industry-specific publications

## Output Formats

### PowerPoint Presentations
- **Executive Summary**: Key findings and recommendations
- **Market Overview**: Size, growth, and dynamics
- **Competitive Landscape**: Market share and positioning
- **Competitor Deep Dives**: Detailed competitor analysis
- **Strategic Implications**: What it means for the business

### Investment Memos
- **Investment Thesis**: Core investment rationale
- **Market Analysis**: Market size and growth potential
- **Competitive Assessment**: Competitive positioning analysis
- **Risk Factors**: Key risks and mitigants
- **Financial Projections**: Revenue and profitability forecasts

### Market Reports
- **Market Structure**: Competitive dynamics and concentration
- **Trend Analysis**: Key market trends and drivers
- **Competitor Benchmarking**: Performance comparison
- **Future Outlook**: Market evolution predictions

## Industry-Specific Considerations

### Technology/SaaS
- **Network Effects**: User base and ecosystem value
- **Switching Costs**: Integration and data migration costs
- **Innovation Cycles**: Product development and R&D
- **Platform Economics**: Multi-sided market dynamics

### Financial Services
- **Regulatory Environment**: Compliance and licensing requirements
- **Trust and Reputation**: Brand value and customer trust
- **Capital Requirements**: Regulatory capital needs
- **Technology Disruption**: Fintech and digital transformation

### Healthcare
- **Regulatory Approval**: FDA and regulatory hurdles
- **Intellectual Property**: Patents and proprietary technology
- **Reimbursement Models**: Insurance and payment systems
- **Clinical Evidence**: Trial data and efficacy

### Consumer/Retail
- **Brand Equity**: Brand value and recognition
- **Distribution Channels**: Retail and e-commerce presence
- **Customer Loyalty**: Repeat purchase behavior
- **Supply Chain**: Logistics and operational efficiency

## Quality Standards

### Analytical Rigor
- **Data Accuracy**: Verified from multiple sources
- **Logical Consistency**: Coherent analysis and conclusions
- **Completeness**: Comprehensive coverage of key factors
- **Objectivity**: Unbiased assessment of competitors

### Professional Presentation
- **Clear Structure**: Logical flow and organization
- **Visual Clarity**: Effective charts and graphics
- **Executive Summary**: Concise key findings
- **Actionable Insights**: Practical recommendations

### Documentation
- **Source Citations**: Clear data source attribution
- **Methodology**: Transparent analytical approach
- **Assumptions**: Explicit statement of assumptions
- **Limitations**: Acknowledgment of analysis constraints

## Common Pitfalls to Avoid

❌ Over-reliance on single data sources
❌ Confirmation bias in competitor assessment
❌ Ignoring indirect competitors
❌ Static analysis without forward-looking view
❌ Insufficient market definition
❌ Neglecting customer perspective
❌ Underestimating switching costs

## Best Practices

1. **Multiple Data Sources**: Cross-verify information from multiple sources
2. **Customer Perspective**: Analyze from customer point of view
3. **Dynamic Analysis**: Consider market evolution and future trends
4. **Quantitative + Qualitative**: Combine metrics with strategic insights
5. **Regular Updates**: Keep analysis current with market developments
6. **Peer Review**: Have others review and challenge assumptions

## Integration with OpenClaw

This skill integrates seamlessly with OpenClaw's ecosystem:
- **Real-time Data**: MCP connectors for current market data
- **Collaborative Analysis**: Team-based competitive intelligence
- **Template Library**: Industry-specific analysis frameworks
- **Automated Updates**: Scheduled market and competitor monitoring
- **Presentation Tools**: Direct integration with PowerPoint generation
