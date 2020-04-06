------------------------------------------
Joomla\\CMS\\Installer\\InstallerExtension
------------------------------------------

.. php:namespace: Joomla\\CMS\\Installer

.. php:class:: InstallerExtension

    Extension object

    .. php:attr:: filename

        :type: string

        Filename of the extension

    .. php:attr:: type

        :type: string

        Type of the extension

    .. php:attr:: id

        :type: string

        Unique Identifier for the extension

    .. php:attr:: published

        :type: boolean

        The status of the extension

    .. php:attr:: client

        :type: string

        String representation of client. Valid for modules, templates and
        languages.
        Set by default to site.

    .. php:attr:: group

        :type: string

        The group name of the plugin. Not used for other known extension types
        (only plugins)

    .. php:attr:: manifest_cache

        :type: object

        An object representation of the manifest file stored metadata

    .. php:attr:: params

        :type: object

        An object representation of the extension params

    .. php:method:: __construct(SimpleXMLElement $element = null)

        Constructor

        :type $element: SimpleXMLElement
        :param $element:
