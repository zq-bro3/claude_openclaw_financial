#!/bin/bash

# Financial Analysis Skill Installation Script for macOS
# This script installs the financial analysis skills for OpenClaw

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# OpenClaw skills directory
SKILLS_DIR="$HOME/.openclaw/workspace/skills"
FINANCIAL_SKILL_DIR="$SKILLS_DIR/financial-analysis"

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if OpenClaw is installed
check_openclaw() {
    print_status "Checking if OpenClaw is installed..."
    
    if command -v openclaw &> /dev/null; then
        print_success "OpenClaw is installed"
        return 0
    else
        print_error "OpenClaw is not installed"
        echo "Please install OpenClaw first:"
        echo "  npm install -g openclaw@latest"
        echo "  openclaw onboard --install-daemon"
        exit 1
    fi
}

# Create skills directory if it doesn't exist
create_skills_directory() {
    print_status "Creating skills directory..."
    
    if [ ! -d "$SKILLS_DIR" ]; then
        mkdir -p "$SKILLS_DIR"
        print_success "Created skills directory: $SKILLS_DIR"
    else
        print_status "Skills directory already exists: $SKILLS_DIR"
    fi
}

# Install financial analysis skill
install_financial_skill() {
    print_status "Installing Financial Analysis skill..."
    
    # Remove existing installation if it exists
    if [ -d "$FINANCIAL_SKILL_DIR" ]; then
        print_warning "Removing existing Financial Analysis skill..."
        rm -rf "$FINANCIAL_SKILL_DIR"
    fi
    
    # Create the skill directory structure
    mkdir -p "$FINANCIAL_SKILL_DIR"
    mkdir -p "$FINANCIAL_SKILL_DIR/comps-analysis"
    mkdir -p "$FINANCIAL_SKILL_DIR/dcf-model"
    mkdir -p "$FINANCIAL_SKILL_DIR/lbo-model"
    mkdir -p "$FINANCIAL_SKILL_DIR/3-statements"
    mkdir -p "$FINANCIAL_SKILL_DIR/competitive-analysis"
    mkdir -p "$FINANCIAL_SKILL_DIR/check-deck"
    mkdir -p "$FINANCIAL_SKILL_DIR/check-model"
    mkdir -p "$FINANCIAL_SKILL_DIR/ppt-template-creator"
    
    # Copy skill files from current directory
    CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    
    if [ -f "$CURRENT_DIR/SKILL.md" ]; then
        cp "$CURRENT_DIR/SKILL.md" "$FINANCIAL_SKILL_DIR/"
        print_success "Installed main Financial Analysis skill"
    else
        print_error "SKILL.md not found in current directory"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/comps-analysis/SKILL.md" ]; then
        cp "$CURRENT_DIR/comps-analysis/SKILL.md" "$FINANCIAL_SKILL_DIR/comps-analysis/"
        print_success "Installed Comparable Company Analysis skill"
    else
        print_error "comps-analysis/SKILL.md not found"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/dcf-model/SKILL.md" ]; then
        cp "$CURRENT_DIR/dcf-model/SKILL.md" "$FINANCIAL_SKILL_DIR/dcf-model/"
        print_success "Installed DCF Model skill"
    else
        print_error "dcf-model/SKILL.md not found"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/lbo-model/SKILL.md" ]; then
        cp "$CURRENT_DIR/lbo-model/SKILL.md" "$FINANCIAL_SKILL_DIR/lbo-model/"
        print_success "Installed LBO Model skill"
    else
        print_error "lbo-model/SKILL.md not found"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/3-statements/SKILL.md" ]; then
        cp "$CURRENT_DIR/3-statements/SKILL.md" "$FINANCIAL_SKILL_DIR/3-statements/"
        print_success "Installed 3-Statement Model skill"
    else
        print_error "3-statements/SKILL.md not found"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/competitive-analysis/SKILL.md" ]; then
        cp "$CURRENT_DIR/competitive-analysis/SKILL.md" "$FINANCIAL_SKILL_DIR/competitive-analysis/"
        print_success "Installed Competitive Analysis skill"
    else
        print_error "competitive-analysis/SKILL.md not found"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/check-deck/SKILL.md" ]; then
        cp "$CURRENT_DIR/check-deck/SKILL.md" "$FINANCIAL_SKILL_DIR/check-deck/"
        print_success "Installed Deck Check skill"
    else
        print_error "check-deck/SKILL.md not found"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/check-model/SKILL.md" ]; then
        cp "$CURRENT_DIR/check-model/SKILL.md" "$FINANCIAL_SKILL_DIR/check-model/"
        print_success "Installed Model Check skill"
    else
        print_error "check-model/SKILL.md not found"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/ppt-template-creator/SKILL.md" ]; then
        cp "$CURRENT_DIR/ppt-template-creator/SKILL.md" "$FINANCIAL_SKILL_DIR/ppt-template-creator/"
        print_success "Installed PPT Template Creator skill"
    else
        print_error "ppt-template-creator/SKILL.md not found"
        exit 1
    fi
    
    if [ -f "$CURRENT_DIR/.mcp.json" ]; then
        cp "$CURRENT_DIR/.mcp.json" "$FINANCIAL_SKILL_DIR/"
        print_success "Installed MCP configuration"
    else
        print_error ".mcp.json not found"
        exit 1
    fi
}

