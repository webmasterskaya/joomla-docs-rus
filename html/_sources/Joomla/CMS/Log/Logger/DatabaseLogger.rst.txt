----------------------------------------
Joomla\\CMS\\Log\\Logger\\DatabaseLogger
----------------------------------------

.. php:namespace: Joomla\\CMS\\Log\\Logger

.. php:class:: DatabaseLogger

    Joomla! MySQL Database Log class

    This class is designed to output logs to a specific MySQL database table. Fields in this table are based on the Syslog style of log output. This is designed to allow quick and easy searching.

    .. php:attr:: driver

        :type: string

        :scope: protected

        The name of the database driver to use for connecting to the database.

    .. php:attr:: host

        :type: string

        :scope: protected

        The host name (or IP) of the server with which to connect for the logger.

    .. php:attr:: user

        :type: string

        :scope: protected

        The database server user to connect as for the logger.

    .. php:attr:: password

        :type: string

        :scope: protected

        The password to use for connecting to the database server.

    .. php:attr:: database

        :type: string

        :scope: protected

        The name of the database table to use for the logger.

    .. php:attr:: table

        :type: string

        :scope: protected

        The database table to use for logging entries.

    .. php:attr:: db

        :type: \JDatabaseDriver

        :scope: protected

        The database driver object for the logger.

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

    .. php:method:: connect()

        Method to connect to the database server based on object properties.

        :returns: void
