---------------------------
Joomla\\CMS\\Menu\\MenuItem
---------------------------

.. php:namespace: Joomla\\CMS\\Menu

.. php:class:: MenuItem

    Object representing a menu item

    .. php:attr:: id

        :type: integer

        Primary key

    .. php:attr:: menutype

        :type: integer

        The type of menu this item belongs to

    .. php:attr:: title

        :type: string

        The display title of the menu item

    .. php:attr:: alias

        :type: string

        The SEF alias of the menu item

    .. php:attr:: note

        :type: string

        A note associated with the menu item

    .. php:attr:: route

        :type: string

        The computed path of the menu item based on the alias field, this is
        populated from the `path` field in the `#__menu` table

    .. php:attr:: link

        :type: string

        The actual link the menu item refers to

    .. php:attr:: type

        :type: string

        The type of link

    .. php:attr:: level

        :type: integer

        The relative level in the tree

    .. php:attr:: language

        :type: string

        The assigned language for this item

    .. php:attr:: browserNav

        :type: string

        The click behaviour of the link

    .. php:attr:: access

        :type: integer

        The access level required to view the menu item

    .. php:attr:: params

        :type: string|Registry

        :scope: protected

        The menu item parameters

    .. php:attr:: home

        :type: integer

        Indicates if this menu item is the home or default page

    .. php:attr:: img

        :type: string

        The image of the menu item

    .. php:attr:: template_style_id

        :type: integer

        The optional template style applied to this menu item

    .. php:attr:: component_id

        :type: integer

        The extension ID of the component this menu item is for

    .. php:attr:: parent_id

        :type: integer

        The parent menu item in the menu tree

    .. php:attr:: component

        :type: string

        The name of the component this menu item is for

    .. php:attr:: tree

        :type: array

        The tree of parent menu items

    .. php:attr:: query

        :type: array

        An array of the query string values for this item

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

    .. php:method:: __isset($name)

        Method check if a certain otherwise inaccessible properties of the form
        field object is set.

        :param $name:
        :returns: boolean

    .. php:method:: getParams()

        Returns the menu item parameters

        :returns: Registry

    .. php:method:: setParams($params)

        Sets the menu item parameters

        :param $params:
        :returns: void

    .. php:method:: get($property, $default = null)

        Returns a property of the object or the default value if the property is
        not set.

        :param $property:
        :param $default:
        :returns: mixed The value of the property.

    .. php:method:: set($property, $value = null)

        Modifies a property of the object, creating it if it does not already
        exist.

        :param $property:
        :param $value:
        :returns: mixed Previous value of the property.
