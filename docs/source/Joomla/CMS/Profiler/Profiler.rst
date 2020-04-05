-------------------------------
Joomla\\CMS\\Profiler\\Profiler
-------------------------------

.. php:namespace: Joomla\\CMS\\Profiler

.. php:class:: Profiler

    Utility class to assist in the process of benchmarking the execution
    of sections of code to understand where time is being spent.

    .. php:attr:: start

        :type: integer

        :scope: protected

    .. php:attr:: prefix

        :type: string

        :scope: protected

    .. php:attr:: buffer

        :type: array

        :scope: protected

    .. php:attr:: marks

        :type: array

        :scope: protected

    .. php:attr:: previousTime

        :type: float

        :scope: protected

    .. php:attr:: previousMem

        :type: float

        :scope: protected

    .. php:attr:: instances

        :type: array

        :scope: protected

    .. php:method:: __construct($prefix = '')

        Constructor

        :param $prefix:

    .. php:method:: getInstance($prefix = '')

        Returns the global Profiler object, only creating it
        if it doesn't already exist.

        :param $prefix:
        :returns: Profiler The Profiler object.

    .. php:method:: mark($label)

        Output a time mark

        :param $label:
        :returns: string

    .. php:method:: getmicrotime()

        Get the current time.

        :returns: float The current time

    .. php:method:: getMemory()

        Get information about current memory usage.

        :returns: integer The memory usage

    .. php:method:: getMarks()

        Get all profiler marks.

        Returns an array of all marks created since the Profiler object was
        instantiated.  Marks are objects as per {@link JProfiler::mark()}.

        :returns: array Array of profiler marks

    .. php:method:: getBuffer()

        Get all profiler mark buffers.

        Returns an array of all mark buffers created since the Profiler object was
        instantiated.  Marks are strings as per {@link Profiler::mark()}.

        :returns: array Array of profiler marks

    .. php:method:: setStart($startTime = 0.0, $startMem = 0)

        Sets the start time.

        :param $startTime:
        :param $startMem:
        :returns: $this For chaining
