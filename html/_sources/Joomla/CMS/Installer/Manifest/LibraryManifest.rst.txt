-------------------------------------------------
Joomla\\CMS\\Installer\\Manifest\\LibraryManifest
-------------------------------------------------

.. php:namespace: Joomla\\CMS\\Installer\\Manifest

.. php:class:: LibraryManifest

    Joomla! Library Manifest File

    .. php:attr:: libraryname

        :type: string

        File system name of the library

    .. php:attr:: creationDate

        :type: string

        Creation Date of the library

    .. php:attr:: copyright

        :type: string

        Copyright notice for the library

    .. php:attr:: license

        :type: string

        License for the library

    .. php:attr:: author

        :type: string

        Author for the library

    .. php:attr:: authoremail

        :type: string

        Author email for the library

    .. php:attr:: authorurl

        :type: string

        Author URL for the library

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
