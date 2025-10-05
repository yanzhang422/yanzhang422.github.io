# MCP/AI Setup for VS Code

This project is configured with Model Context Protocol (MCP) servers to enhance AI-assisted development capabilities with Cline.

## Configured MCP Servers

### 1. Filesystem Server
**Purpose**: Enhanced file system operations for the blog project
- Read/write files
- Search directory contents
- Monitor file changes

**No additional setup required** - automatically uses project directory

### 2. GitHub Server
**Purpose**: Repository management and GitHub API integration
- Create/update issues
- Manage pull requests
- Access repository information
- View and manage workflows

**Setup Required**:
1. Create a GitHub Personal Access Token:
   - Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Generate new token with `repo`, `workflow`, and `read:user` scopes
2. Set environment variable:
   ```bash
   # Windows (cmd)
   setx GITHUB_TOKEN "your_github_token_here"
   
   # Windows (PowerShell)
   $env:GITHUB_TOKEN = "your_github_token_here"
   [System.Environment]::SetEnvironmentVariable('GITHUB_TOKEN', 'your_github_token_here', 'User')
   ```
3. Restart VS Code to load the environment variable

### 3. Brave Search Server
**Purpose**: Web search capabilities for content research and blog writing
- Search the web for information
- Research topics for blog posts
- Find reference materials

**Setup Required**:
1. Get a Brave Search API key:
   - Visit https://brave.com/search/api/
   - Sign up for API access
2. Set environment variable:
   ```bash
   # Windows (cmd)
   setx BRAVE_API_KEY "your_brave_api_key_here"
   
   # Windows (PowerShell)
   $env:BRAVE_API_KEY = "your_brave_api_key_here"
   [System.Environment]::SetEnvironmentVariable('BRAVE_API_KEY', 'your_brave_api_key_here', 'User')
   ```
3. Restart VS Code to load the environment variable

### 4. Fetch Server
**Purpose**: Fetch and process web content
- Download web pages
- Extract content for analysis
- Research reference materials

**No additional setup required**

## How to Use

### Enabling MCP Servers

1. Open VS Code in this project directory
2. Ensure Cline extension is installed
3. The MCP servers will automatically connect when Cline starts
4. You can verify connection in Cline's MCP servers panel

### Using MCP Tools with Cline

Once configured, you can ask Cline to:

**File Operations**:
- "Use the filesystem server to search for all markdown files"
- "Read the contents of all blog posts from 2022"

**GitHub Operations**:
- "Create a GitHub issue for adding a new blog post category"
- "Check the status of recent pull requests"
- "List all open issues in this repository"

**Content Research**:
- "Search the web for latest trends in AI automation testing"
- "Fetch content from a specific URL to research for my blog"
- "Find recent articles about DevOps best practices"

## Verification

To verify your MCP setup:

1. Open Cline in VS Code
2. Check the MCP servers panel - you should see all 4 servers listed
3. Servers with green status indicators are working correctly
4. Servers requiring API keys will show connection status based on environment variable availability

## Troubleshooting

### Server Not Connecting
- Verify environment variables are set correctly
- Restart VS Code completely after setting environment variables
- Check that `npx` is available (requires Node.js installed)

### GitHub Server Issues
- Ensure GitHub token has correct permissions
- Verify token hasn't expired
- Check that token is set in GITHUB_TOKEN environment variable

### Brave Search Issues
- Verify API key is valid and active
- Check API usage limits haven't been exceeded
- Ensure key is set in BRAVE_API_KEY environment variable

## Additional MCP Servers

You can add more MCP servers by editing `.vscode/settings.json`. Popular options include:

- **@modelcontextprotocol/server-sqlite**: Database operations
- **@modelcontextprotocol/server-postgres**: PostgreSQL integration
- **@modelcontextprotocol/server-puppeteer**: Browser automation
- **@modelcontextprotocol/server-slack**: Slack integration

See the [MCP documentation](https://docs.cline.bot/mcp) for more information.

## Project-Specific Use Cases

For this Jekyll blog project, MCP servers are particularly useful for:

1. **Content Creation**: Use Brave Search to research topics, Fetch to gather reference materials
2. **Repository Management**: Use GitHub server to manage issues, PRs, and workflows
3. **File Operations**: Use Filesystem server to organize and manage blog posts
4. **CI/CD Integration**: Use GitHub server to monitor and manage GitHub Actions workflows

## Notes

- MCP servers run as separate processes and communicate with Cline via stdio
- Each server is automatically installed via `npx` when first used
- No permanent installation required - servers are fetched as needed
- Environment variables are only required for servers that need external API access
