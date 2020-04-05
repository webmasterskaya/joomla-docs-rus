-------------------------
Joomla\\CMS\\Input\\Files
-------------------------

.. php:namespace: Joomla\\CMS\\Input

.. php:class:: Files

    Joomla! Input Files Class

    .. php:attr:: decodedData

        :type: array

        :scope: protected

        The pivoted data from a $_FILES or compatible array.

    .. php:attr:: inputs

        :type: Input[]

        :scope: protected

        Input objects

    .. php:method:: __construct($source = null, $options = array())

        The class constructor.

        :param $source:
        :param $options:

    .. php:method:: get($name, $default = null, $filter = 'cmd')

        Gets a value from the input data.

        :param $name:
        :param $default:
        :param $filter:
        :returns: mixed The filtered input value.

    .. php:method:: decodeData($data)

        Method to decode a data array.

        :param $data:
        :returns: array

    .. php:method:: set($name, $value)

        Sets a value.

        :param $name:
        :param $value:
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

    .. php:method:: unserialize($input)

        Method to unserialize the input.

        :param $input:
        :returns: Input The input object.
