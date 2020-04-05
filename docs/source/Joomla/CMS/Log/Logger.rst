------------------------
Joomla\\CMS\\Log\\Logger
------------------------

.. php:namespace: Joomla\\CMS\\Log

.. php:class:: Logger

    Joomla! Logger Base Class

    This class is used to be the basis of logger classes to allow for defined functions to exist regardless of the child class.

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
