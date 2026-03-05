---
name: fsi-ppt-template-creator
description: |
  Creates self-contained PPT template SKILLS (not presentations) from user-provided PowerPoint templates. Use ONLY when a user wants to create a reusable skill from their template. For creating actual presentations, use the pptx skill instead.

  **Perfect for:**
  - Converting PowerPoint templates to reusable skills
  - Creating firm-specific presentation templates
  - Standardizing presentation formats
  - Building template libraries
  - Automating presentation generation

  **Key Features:**
  - Template analysis and extraction
  - Skill structure creation
  - Placeholder mapping
  - Layout documentation
  - Reusable template skills
homepage: https://github.com/anthropics/financial-services-plugins
---

# PPT Template Creator

**This skill creates SKILLS, not presentations.** Use this when a user wants to turn their PowerPoint template into a reusable skill that can generate presentations later. If the user just wants to create a presentation, use the `pptx` skill instead.

## Overview

Convert PowerPoint templates into reusable OpenClaw skills that can generate consistent, professional presentations while maintaining firm-specific formatting and branding.

## Generated Skill Structure

The generated skill includes:
- `assets/template.pptx` - the template file
- `SKILL.md` - complete instructions for using the template
- `examples/` - sample presentations demonstrating usage
- `scripts/` - helper scripts for template manipulation

## Workflow

### 1. Template Analysis
**User provides template** (.pptx or .potx)

**Extract Template Properties:**
- Slide layouts and master slides
- Placeholder positions and types
- Color schemes and fonts
- Company branding elements
- Chart and table formats

### 2. Skill Structure Creation
**Initialize skill structure:**
```
template-skill/
├── SKILL.md
├── assets/
│   └── template.pptx
├── examples/
│   └── sample_presentation.md
└── scripts/
    └── template_validator.py
```

### 3. Template Integration
**Add template to skill:**
- Copy .pptx to `assets/template.pptx`
- Validate template structure
- Document layout options
- Create placeholder mapping

### 4. Skill Documentation
**Write comprehensive SKILL.md:**
- Template description and purpose
- Available slide layouts
- Placeholder mapping guide
- Usage instructions and examples
- Formatting requirements

### 5. Example Generation
**Create sample presentations:**
- Demonstrate each layout type
- Show proper formatting usage
- Provide copy-paste examples
- Document best practices

### 6. Validation and Testing
**Quality assurance:**
- Template validation script
- Example presentation testing
- Documentation completeness check
- User instruction verification

## Template Analysis

### Layout Extraction

**Identify Available Layouts:**
```python
# Analyze template slide layouts
import pptx
from pptx import Presentation

def analyze_template(template_path):
    prs = Presentation(template_path)
    layouts = {}
    
    for i, layout in enumerate(prs.slide_layouts):
        layout_info = {
            'name': layout.name,
            'placeholders': [],
            'slide_number': i
        }
        
        for placeholder in layout.placeholders:
            layout_info['placeholders'].append({
                'type': placeholder.placeholder_format.type,
                'name': placeholder.name,
                'position': (placeholder.left, placeholder.top, placeholder.width, placeholder.height)
            })
        
        layouts[layout.name] = layout_info
    
    return layouts
```

**Critical Placeholder Positions:**
- **Title placeholders**: Main slide titles
- **Content placeholders**: Body text and bullet points
- **Chart placeholders**: Chart insertion points
- **Table placeholders**: Table insertion points
- **Image placeholders**: Image insertion points

### Brand Element Extraction

**Color Scheme Analysis:**
- Primary and secondary colors
- Text and background colors
- Accent colors for highlights
- Chart color schemes

**Font Analysis:**
- Title fonts and sizes
- Body text fonts and sizes
- Header and footer fonts
- Consistent typography usage

**Logo and Branding:**
- Company logo placement
- Footer information
- Slide numbering
- Confidentiality notices

## Skill Template Structure

### SKILL.md Template

```markdown
---
name: [company]-presentation-template
description: |
  Professional presentation template for [Company] with standardized layouts, branding, and formatting. Use this skill to generate consistent, professional presentations that adhere to [Company] brand guidelines.

  **Perfect for:**
  - Client presentations and pitch decks
  - Internal reports and updates
  - Investment committee presentations
  - Marketing and sales materials
  - Board and shareholder communications

  **Available Layouts:**
  - Title Slide
  - Section Divider
  - Content Slide (bullets)
  - Two-Column Layout
  - Chart Slide
  - Table Slide
  - Summary Slide
  - Thank You/Contact

  **Key Features:**
  - Consistent [Company] branding
  - Professional color schemes
  - Standardized fonts and typography
  - Pre-defined chart styles
  - Automated slide numbering
homepage: https://github.com/[company]/presentation-templates
---

# [Company] Presentation Template

Professional presentation template that maintains [Company] brand standards and formatting guidelines.

## Usage

### Command
```
/[company]-template [presentation_type]
```

### Examples
```
/[company]-template client-pitch
/[company]-template financial-analysis
/[company]-template quarterly-review
/[company]-template investment-committee
```

## Available Layouts

### 1. Title Slide
**Purpose:** Opening slide with presentation title and presenter information
**Placeholders:**
- Main title (large text)
- Subtitle (optional)
- Presenter name and title
- Date and confidentiality notice

### 2. Section Divider
**Purpose:** Section transition slides
**Placeholders:**
- Section title (large text)
- Section description (optional)
- Section number

### 3. Content Slide
**Purpose:** Standard content with bullet points
**Placeholders:**
- Slide title
- Bullet point content (up to 6 points)
- Optional sub-bullets

### 4. Two-Column Layout
**Purpose:** Side-by-side comparison or related content
**Placeholders:**
- Slide title
- Left column content
- Right column content

### 5. Chart Slide
**Purpose:** Data visualization and charts
**Placeholders:**
- Slide title
- Chart area (main focus)
- Chart title and legend
- Optional data table below

### 6. Table Slide
**Purpose:** Structured data presentation
**Placeholders:**
- Slide title
- Table area (main focus)
- Table headers and data
- Optional notes below table

## Formatting Guidelines

### Color Usage
- **Primary Color**: [hex code] - Headings and emphasis
- **Secondary Color**: [hex code] - Subtitles and accents
- **Text Color**: [hex code] - Body text
- **Background Color**: [hex code] - Slide backgrounds

### Typography
- **Title Font**: [Font Name], [Size]pt
- **Subtitle Font**: [Font Name], [Size]pt
- **Body Font**: [Font Name], [Size]pt
- **Bullet Font**: [Font Name], [Size]pt

### Chart Formatting
- **Color Scheme**: [description]
- **Font Sizes**: Title [X]pt, Labels [Y]pt, Legend [Z]pt
- **Grid Lines**: [style and color]
- **Data Labels**: [format and position]

## Examples

### Sample Presentation Structure
```markdown
# Title Slide
Title: [Presentation Title]
Subtitle: [Optional subtitle]
Presenter: [Name], [Title]
Date: [Date]

