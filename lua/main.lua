--#############################################################################
--# Aluxa Server - MyTestSkill
--#############################################################################
local skill = {}

--#############################################################################
--# LaunchRequest
--#############################################################################
skill.LaunchRequestHandler = {
  canHandle = function(handlerInput)
    return handlerInput.Ctx:isLaunchRequest()
  end,
  handle = function(handlerInput)
    local speakOutput = "Welcome to my test skill. What not say, hello."

    return handlerInput.ResponseBuilder.new()
      :speak(speakOutput)
      :reprompt(speakOutput)
      :getResponse()
  end
}

--#############################################################################
--# HelloIntent
--#############################################################################
skill.HelloIntentHandler = {
  canHandle = function(handlerInput)
    return handlerInput.Ctx:isIntentRequest("HelloIntent")
  end,
  handle = function(handlerInput)

    local speakOutput = "Hello to you. Nice to meet you."

    return handlerInput.ResponseBuilder.new()
      :speak(speakOutput)
      :getResponse()

  end
}

--#############################################################################
--# AMAZON.HelpIntent
--#############################################################################
skill.HelpIntentHandler = {
  canHandle = function(handlerInput)
    return handlerInput.Ctx:isHelpIntent()
  end,
  handle = function(handlerInput)
    local speakOutput = "Sorry, I dont have any help topics for this skill."

    return handlerInput.ResponseBuilder.new()
      :speak(speakOutput)
      :getResponse()

  end
}

--#############################################################################
--# CancelAndStop Intent
--#############################################################################
skill.CancelAndStopIntentHandler = {
  canHandle = function(handlerInput)
    return handlerInput.Ctx:isCancelOrStopIntent()
  end,
  handle = function(handlerInput)
    local speakOutput = "Goodbye"

    return handlerInput.ResponseBuilder.new()
      :speak(speakOutput)
      :getResponse()
  end
}

--#############################################################################
--# SessionEndedRequest
--#############################################################################
skill.SessionEndedRequestHandler = {
  canHandle = function(handlerInput)
    return handlerInput.Ctx:isSessionEndedRequest()
  end,
  handle = function(handlerInput)
    return handlerInput.ResponseBuilder.new()
      :withShouldEndSession()
      :getResponse()
  end
}

--#############################################################################
--# AMAZON.FallbackIntent
--#############################################################################
skill.FallbackIntentHandler = {
  canHandle = function(handlerInput)
    return handlerInput.Ctx:isFallbackIntent()
  end,
  handle = function(handlerInput)
    local speakOutput = "I'm sorry, I didn't catch that last reqeust."

    return handlerInput.ResponseBuilder.new()
      :speak(speakOutput)
      :getResponse()

  end
}
--#############################################################################
--# ErrorHandler
--#############################################################################
skill.ErrorHandler = {
  canHandle = function(handlerInput, error)
    return handlerInput.Ctx:hasRequestError()
  end,
  handle = function(handlerInput, error)
    speakOutput = "Sorry, I had trouble doing what you asked."

    return handlerInput.ResponseBuilder.new()
      :speak(speakOutput)
      :reprompt(speakOutput)
      :getResponse()

  end
}

--#############################################################################
--# Exports
--#############################################################################
skill.exports = {
  requestHandlers = {
    'LaunchRequestHandler',
    'HelloIntentHandler',
    'HelpIntentHandler',
    'CancelAndStopIntentHandler',
    'FallbackIntentHandler',
    'SessionEndedRequestHandler',
  },
  errorHandlers = {
    'ErrorHandler',
  }
}

return skill