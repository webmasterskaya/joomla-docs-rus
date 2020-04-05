---------------------------------------
Joomla\\CMS\\Form\\Field\\HelpsiteField
---------------------------------------

.. php:namespace: Joomla\\CMS\\Form\\Field

.. php:class:: HelpsiteField

    Form Field class for the Joomla Platform.
    Provides a select list of help sites.

    .. php:attr:: type

        :type: string

        The form field type.

    .. php:method:: getOptions()

        Method to get the help site field options.

        :returns: array The field option objects.

    .. php:method:: getInput()

        Override to add refresh button

        :returns: string The field input markup.