# Verify installation
verify_installation() {
    print_status "Verifying installation..."
    
    local errors=0
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/SKILL.md" ]; then
        print_error "Main Financial Analysis skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/comps-analysis/SKILL.md" ]; then
        print_error "Comparable Company Analysis skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/dcf-model/SKILL.md" ]; then
        print_error "DCF Model skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/lbo-model/SKILL.md" ]; then
        print_error "LBO Model skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/3-statements/SKILL.md" ]; then
        print_error "3-Statement Model skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/competitive-analysis/SKILL.md" ]; then
        print_error "Competitive Analysis skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/check-deck/SKILL.md" ]; then
        print_error "Deck Check skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/check-model/SKILL.md" ]; then
        print_error "Model Check skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/ppt-template-creator/SKILL.md" ]; then
        print_error "PPT Template Creator skill file not found"
        errors=$((errors + 1))
    fi
    
    if [ ! -f "$FINANCIAL_SKILL_DIR/.mcp.json" ]; then
        print_error "MCP configuration file not found"
        errors=$((errors + 1))
    fi
    
    if [ $errors -eq 0 ]; then
        print_success "All skill files installed successfully"
        return 0
    else
        print_error "$errors errors found during verification"
        return 1
    fi
}

# Print usage information
print_usage() {
    print_status "Installation completed successfully!"
    echo ""
    echo "Financial Analysis skills are now available in OpenClaw."
    echo ""
    echo "Available commands:"
    echo "  /comps [company1] [company2] [company3]...  - Build comparable company analysis"
    echo "  /dcf [company_name]                         - Create DCF valuation model"
    echo "  /lbo [company_name]                         - Build LBO model"
    echo "  /3-statements [company_name]                 - Build 3-statement financial model"
    echo "  /competitive-analysis [industry]             - Analyze competitive landscape"
    echo "  /check-model [model_file]                    - Audit and debug financial models"
    echo "  /check-deck [presentation_file]               - Review presentation quality"
    echo "  /ppt-template-creator [options]             - Convert PPT templates to skills"
    echo ""
    echo "Example usage:"
    echo "  /comps Apple Microsoft Google"
    echo "  /dcf Tesla"
    echo "  /lbo TargetCompany"
    echo "  /3-statements Microsoft"
    echo "  /competitive-analysis cloud-computing"
    echo "  /check-model financial_model.xlsx"
    echo "  /check-deck pitch_deck.pptx"
    echo ""
    echo "Data Sources:"
    echo "  This skill prioritizes MCP data sources when available:"
    echo "  - S&P Global (Kensho)"
    echo "  - FactSet"
    echo "  - Daloopa"
    echo "  - Morningstar"
    echo "  - PitchBook"
    echo "  - And more..."
    echo ""
    echo "To configure MCP connectors, edit your OpenClaw configuration."
    echo ""
    print_status "Restart OpenClaw to load the new skills:"
    echo "  openclaw gateway restart"
}

# Main installation function
main() {
    echo "Financial Analysis Skill Installation for OpenClaw"
    echo "=================================================="
    echo ""
    
    check_openclaw
    create_skills_directory
    install_financial_skill
    
    if verify_installation; then
        print_usage
    else
        print_error "Installation failed. Please check the error messages above."
        exit 1
    fi
}

# Run the installation
main "$@"
