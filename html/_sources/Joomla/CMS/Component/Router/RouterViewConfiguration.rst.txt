-------------------------------------------------------
Joomla\\CMS\\Component\\Router\\RouterViewConfiguration
-------------------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router

.. php:class:: RouterViewConfiguration

    View-configuration class for the view-based component router

    .. php:attr:: name

        :type: string

        Name of the view

    .. php:attr:: key

        :type: string

        Key of the view

    .. php:attr:: parent

        :type: RouterViewconfiguration

        Parentview of this one

    .. php:attr:: parent_key

        :type: string

        Key of the parent view

    .. php:attr:: nestable

        :type: bool

        Is this view nestable?

    .. php:attr:: layouts

        :type: array

        Layouts that are supported by this view

    .. php:attr:: children

        :type: RouterViewconfiguration[]

        Child-views of this view

    .. php:attr:: child_keys

        :type: array

        Keys used for this parent view by the child views

    .. php:attr:: path

        :type: array

        Path of views from this one to the root view

    .. php:method:: __construct($name)

        Constructor for the View-configuration class

        :param $name:

    .. php:method:: setName($name)

        Set the name of the view

        :param $name:
        :returns: RouterViewconfiguration This object for chaining

    .. php:method:: setKey($key)

        Set the key-identifier for the view

        :param $key:
        :returns: RouterViewconfiguration This object for chaining

    .. php:method:: setParent(RouterViewconfiguration $parent, $parent_key = false)

        Set the parent view of this view

        :type $parent: RouterViewconfiguration
        :param $parent:
        :param $parent_key:
        :returns: RouterViewconfiguration This object for chaining

    .. php:method:: setNestable($isNestable = true)

        Set if this view is nestable or not

        :param $isNestable:
        :returns: RouterViewconfiguration This object for chaining

    .. php:method:: addLayout($layout)

        Add a layout to this view

        :param $layout:
        :returns: RouterViewconfiguration This object for chaining

    .. php:method:: removeLayout($layout)

        Remove a layout from this view

        :param $layout:
        :returns: RouterViewconfiguration This object for chaining
