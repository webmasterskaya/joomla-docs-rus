------------------------------
Joomla\\CMS\\Plugin\\CMSPlugin
------------------------------

.. php:namespace: Joomla\\CMS\\Plugin

.. php:class:: CMSPlugin

    Plugin Class

    .. php:attr:: params

        :type: Registry

        A Registry object holding the parameters for the plugin

    .. php:attr:: _name

        :type: string

        :scope: protected

        The name of the plugin

    .. php:attr:: _type

        :type: string

        :scope: protected

        The plugin type

    .. php:attr:: autoloadLanguage

        :type: boolean

        :scope: protected

        Affects constructor behavior. If true, language files will be loaded
        automatically.

    .. php:method:: __construct($subject, $config = array())

        Constructor

        :param $subject:
        :param $config:

    .. php:method:: loadLanguage($extension = '', $basePath = JPATH_ADMINISTRATOR)

        Loads the plugin language file

        :param $extension:
        :param $basePath:
        :returns: boolean True, if the file has successfully loaded.
