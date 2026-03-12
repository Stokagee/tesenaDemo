# Tesena E-shop Automation Testing Project

## Overview

This is a Robot Framework test automation project for testing the PrestaShop e-shop at Tesena.cz. The project implements the Page Object Model (POM) pattern for maintainable and scalable test automation.

## Prerequisites

- **Python 3.8+** - Required for Robot Framework
- **Node.js 14+** - Required for Browser library
- **pip** - Python package manager

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Stokagee/tesenaDemo
   cd tesenaDemo
   ```

2. Create virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   venv\Scripts\activate     # Windows
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Initialize browser:
   ```bash
   rfbrowser init
   ```

## Project Structure

```
tesenaDemo/
├── common.resource              # Core keywords, browser setup/teardown
├── global_variables.resource    # Global configuration variables
├── requirements.txt             # Python dependencies
├── README.md                    # This file
├── resources/
│   ├── locators/               # Page element selectors
│   │   ├── main_page_locators.resource
│   │   ├── register_page_locators.resource
│   │   ├── art_page_locators.resource
│   │   ├── shopping_cart_locators.resource
│   │   ├── main_clothes_menu/
│   │   │   ├── clothes_women_locators.resource
│   │   │   ├── clothes_men_locators.resource (TODO)
│   │   │   └── clothes_page_locators.resource (TODO)
│   │   └── main_prislusenstvi_menu/
│   │       ├── prislusentsvi_stationery_locators.resource
│   │       ├── prislusentsvi_home_accessories_locators.resource (TODO)
│   │       └── prislusenstvi_locators.resource (TODO)
│   ├── page/                   # Page-specific keywords
│   │   ├── register_page_page.resource
│   │   ├── main_page_page.resource
│   │   ├── art_page_page.resource
│   │   ├── shopping_cart_page.resource
│   │   ├── clothes_menu/
│   │   │   ├── women.resource
│   │   │   └── men.resource (TODO)
│   │   └── prislusenstvi_menu/
│   │       ├── stationery_page.resource
│   │       └── home_accessories_page.resource (TODO)
│   └── workflow/               # High-level test workflows
│       ├── register_workflow.resource
│       ├── main_workflow.resource
│       └── checkout_workflow.resource
└── tests/                      # Test cases
    ├── registration.robot
    └── checkout.robot
```

## Running Tests

### Run all tests
```bash
robot tests/
```

### Run specific test file
```bash
robot tests/registration.robot
```

### Run with specific browser
```bash
robot -v HEADLESS:False tests/
```

### Run with custom URL
```bash
robot -v TEST_URL:https://example.com tests/
```

### Dry run (syntax check)
```bash
robot --dryrun tests/
```

## Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `TEST_URL` | `www.example.com` | Target URL |
| `HEADLESS` | `False` | Browser headless mode |
| `TIMEOUT` | `5s` | Default timeout |
| `LOG_TO_CONSOLE` | `False` | Console logging |

## Naming Conventions

| Type | Convention | Example |
|------|------------|---------|
| Robot keywords | Title Case | `Click Save Button` |
| Robot variables | UPPER_SNAKE | `${FIRST_NAME}` |
| Python functions | snake_case | `get_random_email` |
| Filenames | snake_case | `register_page.resource` |
| Folders | snake_case | `clothes_menu/` |

## Documentation Convention

| File Type | Documentation Style |
|-----------|-------------------|
| `.resource` files | `*** Comments ***` section at top |
| `.robot` files (tests) | `[Documentation]` in Settings |

## Libraries Used

- **Browser** - Modern web testing library (Playwright-based)
- **FakerLibrary** - Random test data generation
- **DateTime** - Date and time operations
- **Collections** - List and dictionary operations
- **String** - String manipulation

## Test Reports

After running tests, reports are generated:
- `results/log.html` - Detailed execution log
- `results/report.html` - Test summary report
- `results/output.xml` - Machine-readable results

## License

This project is for demonstration purposes.

## Contact

For questions or issues, please contact the project maintainer.
