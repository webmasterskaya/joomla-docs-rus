--------------------------------------
Joomla\\CMS\\Log\\Logger\\SyslogLogger
--------------------------------------

.. php:namespace: Joomla\\CMS\\Log\\Logger

.. php:class:: SyslogLogger

    Joomla! Syslog Log class

    This class is designed to call the PHP Syslog function call which is then sent to the system wide log system. For Linux/Unix based systems this is the syslog subsystem, for the Windows based implementations this can be found in the Event Log. For Windows,
    permissions may prevent PHP from properly outputting messages.

    .. php:attr:: priorities

        :type: array

        :scope: protected

        Translation array for LogEntry priorities to SysLog priority names.

    .. php:attr:: options

        :type: array

        :scope: protected

        Options array for the JLog instance.

    .. php:method:: __construct($options)

        Constructor.

        :param $options:

    .. php:method:: __destruct()

        Destructor.

    .. php:method:: addEntry(LogEntry $entry)

        Method to add an entry to the log.

        :type $entry: LogEntry
        :param $entry:
        :returns: void
