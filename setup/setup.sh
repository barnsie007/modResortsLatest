#!/bin/sh

# ACTION should be one of:
#
#   ADD_LLM_ISSUE : Updates the code to include an issue that LLM can solve
#   REMOVE_LLM_ISSUE : Updates the code to remove an issue that LLM can solve
#

ACTION=$1

if [ "$ACTION" = "ADD_LLM_ISSUE" ]; then
    cp -f LLMIssues/DMBeanUtils.java.WITH_ISSUE ../src/main/java/com/acme/modres/mbean/DMBeanUtils.java
elif [ "$ACTION" = "REMOVE_LLM_ISSUE" ]; then
    cp -f LLMIssues/DMBeanUtils.java.WITHOUT_ISSUE ../src/main/java/com/acme/modres/mbean/DMBeanUtils.java
else
    echo "ERROR: Not a valid ACTION"
fi

