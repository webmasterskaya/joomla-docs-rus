-------------------------
Joomla\\CMS\\Input\\Input
-------------------------

.. php:namespace: Joomla\\CMS\\Input

.. php:class:: Input

    Joomla! Input Base Class

    This is an abstracted input class used to manage retrieving data from the application environment.

    .. php:attr:: inputs

        :type: Input[]

        :scope: protected

        Input objects

    .. php:method:: __construct($source = null, $options = array())

        Constructor.

        :param $source:
        :param $options:

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

    .. php:method:: unserialize($input)

        Method to unserialize the input.

        :param $input:
        :returns: Input The input object.
