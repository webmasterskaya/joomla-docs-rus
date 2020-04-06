------------------------------------
Joomla\\CMS\\Language\\Multilanguage
------------------------------------

.. php:namespace: Joomla\\CMS\\Language

.. php:class:: Multilanguage

    Utitlity class for multilang

    .. php:method:: isEnabled()

        Method to determine if the language filter plugin is enabled.
        This works for both site and administrator.

        :returns: boolean True if site is supporting multiple languages; false otherwise.

    .. php:method:: getSiteLangs()

        Method to return a list of published site languages.

        :returns: array of language extension objects.

    .. php:method:: getSiteHomePages()

        Method to return a list of language home page menu items.

        :returns: array of menu objects.
