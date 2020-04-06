----------------------------------
Joomla\\CMS\\Helper\\LibraryHelper
----------------------------------

.. php:namespace: Joomla\\CMS\\Helper

.. php:class:: LibraryHelper

    Library helper class

    .. php:attr:: libraries

        :type: array

        :scope: protected

        The component list cache

    .. php:method:: getLibrary($element, $strict = false)

        Get the library information.

        :param $element:
        :param $strict:
        :returns: \stdClass An object with the library's information.

    .. php:method:: isEnabled($element)

        Checks if a library is enabled

        :param $element:
        :returns: boolean

    .. php:method:: getParams($element, $strict = false)

        Gets the parameter object for the library

        :param $element:
        :param $strict:
        :returns: Registry A Registry object.

    .. php:method:: saveParams($element, $params)

        Save the parameters object for the library

        :param $element:
        :param $params:
        :returns: Registry A Registry object.

    .. php:method:: _load($element)

        Load the installed library into the libraries property.

        :param $element:
        :returns: boolean True on success

    .. php:method:: loadLibrary($element)

        Load the installed library into the libraries property.

        :param $element:
        :returns: boolean True on success
