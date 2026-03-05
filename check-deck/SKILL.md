---
name: fsi-check-deck
description: |
  Investment banking presentation quality checker. Reviews pitch decks and client-ready presentations for: (1) Number consistency across slides, (2) Data-narrative alignment, (3) Language polish for IB standards, (4) Formatting QC. Use when asked to review, check, or QC any IB presentation, pitch deck, or client materials before delivery.

  **Perfect for:**
  - Investment banking pitch deck review
  - Client presentation quality control
  - Number consistency verification
  - Data-narrative alignment checking
  - IB standard language polish
  - Formatting and presentation QC

  **Key Features:**
  - Comprehensive slide-by-slide review
  - Number consistency validation
  - Data-narrative alignment checking
  - Professional language standards
  - Formatting quality control
homepage: https://github.com/anthropics/financial-services-plugins
---

# IB Deck Checker

Perform comprehensive QC on investment banking presentations across four dimensions.

## Overview

Professional quality control for investment banking presentations, ensuring number consistency, data-narrative alignment, professional language, and proper formatting before client delivery.

## Usage

### Command
```
/check-deck [presentation_file]
```

### Examples
```
/check-deck pitch_deck.pptx
/check-deck client_presentation.pptx
/check-deck investment_memorandum.pptx
```

## Prerequisites

### Content Extraction
Before checking, extract presentation content:

```bash
# Convert presentation to markdown for analysis
python -m markitdown presentation.pptx > content.md

# For visual inspection, convert to images
openclaw skill pptx --convert presentation.pptx --to images
```

## Check Workflow

### 1. Number Consistency

**Extract and Validate Numbers:**
- Pull all numerical values with slide references
- Check for consistency across related slides
- Verify calculations and cross-references
- Flag discrepancies and rounding issues

**Common Consistency Issues:**
- Enterprise value calculations (different sums across slides)
- Revenue figures (varying numbers in different sections)
- Multiples and ratios (inconsistent denominator usage)
- Growth rates (different calculation methods)
- Time periods (mixing LTM, FY, quarterly data)

### 2. Data-Narrative Alignment

**Verify Story Coherence:**
- Check that narrative matches underlying data
- Ensure claims are supported by numbers
- Validate trend descriptions vs. actual data
- Confirm conclusions follow from analysis

**Alignment Checks:**
- Growth stories vs. historical growth rates
- Market leadership claims vs. market share data
- Competitive advantages vs. metric comparison
- Financial projections vs. historical trends
- Strategic rationale vs. financial analysis

### 3. Language Polish

**IB Standard Language:**
- Professional tone and terminology
- Consistent company naming and formatting
- Proper financial terminology usage
- Appropriate level of technical detail
- Clear, concise executive communication

**Language Standards:**
- Use "company" consistently, not "firm" or "business"
- Proper formatting: "$X.X billion" not "$X,XXX million"
- Consistent tense usage (historical vs. projections)
- Appropriate use of financial abbreviations (EBITDA, ROI, etc.)
- Professional, confident tone without overstatement

### 4. Formatting QC

**Visual Consistency:**
- Consistent fonts and sizing across slides
- Uniform color scheme and branding
- Proper chart formatting and labeling
- Consistent table formatting and alignment
- Professional slide layout and spacing

**Formatting Standards:**
- Title case for slide titles
- Consistent number formatting (decimals, thousands separators)
- Proper chart axis labels and legends
- Uniform table headers and alignment
- Adequate white space and readability

## Quality Check Framework

### Slide-by-Slide Review

**Title Slide:**
- Company name spelling and formatting
- Date and confidentiality notices
- Proper branding and logos

**Executive Summary:**
- Key numbers match detailed slides
- Investment thesis consistency
- Clear, compelling summary

**Financial Overview:**
- Revenue, EBITDA, net income consistency
- Growth rate calculations
- Proper currency and period labeling

**Market Analysis:**
- Market size data consistency
- Growth rate alignment
- Source attribution for market data

**Competitive Landscape:**
- Market share calculations
- Competitor data accuracy
- Consistent time periods

**Financial Projections:**
- Mathematical correctness
- Reasonable assumptions
- Consistent growth rates

**Valuation:**
- Proper methodology application
- Correct multiple calculations
- Consistent terminal value

### Cross-Slide Validation

**Number Tracking:**
- Create master list of all key numbers
- Track each number across all appearances
- Flag any inconsistencies or discrepancies
- Verify calculation methodologies

**Narrative Flow:**
- Check story consistency across sections
- Ensure smooth transitions between topics
- Validate that conclusions are supported
- Confirm logical argument flow

## Common Issues Found

### Number Consistency
- Enterprise value calculated differently on multiple slides
- Revenue growth rates using different bases
- Market share percentages not adding to 100%
- EBITDA margins calculated inconsistently
- Time period mismatches (LTM vs. FY vs. quarterly)

### Data-Narrative Issues
- "Market leader" claims without supporting data
- Growth stories not matching historical performance
- Competitive advantages not quantified
- Financial projections overly optimistic vs. trends
- Strategic rationale not supported by analysis

### Language Issues
- Inconsistent company naming
- Informal language in professional context
- Technical jargon without explanation
- Overly complex sentence structure
- Inconsistent terminology usage

### Formatting Issues
- Inconsistent fonts and colors
- Poorly formatted charts and tables
- Inadequate white space
- Misaligned elements
- Inconsistent number formatting

## Quality Standards

### Accuracy Standards
- All mathematical calculations correct
- All numbers consistent across slides
- All data properly sourced and cited
- All claims supported by evidence

### Professional Standards
- Investment banking quality language
- Consistent formatting and branding
- Clear, concise communication
- Appropriate technical detail level

### Presentation Standards
- Visually professional appearance
- Easy-to-read formatting
- Logical information flow
- Effective use of charts and tables

## Output Reports

### QC Summary Report
```
IB Deck Quality Control Report
============================

Presentation: [Name]
Date: [Date]
Reviewer: [OpenClaw Financial Analysis]

Overall Assessment: [Pass/Fail/Needs Revision]

Issues Found: [X] Critical, [Y] Warning, [Z] Info

Critical Issues:
1. [Description] - Slide [X]
2. [Description] - Slide [Y]

Warnings:
1. [Description] - Slide [Z]
2. [Description] - Slide [W]

Recommendations:
1. [Action item]
2. [Action item]
```

### Detailed Issue Log
For each issue found:
- Slide number and location
- Issue description and severity
- Specific recommendation for fix
- Cross-reference to related issues

## Integration with OpenClaw

This skill integrates seamlessly with OpenClaw's ecosystem:
- **Document Processing**: Direct PowerPoint file analysis
- **Collaborative Review**: Team-based quality control
- **Template Integration**: Consistency with firm templates
- **Version Control**: Track changes and revisions
- **Automated Reporting**: Generate QC reports automatically
