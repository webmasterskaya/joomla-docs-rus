---------------------------------------
Joomla\\CMS\\Form\\Field\\LimitboxField
---------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: LimitboxField

    Field to load a list of posible item count limits

    .. php:attr:: type

        :type: string

        The form field type.

    .. php:attr:: options

        :type: array

        :scope: protected

        Cached array of the category items.

    .. php:attr:: defaultLimits

        :type: array

        :scope: protected

        Default options

    .. php:method:: getOptions()

        Method to get the options to populate to populate list

        :returns: array The field option objects.
