--------------------------------------------
Joomla\\CMS\\Log\\Logger\\MessagequeueLogger
--------------------------------------------

.. php:namespace: Joomla\\CMS\\Log\\Logger

.. php:class:: MessagequeueLogger

    Joomla MessageQueue logger class.

    This class is designed to output logs to a specific MySQL database table. Fields in this table are based on the Syslog style of log output. This is designed to allow quick and easy searching.

    .. php:attr:: options

        :type: array

        :scope: protected

        Options array for the JLog instance.

    .. php:attr:: priorities

        :type: array

        :scope: protected

        Translation array for LogEntry priorities to text strings.

    .. php:method:: addEntry(LogEntry $entry)

        Method to add an entry to the log.

        :type $entry: LogEntry
        :param $entry:
        :returns: void

    .. php:method:: __construct($options)

        Constructor.

        :param $options:
