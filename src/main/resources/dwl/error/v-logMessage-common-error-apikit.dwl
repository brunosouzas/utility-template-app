%dw 2.0
output application/json
---
{
	message: "Error APIKIT",
	statusCode: error.errorMessage.attributes.statusCode,
	errorType: error.errorType.identifier,
	(errorCode: error.errorMessage.payload.errorDetails.errorCode) if (!isEmpty(error.errorMessage.payload.errorDetails.errorCode)),
	errorMessage: (
		if (!isEmpty(error.errorMessage.payload.errorDetails.errorMessage))
			error.errorMessage.payload.errorDetails.errorMessage
		else
			error.description
	)
}