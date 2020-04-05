-----------------------------------
Joomla\\CMS\\Response\\JsonResponse
-----------------------------------

.. php:namespace: Joomla\\CMS\\Response

.. php:class:: JsonResponse

    JSON Response class.

    This class serves to provide the Joomla Platform with a common interface to access response variables for e.g. Ajax requests.

    .. php:attr:: success

        :type: boolean

        Determines whether the request was successful

    .. php:attr:: message

        :type: string

        The main response message

    .. php:attr:: messages

        :type: array

        Array of messages gathered in the \JApplication object

    .. php:attr:: data

        :type: mixed

        The response data

    .. php:method:: __construct($response = null, $message = null, $error = false, $ignoreMessages = false)

        Constructor

        :param $response:
        :param $message:
        :param $error:
        :param $ignoreMessages:

    .. php:method:: __toString()

        Magic toString method for sending the response in JSON format

        :returns: string The response in JSON format
