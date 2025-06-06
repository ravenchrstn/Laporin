const response = (statusCode, data, message, excludeId, res) => {
    const response = {
        statusCode,
        message,
        data,
        excludeId
    }

    res.status(statusCode).json(Object.fromEntries(Object.entries(response).filter(([_, value]) => value != null)))
}

module.exports = response;