---------------------------------------
Joomla\\CMS\\Component\\ComponentRecord
---------------------------------------

.. php:namespace: Joomla\\CMS\\Component

.. php:class:: ComponentRecord

    Object representing a component extension record

    .. php:attr:: id

        :type: integer

        Primary key

    .. php:attr:: option

        :type: integer

        The component name

    .. php:attr:: params

        :type: string|Registry

        :scope: protected

        The component parameters

    .. php:attr:: enabled

        :type: integer

        Indicates if this component is enabled

    .. php:method:: __construct($data = array())

        Class constructor

        :param $data:

    .. php:method:: __get($name)

        Method to get certain otherwise inaccessible properties from the form
        field object.

        :param $name:
        :returns: mixed The property value or null.

    .. php:method:: __set($name, $value)

        Method to set certain otherwise inaccessible properties of the form field
        object.

        :param $name:
        :param $value:
        :returns: void

    .. php:method:: getParams()

        Returns the menu item parameters

        :returns: Registry

    .. php:method:: setParams($params)

        Sets the menu item parameters

        :param $params:
        :returns: void
