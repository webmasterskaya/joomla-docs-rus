----------------------------------------
Joomla\\CMS\\Log\\Logger\\CallbackLogger
----------------------------------------

.. php:namespace: Joomla\\CMS\\Log\\Logger

.. php:class:: CallbackLogger

    Joomla! Callback Log class

    This class allows logging to be handled by a callback function.
    This allows unprecedented flexibility in the way logging can be handled.

    .. php:attr:: callback

        :type: callable

        :scope: protected

        The function to call when an entry is added

    .. php:attr:: options

        :type: array

        :scope: protected

        Options array for the JLog instance.

    .. php:attr:: priorities

        :type: array

        :scope: protected

        Translation array for LogEntry priorities to text strings.

    .. php:method:: __construct($options)

        Constructor.

        :param $options:

    .. php:method:: addEntry(LogEntry $entry)

        Method to add an entry to the log.

        :type $entry: LogEntry
        :param $entry:
        :returns: void
