-----------------------
Joomla\\CMS\\Menu\\Tree
-----------------------

.. php:namespace: Joomla\\CMS\\Menu

.. php:class:: Tree

    Menu Tree class to represent a menu tree hierarchy

    .. php:attr:: root

        :type: Node

        :scope: protected

        The root menu node

    .. php:attr:: current

        :type: Node

        :scope: protected

        The current working menu node

    .. php:attr:: css

        :type: string[]

        :scope: protected

        The CSS style array

    .. php:method:: __construct()

        Constructor

    .. php:method:: getRoot()

        Get the root node

        :returns: Node

    .. php:method:: getCurrent()

        Get the current node

        :returns: Node

    .. php:method:: setCurrent($node)

        Get the current node

        :param $node:
        :returns: void

    .. php:method:: getParent($setCurrent = true)

        Method to get the parent and set it as active optionally

        :param $setCurrent:
        :returns: Node

    .. php:method:: reset($clear = false)

        Method to reset the working pointer to the root node and optionally clear
        all menu nodes

        :param $clear:
        :returns: Node The root node

    .. php:method:: addChild(Node $node, $setCurrent = false)

        Method to add a child

        :type $node: Node
        :param $node:
        :param $setCurrent:
        :returns: Node The newly added node

    .. php:method:: getIconClass()

        Method to get the CSS class name for an icon identifier or create one if
        a custom image path is passed as the identifier

        :returns: string CSS class name

    .. php:method:: getCss()

        Get the CSS declarations for this tree

        :returns: string[]
