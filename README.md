# GCP Agents Workshop

A comprehensive workshop demonstrating Google Cloud Platform's agent development capabilities, including multi-agent systems using the Google Agent Development Kit (ADK) and Vertex AI Memory Bank integrations.

## 🚀 Overview

This repository provides hands-on examples and tutorials for building intelligent AI agents using Google Cloud Platform's latest generative AI tools. The workshop covers two main areas:

1. **Multi-Agent Systems with ADK** - Complete end-to-end development lifecycle from local testing to production deployment
2. **Memory Bank Integration** - Examples using both ADK and LangGraph frameworks for persistent memory capabilities

## 📁 Repository Structure

### `adk_main/` - Multi-Agent Teaching Assistant Demo

A complete demonstration of a multi-agent system built with the Google Agent Development Kit (ADK). Features a "Teaching Assistant" agent that helps children by correcting grammar and solving math problems.

**Key Components:**

- **`agent_teaching_assistant/`** - Root sequential agent that orchestrates sub-agents
- **`agent_grammar/`** - Specialized agent for grammar correction
- **`agent_maths/`** - Mathematical problem-solving agent with calculation tools
- **Deployment scripts** - Tools for deploying to Vertex AI Agent Engine and AgentSpace

### `memory_bank/` - Vertex AI Memory Bank Tutorials

Interactive Jupyter notebooks demonstrating how to integrate persistent memory capabilities into AI agents.

**Notebooks:**

- **`get_started_with_memory_bank_adk.ipynb`** - Memory Bank integration using ADK framework
- **`get_started_with_memory_bank_langgraph.ipynb`** - Memory Bank integration using LangGraph framework

## 🏛️ Architecture

### Multi-Agent Teaching Assistant Flow

```text
User Query → Teaching Assistant (Root Agent)
    ├── 1. Grammar Agent: Corrects grammatical errors
    └── 2. Math Agent: Identifies and solves mathematical operations
         └── Response: Combined corrected grammar + solved math
```

### Technology Stack

- **Framework:** [Google Agent Development Kit (ADK)](https://cloud.google.com/vertex-ai/docs/agent-builder/agents/adk/overview)
- **Memory:** [Vertex AI Memory Bank](https://cloud.google.com/vertex-ai/docs/memory-bank)
- **Language:** Python 3.10+
- **AI Models:** Google Gemini (2.5 Flash, 2.0 Flash)
- **Deployment:** [Vertex AI Agent Engine](https://cloud.google.com/vertex-ai/docs/agent-builder/agent-engine/overview)
- **UI:** [Google AgentSpace](https://cloud.google.com/vertex-ai/docs/agent-builder/agentspace)
- **Cloud Platform:** Google Cloud Platform (GCP)

## 🛠️ Getting Started

### Prerequisites

1. Python 3.10 or higher
2. Google Cloud Project with Vertex AI API enabled
3. Appropriate IAM permissions for Vertex AI services
4. Jupyter environment for running notebooks (optional)

### Quick Start

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd gcp_agents_workshop
   ```

2. **Set up your environment**

   ```bash
   # Install dependencies
   pip install -r requirements.txt
   
   # Configure your GCP credentials
   gcloud auth application-default login
   ```

3. **Explore the ADK Multi-Agent Demo**

   ```bash
   cd adk_main/
   # Follow the README instructions in the adk_main directory
   ```

4. **Try Memory Bank Tutorials**

   ```bash
   cd memory_bank/
   # Open the Jupyter notebooks to explore Memory Bank integration
   jupyter notebook
   ```

## 📚 Learning Path

1. **Start with ADK Basics** - Explore the `adk_main/` directory to understand multi-agent architecture
2. **Local Testing** - Use the ADK Web UI for debugging and tracing agent interactions
3. **Memory Integration** - Work through the Memory Bank notebooks to add persistent memory
4. **Production Deployment** - Deploy your agents to Vertex AI Agent Engine
5. **User Interface** - Expose your agents through Google AgentSpace

## 🎯 Use Cases

- **Educational Tools** - Teaching assistants for grammar and math help
- **Customer Support** - Multi-agent systems for complex query resolution
- **Content Processing** - Agents with persistent memory for document analysis
- **Workflow Automation** - Sequential agents for multi-step processes

## 🤝 Contributing

This workshop is designed for learning and experimentation. Feel free to:

- Extend the existing agents with new capabilities
- Create additional agent types
- Integrate with other Google Cloud services
- Share your implementations and learnings

## 📄 License

This project is licensed under the Apache License 2.0 - see the LICENSE file for details.

## 🔗 Related Resources

- **Original Repository:** [sokart/adk-agentengine-agentspace](https://github.com/sokart/adk-agentengine-agentspace)
- **Google ADK Documentation:** [Vertex AI Agent Development Kit](https://cloud.google.com/vertex-ai/docs/agent-builder/agents/adk/overview)
- **Memory Bank Documentation:** [Vertex AI Memory Bank](https://cloud.google.com/vertex-ai/docs/memory-bank)
- **Agent Engine Documentation:** [Vertex AI Agent Engine](https://cloud.google.com/vertex-ai/docs/agent-builder/agent-engine/overview)
