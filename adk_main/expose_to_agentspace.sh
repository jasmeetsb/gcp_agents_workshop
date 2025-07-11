export PROJECT_ID="jsb-alto" # String 
export PROJECT_NUMBER="398507275014" # String 

export REASONING_ENGINE_ID="8390513969047011328" # String - Normally a 18-digit number
export REASONING_ENGINE_LOCATION="us-central1" # String - e.g. us-central1
export REASONING_ENGINE="projects/${PROJECT_ID}/locations/${REASONING_ENGINE_LOCATION}/reasoningEngines/${REASONING_ENGINE_ID}"


export AS_APP="jsb-agentspace_1744738698078" # String - Find it in Google Cloud AI Applications
#export AS_APP="jsb-agentspace-demo-2_1752128151107" # String - Find it in Google Cloud AI Applications

export AS_LOCATION="global" # String - e.g. global, eu, us

export AGENT_DISPLAY_NAME="teaching-assistant-agent2" # String - this will appear as the name of the agent into your AgentSpace
export AGENT_DESCRIPTION="This agent acts as a friendly teaching assistant, checking the grammar of kids' questions, performing math calculations using corrected or original text (if grammatically correct), and providing results or grammar feedback in a friendly tone."

DISCOVERY_ENGINE_PROD_API_ENDPOINT="https://discoveryengine.googleapis.com"


deploy_agent_to_agentspace() {
    curl -X POST \
        -H "Authorization: Bearer $(gcloud auth print-access-token)" \
        -H "Content-Type: application/json" \
        -H "x-goog-user-project: ${PROJECT_ID}" \
        ${DISCOVERY_ENGINE_PROD_API_ENDPOINT}/v1alpha/projects/${PROJECT_NUMBER}/locations/${AS_LOCATION}/collections/default_collection/engines/${AS_APP}/assistants/default_assistant/agents \
        -d "{
      \"name\": \"projects/${PROJECT_NUMBER}/locations/${AS_LOCATION}/collections/default_collection/engines/${AS_APP}/assistants/default_assistant\",
      \"displayName\": \"${AGENT_DISPLAY_NAME}\",
      \"description\": \"${AGENT_DESCRIPTION}\",
      \"icon\": {
        \"uri\": \"https://fonts.gstatic.com/s/i/short-term/release/googlesymbols/corporate_fare/default/24px.svg\"
      },
      \"adk_agent_definition\": {
        \"tool_settings\": {
          \"toolDescription\": \"${AGENT_DESCRIPTION}\"
        },
        \"provisioned_reasoning_engine\": {
          \"reasoningEngine\": \"${REASONING_ENGINE}\"
        }
      }
    }"
}

deploy_agent_to_agentspace