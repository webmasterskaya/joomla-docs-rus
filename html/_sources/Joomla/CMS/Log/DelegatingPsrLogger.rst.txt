-------------------------------------
Joomla\\CMS\\Log\\DelegatingPsrLogger
-------------------------------------

.. php:namespace: Joomla\\CMS\\Log

.. php:class:: DelegatingPsrLogger

    Delegating logger which delegates log messages received from the PSR-3 interface to the Joomla! Log object.

    .. php:attr:: logger

        :type: Log

        :scope: protected

        The Log instance to delegate messages to.

    .. php:attr:: priorityMap

        :type: array

        :scope: protected

        Mapping array to map a PSR-3 level to a Joomla priority.

    .. php:method:: __construct(Log $logger)

        Constructor.

        :type $logger: Log
        :param $logger:

    .. php:method:: log($level, $message, $context = array())

        Logs with an arbitrary level.

        :param $level:
        :param $message:
        :param $context:
        :returns: void
