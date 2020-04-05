--------------------------
Joomla\\CMS\\Log\\LogEntry
--------------------------

.. php:namespace: Joomla\\CMS\\Log

.. php:class:: LogEntry

    Joomla! Log Entry class

    This class is designed to hold log entries for either writing to an engine, or for supported engines, retrieving lists and building in memory (PHP based) search operations.

    .. php:attr:: category

        :type: string

        Application responsible for log entry.

    .. php:attr:: context

        :type: array

        The message context.

    .. php:attr:: date

        :type: Date

        The date the message was logged.

    .. php:attr:: message

        :type: string

        Message to be logged.

    .. php:attr:: priority

        :type: string

        The priority of the message to be logged.

    .. php:attr:: priorities

        :type: array

        :scope: protected

        List of available log priority levels [Based on the Syslog default
        levels].

    .. php:attr:: callStack

        :type: array

        Call stack and back trace of the logged call.

    .. php:method:: __construct($message, $priority = Log::INFO, $category = '', $date = null, $context = array())

        Constructor

        :param $message:
        :param $priority:
        :param $category:
        :param $date:
        :param $context:
