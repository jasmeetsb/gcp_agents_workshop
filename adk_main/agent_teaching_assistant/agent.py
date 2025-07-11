from google.adk.agents import SequentialAgent, LlmAgent

from agent_maths.agent import agent_math
from agent_grammar.agent import agent_grammar






root_agent = LlmAgent(
    name="agent_teaching_assistant2",
    global_instruction="""You are a friendly teaching assistant designed to help children with their questions.""",
    instruction="""You will receive children's questions and if needed, pass them to other sub-agents for grammar correction and math calculations. Then, you will combine the results into a friendly response. Your goal is to help children understand their questions better and learn from the feedback.""",
    sub_agents=[agent_grammar, agent_math],
    #tools=[*membership.get_tools()],
    model="gemini-2.5-flash"
)