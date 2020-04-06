-----------------------------
Joomla\\CMS\\Menu\\MenuHelper
-----------------------------

.. php:namespace: Joomla\\CMS\\Menu

.. php:class:: MenuHelper

    Menu Helper utility

    .. php:attr:: presets

        :type: array

        :scope: protected

        List of preset include paths

    .. php:method:: __construct()

        Private constructor

    .. php:method:: addPreset($name, $title, $path, $replace = true)

        Add a custom preset externally via plugin or any other means.
        WARNING: Presets with same name will replace previously added preset
        *except* Joomla's default preset (joomla)

        :param $name:
        :param $title:
        :param $path:
        :param $replace:
        :returns: void

    .. php:method:: getPresets()

        Get a list of available presets.

        :returns: \stdClass[]

    .. php:method:: loadPreset($name, $fallback = true)

        Load the menu items from a preset file into a hierarchical list of objects

        :param $name:
        :param $fallback:
        :returns: \stdClass[]

    .. php:method:: resolveAlias($item)

        Method to resolve the menu item alias type menu item

        :param $item:
        :returns: void

    .. php:method:: createLevels($menuItems)

        Parse the flat list of menu items and prepare the hierarchy of them using
        parent-child relationship.

        :param $menuItems:
        :returns: \stdClass[]

    .. php:method:: loadXml($elements, $items, $replace = array())

        Load a menu tree from an XML file

        :param $elements:
        :param $items:
        :param $replace:
        :returns: void

    .. php:method:: parseXmlNode($node, $replace = array())

        Create a menu item node from an xml element

        :param $node:
        :param $replace:
        :returns: \stdClass