# Section Divider
Section: 1. Executive Summary

# Content Slide
Title: Key Findings
Content:
- Finding 1 with supporting detail
- Finding 2 with supporting detail
- Finding 3 with supporting detail

# Chart Slide
Title: Revenue Growth
Chart: Line chart showing 5-year revenue trend
Data: Revenue in $ millions, 2019-2023

# Table Slide
Title: Financial Metrics
Table: Revenue, EBITDA, Margin for 3 years
```

## Best Practices

### Content Guidelines
- Keep slide titles concise and descriptive
- Limit bullet points to 6 per slide
- Use consistent terminology throughout
- Ensure data visualization is clear and readable

### Brand Consistency
- Always use company-approved colors and fonts
- Maintain consistent logo placement
- Use standardized slide numbering
- Include confidentiality notices as required

### Presentation Flow
- Start with clear agenda/overview
- Use section dividers for structure
- End with summary and next steps
- Include contact information on final slide

## Quality Standards

### Visual Standards
- Consistent formatting across all slides
- Professional color usage and contrast
- Readable fonts and appropriate sizing
- Clean, uncluttered layouts

### Content Standards
- Accurate and up-to-date information
- Clear and concise messaging
- Proper grammar and spelling
- Consistent terminology

### Technical Standards
- Charts properly formatted and labeled
- Tables aligned and readable
- Images high quality and properly placed
- Animations used sparingly and professionally
```

## Validation Script

### Template Validator
```python
#!/usr/bin/env python3
"""
Template validation script for PPT template skills
"""

import os
import sys
from pathlib import Path
from pptx import Presentation
from pptx.enum.shapes import MSO_SHAPE_TYPE

def validate_template(template_path):
    """Validate PowerPoint template structure and completeness"""
    
    if not os.path.exists(template_path):
        print(f"Error: Template file {template_path} not found")
        return False
    
    try:
        prs = Presentation(template_path)
        
        # Check for required layouts
        required_layouts = [
            'Title Slide',
            'Title and Content', 
            'Section Header',
            'Two Content',
            'Comparison',
            'Content with Caption'
        ]
        
        available_layouts = [layout.name for layout in prs.slide_layouts]
        
        print(f"Available layouts: {available_layouts}")
        
        # Check for company branding elements
        print("Checking for branding elements...")
        
        # Validate slide masters
        for slide_master in prs.slide_masters:
            print(f"Slide master: {slide_master.name}")
            
        return True
        
    except Exception as e:
        print(f"Error validating template: {e}")
        return False

def main():
    if len(sys.argv) != 2:
        print("Usage: python template_validator.py <template_path>")
        sys.exit(1)
    
    template_path = sys.argv[1]
    success = validate_template(template_path)
    
    if success:
        print("Template validation completed successfully")
    else:
        print("Template validation failed")
        sys.exit(1)

if __name__ == "__main__":
    main()
```

## Integration with OpenClaw

This skill integrates seamlessly with OpenClaw's ecosystem:
- **Template Management**: Centralized template library
- **Version Control**: Track template changes and updates
- **Collaborative Design**: Team-based template development
- **Automated Generation**: Direct presentation creation
- **Quality Assurance**: Built-in validation and testing

## Usage Examples

### Creating a New Template Skill
```bash
# Convert company template to skill
ppt-template-creator create --template company_template.pptx --name company-presentations

# Validate existing template skill
ppt-template-creator validate --skill company-presentations

# Generate presentation from template
company-presentations generate --type client-pitch --content pitch_content.md
```

### Template Maintenance
```bash
# Update template in skill
ppt-template-creator update --skill company-presentations --template new_template.pptx

# Test template with sample content
ppt-template-creator test --skill company-presentations --sample financial-report

# List available templates
ppt-template-creator list
```

## Best Practices

### Template Design
- Keep templates flexible and modular
- Use standard PowerPoint layouts
- Maintain consistent branding
- Include placeholder guidance

### Skill Development
- Document all layout options clearly
- Provide comprehensive examples
- Include validation scripts
- Test with various content types

### User Experience
- Provide clear usage instructions
- Include troubleshooting guides
- Offer customization options
- Maintain backward compatibility
