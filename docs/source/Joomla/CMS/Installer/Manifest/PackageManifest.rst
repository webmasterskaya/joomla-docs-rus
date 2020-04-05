-------------------------------------------------
Joomla\\CMS\\Installer\\Manifest\\PackageManifest
-------------------------------------------------

.. php:namespace: Joomla\\CMS\\Installer\\Manifest

.. php:class:: PackageManifest

    Joomla! Package Manifest File

    .. php:attr:: packagename

        :type: string

        Unique name of the package

    .. php:attr:: url

        :type: string

        Website for the package

    .. php:attr:: scriptfile

        :type: string

        Scriptfile for the package

    .. php:attr:: blockChildUninstall

        :type: boolean

        Flag if the package blocks individual child extensions from being
        uninstalled

    .. php:attr:: manifest_file

        :type: string

        Path to the manifest file

    .. php:attr:: name

        :type: string

        Name of the extension

    .. php:attr:: version

        :type: string

        Version of the extension

    .. php:attr:: description

        :type: string

        Description of the extension

    .. php:attr:: packager

        :type: string

        Packager of the extension

    .. php:attr:: packagerurl

        :type: string

        Packager's URL of the extension

    .. php:attr:: update

        :type: string

        Update site for the extension

    .. php:attr:: filelist

        :type: array

        List of files in the extension

    .. php:method:: loadManifestFromData(SimpleXMLElement $xml)

        Apply manifest data from a \SimpleXMLElement to the object.

        :type $xml: SimpleXMLElement
        :param $xml:
        :returns: void

    .. php:method:: __construct($xmlpath = '')

        Constructor

        :param $xmlpath:

    .. php:method:: loadManifestFromXml($xmlfile)

        Load a manifest from a file

        :param $xmlfile:
        :returns: boolean
