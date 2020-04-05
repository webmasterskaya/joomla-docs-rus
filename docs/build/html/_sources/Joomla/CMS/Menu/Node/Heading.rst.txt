--------------------------------
Joomla\\CMS\\Menu\\Node\\Heading
--------------------------------

.. php:namespace: Joomla\\CMS\\Menu\\Node

.. php:class:: Heading

    A Heading type of node for MenuTree

    .. php:attr:: title

        :type: string

        :scope: protected

        Node Title

    .. php:attr:: link

        :type: string

        :scope: protected

        Node Link

    .. php:attr:: icon

        :type: string

        :scope: protected

        Link title icon

    .. php:attr:: id

        :type: string

        :scope: protected

        Node Id

    .. php:attr:: class

        :type: string

        :scope: protected

        CSS Class for node

    .. php:attr:: active

        :type: bool

        :scope: protected

        Whether this node is active

    .. php:attr:: params

        :type: Registry

        :scope: protected

        Additional custom node params

    .. php:attr:: parent

        :type: Node

        :scope: protected

        Parent node object

    .. php:attr:: children

        :type: Node[]

        :scope: protected

        Array of Children node objects

    .. php:method:: __construct($title, $class = null, $id = null, $icon = null)

        Constructor for the class.

        :param $title:
        :param $class:
        :param $id:
        :param $icon:

    .. php:method:: get($name)

        Get an attribute value

        :param $name:
        :returns: mixed

    .. php:method:: addChild(Node $child)

        Add child to this node

        If the child already has a parent, the link is unset

        :type $child: Node
        :param $child:
        :returns: Node The new added child

    .. php:method:: removeChild(Node $child)

        Remove a child from this node

        If the child exists it is unset

        :type $child: Node
        :param $child:
        :returns: void

    .. php:method:: hasParent()

        Test if this node has a parent

        :returns: boolean True if there is a parent

    .. php:method:: getParent()

        Get the parent of this node

        :returns: Node The Node object's parent or null for no parent

    .. php:method:: hasChildren()

        Test if this node has children

        :returns: boolean

    .. php:method:: getChildren()

        Get the children of this node

        :returns: Node[] The children

    .. php:method:: getLevel()

        Find the current node depth in the tree hierarchy

        :returns: integer The node level in the hierarchy, where ROOT == 0, First level menu item == 1, and so on.

    .. php:method:: isRoot()

        Check whether the object instance node is the root node

        :returns: boolean

    .. php:method:: setActive($active)

        Set the active state on or off

        :param $active:
        :returns: void

    .. php:method:: setParams(Registry $params)

        set the params array

        :type $params: Registry
        :param $params:
        :returns: void

    .. php:method:: getParam($key)

        Get the param value from the node params

        :param $key:
        :returns: mixed
