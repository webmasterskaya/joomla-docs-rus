----------------------------------
Joomla\\CMS\\Form\\Field\\TagField
----------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: TagField

    List of Tags field.

    .. php:attr:: type

        :type: string

        A flexible tag list that respects access controls

    .. php:attr:: isNested

        :type: boolean

        Flag to work with nested tag field

    .. php:attr:: comParams

        :type: \Joomla\Registry\Registry

        :scope: protected

        com_tags parameters

    .. php:method:: __construct()

        Constructor

    .. php:method:: getInput()

        Method to get the field input for a tag field.

        :returns: string The field input.

    .. php:method:: getOptions()

        Method to get a list of tags

        :returns: array The field option objects.

    .. php:method:: prepareOptionsNested($options)

        Add "-" before nested tags, depending on level

        :param $options:
        :returns: array The field option objects.

    .. php:method:: isNested()

        Determine if the field has to be tagnested

        :returns: boolean

    .. php:method:: allowCustom()

        Determines if the field allows or denies custom values

        :returns: boolean
