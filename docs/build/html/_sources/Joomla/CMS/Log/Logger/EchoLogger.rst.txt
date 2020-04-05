------------------------------------
Joomla\\CMS\\Log\\Logger\\EchoLogger
------------------------------------

.. php:namespace: Joomla\\CMS\\Log\\Logger

.. php:class:: EchoLogger

    Joomla Echo logger class.

    .. php:attr:: line_separator

        :type: string

        :scope: protected

        Value to use at the end of an echoed log entry to separate lines.

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
