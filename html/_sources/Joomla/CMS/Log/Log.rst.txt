---------------------
Joomla\\CMS\\Log\\Log
---------------------

.. php:namespace: Joomla\\CMS\\Log

.. php:class:: Log

    Joomla! Log Class

    This class hooks into the global log configuration settings to allow for user configured logging events to be sent to where the user wishes them to be sent. On high load sites Syslog is probably the best (pure PHP function), then the text file based loggers (CSV, W3c or plain Formattedtext) and finally MySQL offers the most features (e.g. rapid searching)
    but will incur a performance hit due to INSERT being issued.

    .. php:const:: ALL

        All log priorities.

    .. php:const:: EMERGENCY

        The system is unusable.

    .. php:const:: ALERT

        Action must be taken immediately.

    .. php:const:: CRITICAL

        Critical conditions.

    .. php:const:: ERROR

        Error conditions.

    .. php:const:: WARNING

        Warning conditions.

    .. php:const:: NOTICE

        Normal, but significant condition.

    .. php:const:: INFO

        Informational message.

    .. php:const:: DEBUG

        Debugging message.

    .. php:attr:: instance

        :type: Log

        :scope: protected

        The global Log instance.

    .. php:attr:: configurations

        :type: array

        :scope: protected

        Container for Logger configurations.

    .. php:attr:: loggers

        :type: Logger[]

        :scope: protected

        Container for Logger objects.

    .. php:attr:: lookup

        :type: array

        :scope: protected

        Lookup array for loggers.

    .. php:method:: __construct()

        Constructor.

    .. php:method:: add($entry, $priority = self::INFO, $category = '', $date = null, $context = array())

        Method to add an entry to the log.

        :param $entry:
        :param $priority:
        :param $category:
        :param $date:
        :param $context:
        :returns: void

    .. php:method:: addLogger($options, $priorities = self::ALL, $categories = array(), $exclude = false)

        Add a logger to the Log instance.  Loggers route log entries to the
        correct files/systems to be logged.

        :param $options:
        :param $priorities:
        :param $categories:
        :param $exclude:
        :returns: void

    .. php:method:: addLoggerInternal($options, $priorities = self::ALL, $categories = array(), $exclude = false)

        Add a logger to the Log instance.  Loggers route log entries to the
        correct files/systems to be logged.
        This method allows you to extend Log completely.

        :param $options:
        :param $priorities:
        :param $categories:
        :param $exclude:
        :returns: void

    .. php:method:: createDelegatedLogger()

        Creates a delegated PSR-3 compatible logger from the current singleton
        instance. This method always returns a new delegated logger.

        :returns: DelegatingPsrLogger

    .. php:method:: setInstance($instance)

        Returns a reference to the a Log object, only creating it if it doesn't
        already exist.
        Note: This is principally made available for testing and internal
        purposes.

        :param $instance:
        :returns: void

    .. php:method:: addLogEntry(LogEntry $entry)

        Method to add an entry to the appropriate loggers.

        :type $entry: LogEntry
        :param $entry:
        :returns: void

    .. php:method:: findLoggers($priority, $category)

        Method to find the loggers to use based on priority and category values.

        :param $priority:
        :param $category:
        :returns: array The array of loggers to use for the given priority and category values.
