---------------------------------------------
Joomla\\CMS\\Log\\Logger\\FormattedtextLogger
---------------------------------------------

.. php:namespace: Joomla\\CMS\\Log\\Logger

.. php:class:: FormattedtextLogger

    Joomla! Formatted Text File Log class

    This class is designed to use as a base for building formatted text files for output. By default it emulates the Syslog style format output. This is a disk based output format.

    .. php:attr:: format

        :type: string

        :scope: protected

        The format which each entry follows in the log file.

        All fields must be named in all caps and be within curly brackets eg.
        {FOOBAR}.

    .. php:attr:: fields

        :type: array

        :scope: protected

        The parsed fields from the format string.

    .. php:attr:: path

        :type: string

        :scope: protected

        The full filesystem path for the log file.

    .. php:attr:: defer

        :type: boolean

        :scope: protected

        If true, all writes will be deferred as long as possible.
        NOTE: Deferred logs may never be written if the application encounters a
        fatal error.

    .. php:attr:: deferredEntries

        :type: array

        :scope: protected

        If deferring, entries will be stored here prior to writing.

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

    .. php:method:: __destruct()

        If deferred, write all pending logs.

    .. php:method:: addEntry(LogEntry $entry)

        Method to add an entry to the log.

        :type $entry: LogEntry
        :param $entry:
        :returns: void

    .. php:method:: formatLine(LogEntry $entry)

        Format a line for the log file.

        :type $entry: LogEntry
        :param $entry:
        :returns: String

    .. php:method:: generateFileHeader()

        Method to generate the log file header.

        :returns: string The log file header

    .. php:method:: initFile()

        Method to initialise the log file.  This will create the folder path to
        the file if it doesn't already
        exist and also get a new file header if the file doesn't already exist.
        If the file already exists it
        will simply open it for writing.

        :returns: void

    .. php:method:: parseFields()

        Method to parse the format string into an array of fields.

        :returns: void
