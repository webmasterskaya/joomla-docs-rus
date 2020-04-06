-----------------------
Joomla\\CMS\\Input\\Cli
-----------------------

.. php:namespace: Joomla\\CMS\\Input

.. php:class:: Cli

    Joomla! Input CLI Class

    .. php:attr:: executable

        :type: string

        The executable that was called to run the CLI script.

    .. php:attr:: args

        :type: array

        The additional arguments passed to the script that are not associated
        with a specific argument name.

    .. php:attr:: inputs

        :type: Input[]

        :scope: protected

        Input objects

    .. php:method:: __construct($source = null, $options = array())

        Constructor.

        :param $source:
        :param $options:

    .. php:method:: serialize()

        Method to serialize the input.

        :returns: string The serialized input.

    .. php:method:: unserialize($input)

        Method to unserialize the input.

        :param $input:
        :returns: Input The input object.

    .. php:method:: parseArguments()

        Initialise the options and arguments

        Not supported: -abc c-value

        :returns: void

    .. php:method:: __get($name)

        Magic method to get an input object

        :param $name:
        :returns: Input The request input object

    .. php:method:: getArray($vars = array(), $datasource = null, $defaultFilter = 'unknown')

        Gets an array of values from the request.

        :param $vars:
        :param $datasource:
        :param $defaultFilter:
        :returns: mixed The filtered input data.

    .. php:method:: getArrayRecursive($vars = array(), $datasource = null, $defaultFilter = 'unknown', $recursion = false)

        Gets an array of values from the request.

        :param $vars:
        :param $datasource:
        :param $defaultFilter:
        :param $recursion:
        :returns: mixed The filtered input data.
