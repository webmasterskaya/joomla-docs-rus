-------------------------------
Joomla\\CMS\\Menu\\AbstractMenu
-------------------------------

.. php:namespace: Joomla\\CMS\\Menu

.. php:class:: AbstractMenu

    Menu class

    .. php:attr:: _items

        :type: MenuItem[]

        :scope: protected

        Array to hold the menu items

    .. php:attr:: _default

        :type: integer

        :scope: protected

        Identifier of the default menu item

    .. php:attr:: _active

        :type: integer

        :scope: protected

        Identifier of the active menu item

    .. php:attr:: instances

        :type: AbstractMenu[]

        :scope: protected

        Menu instances container.

    .. php:attr:: user

        :type: \JUser

        :scope: protected

        User object to check access levels for

    .. php:method:: __construct($options = array())

        Class constructor

        :param $options:

    .. php:method:: getInstance($client, $options = array())

        Returns a Menu object

        :param $client:
        :param $options:
        :returns: AbstractMenu A menu object.

    .. php:method:: getItem($id)

        Get menu item by id

        :param $id:
        :returns: MenuItem|null The item object if the ID exists or null if not found

    .. php:method:: setDefault($id, $language = '*')

        Set the default item by id and language code.

        :param $id:
        :param $language:
        :returns: boolean True if a menu item with the given ID exists

    .. php:method:: getDefault($language = '*')

        Get the default item by language code.

        :param $language:
        :returns: MenuItem|null The item object or null when not found for given language

    .. php:method:: setActive($id)

        Set the default item by id

        :param $id:
        :returns: MenuItem|null The menu item representing the given ID if present or null otherwise

    .. php:method:: getActive()

        Get menu item by id.

        :returns: MenuItem|null The item object if an active menu item has been set or null

    .. php:method:: getItems($attributes, $values, $firstonly = false)

        Gets menu items by attribute

        :param $attributes:
        :param $values:
        :param $firstonly:
        :returns: MenuItem|MenuItem[] An array of menu item objects or a single object if the $firstonly parameter is true

    .. php:method:: getParams($id)

        Gets the parameter object for a certain menu item

        :param $id:
        :returns: Registry

    .. php:method:: getMenu()

        Getter for the menu array

        :returns: MenuItem[]

    .. php:method:: authorise($id)

        Method to check Menu object authorization against an access control object
        and optionally an access extension object

        :param $id:
        :returns: boolean

    .. php:method:: load()

        Loads the menu items

        :returns: array
