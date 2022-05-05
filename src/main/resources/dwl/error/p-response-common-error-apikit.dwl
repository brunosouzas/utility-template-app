%dw 2.0 
output application/json
---
{
  apiName: p('api.name'),
  version: p('api.version'),
  correlationId: correlationId,
  timestamp: now(),
  errorDetails: {
    errorCode: error.errorMessage.attributes.statusCode,
    errorMessage: error.description,
    additionalInfo: ""
  }
}