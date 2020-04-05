---------------------------------
Joomla\\CMS\\Installer\\Installer
---------------------------------

.. php:namespace: Joomla\\CMS\\Installer

.. php:class:: Installer

    Joomla base installer class

    .. php:attr:: paths

        :type: array

        :scope: protected

        Array of paths needed by the installer

    .. php:attr:: upgrade

        :type: boolean

        :scope: protected

        True if package is an upgrade

    .. php:attr:: manifestClass

        :type: object

        The manifest trigger class

    .. php:attr:: overwrite

        :type: boolean

        :scope: protected

        True if existing files can be overwritten

    .. php:attr:: stepStack

        :type: array

        :scope: protected

        Stack of installation steps
        - Used for installation rollback

    .. php:attr:: extension

        :type: Extension

        Extension Table Entry

    .. php:attr:: message

        :type: string

        The output from the install/uninstall scripts

    .. php:attr:: manifest

        :type: object

        The installation manifest XML object

    .. php:attr:: extension_message

        :type: string

        :scope: protected

        The extension message that appears

    .. php:attr:: redirect_url

        :type: string

        :scope: protected

        The redirect URL if this extension (can be null if no redirect)

    .. php:attr:: packageUninstall

        :type: boolean

        :scope: protected

        Flag if the uninstall process was triggered by uninstalling a package

    .. php:attr:: instance

        :type: Installer

        :scope: protected

        Installer instance container.

    .. php:attr:: instances

        :type: Installer[]

        :scope: protected

        Installer instances container.

    .. php:method:: __construct($basepath = __DIR__, $classprefix = '\\Joomla\\CMS\\Installer\\Adapter', $adapterfolder = 'Adapter')

        Constructor

        :param $basepath:
        :param $classprefix:
        :param $adapterfolder:

    .. php:method:: getInstance($basepath = __DIR__, $classprefix = '\\Joomla\\CMS\\Installer\\Adapter', $adapterfolder = 'Adapter')

        Returns the global Installer object, only creating it if it doesn't
        already exist.

        :param $basepath:
        :param $classprefix:
        :param $adapterfolder:
        :returns: Installer An installer object

    .. php:method:: isOverwrite()

        Get the allow overwrite switch

        :returns: boolean Allow overwrite switch

    .. php:method:: setOverwrite($state = false)

        Set the allow overwrite switch

        :param $state:
        :returns: boolean True it state is set, false if it is not

    .. php:method:: getRedirectUrl()

        Get the redirect location

        :returns: string Redirect location (or null)

    .. php:method:: setRedirectUrl($newurl)

        Set the redirect location

        :param $newurl:
        :returns: void

    .. php:method:: isPackageUninstall()

        Get whether this installer is uninstalling extensions which are part of a
        package

        :returns: boolean

    .. php:method:: setPackageUninstall($uninstall)

        Set whether this installer is uninstalling extensions which are part of a
        package

        :param $uninstall:
        :returns: void

    .. php:method:: isUpgrade()

        Get the upgrade switch

        :returns: boolean

    .. php:method:: setUpgrade($state = false)

        Set the upgrade switch

        :param $state:
        :returns: boolean True if upgrade, false otherwise

    .. php:method:: getManifest()

        Get the installation manifest object

        :returns: \SimpleXMLElement Manifest object

    .. php:method:: getPath($name, $default = null)

        Get an installer path by name

        :param $name:
        :param $default:
        :returns: string Path

    .. php:method:: setPath($name, $value)

        Sets an installer path by name

        :param $name:
        :param $value:
        :returns: void

    .. php:method:: pushStep($step)

        Pushes a step onto the installer stack for rolling back steps

        :param $step:
        :returns: void

    .. php:method:: abort($msg = null, $type = null)

        Installation abort method

        :param $msg:
        :param $type:
        :returns: boolean True if successful

    .. php:method:: install($path = null)

        Package installation method

        :param $path:
        :returns: boolean True if successful

    .. php:method:: discover_install($eid = null)

        Discovered package installation method

        :param $eid:
        :returns: boolean True if successful

    .. php:method:: discover()

        Extension discover method

        Asks each adapter to find extensions

        :returns: InstallerExtension[]

    .. php:method:: update($path = null)

        Package update method

        :param $path:
        :returns: boolean True if successful

    .. php:method:: uninstall($type, $identifier, $cid = 0)

        Package uninstallation method

        :param $type:
        :param $identifier:
        :param $cid:
        :returns: boolean True if successful

    .. php:method:: refreshManifestCache($eid)

        Refreshes the manifest cache stored in #__extensions

        :param $eid:
        :returns: boolean

    .. php:method:: setupInstall($route = 'install', $returnAdapter = false)

        Prepare for installation: this method sets the installation directory,
        finds
        and checks the installation file and verifies the installation type.

        :param $route:
        :param $returnAdapter:
        :returns: boolean|InstallerAdapter InstallerAdapter object if explicitly requested otherwise boolean

    .. php:method:: parseQueries(SimpleXMLElement $element)

        Backward compatible method to parse through a queries element of the
        installation manifest file and take appropriate action.

        :type $element: SimpleXMLElement
        :param $element:
        :returns: mixed Number of queries processed or False on error

    .. php:method:: parseSQLFiles($element)

        Method to extract the name of a discreet installation sql file from the
        installation manifest file.

        :param $element:
        :returns: mixed Number of queries processed or False on error

    .. php:method:: setSchemaVersion(SimpleXMLElement $schema, $eid)

        Set the schema version for an extension by looking at its latest update

        :type $schema: SimpleXMLElement
        :param $schema:
        :param $eid:
        :returns: void

    .. php:method:: parseSchemaUpdates(SimpleXMLElement $schema, $eid)

        Method to process the updates for an item

        :type $schema: SimpleXMLElement
        :param $schema:
        :param $eid:
        :returns: boolean Result of the operations

    .. php:method:: parseFiles(SimpleXMLElement $element, $cid = 0, $oldFiles = null, $oldMD5 = null)

        Method to parse through a files element of the installation manifest and
        take appropriate
        action.

        :type $element: SimpleXMLElement
        :param $element:
        :param $cid:
        :param $oldFiles:
        :param $oldMD5:
        :returns: boolean True on success

    .. php:method:: parseLanguages(SimpleXMLElement $element, $cid = 0)

        Method to parse through a languages element of the installation manifest
        and take appropriate
        action.

        :type $element: SimpleXMLElement
        :param $element:
        :param $cid:
        :returns: boolean True on success

    .. php:method:: parseMedia(SimpleXMLElement $element, $cid = 0)

        Method to parse through a media element of the installation manifest and
        take appropriate
        action.

        :type $element: SimpleXMLElement
        :param $element:
        :param $cid:
        :returns: boolean True on success

    .. php:method:: getParams()

        Method to parse the parameters of an extension, build the JSON string for
        its default parameters, and return the JSON string.

        :returns: string JSON string of parameter values

    .. php:method:: copyFiles($files, $overwrite = null)

        Copyfiles

        Copy files from source directory to the target directory

        :param $files:
        :param $overwrite:
        :returns: boolean True on success

    .. php:method:: removeFiles($element, $cid = 0)

        Method to parse through a files element of the installation manifest and
        remove
        the files that were installed

        :param $element:
        :param $cid:
        :returns: boolean True on success

    .. php:method:: copyManifest($cid = 1)

        Copies the installation manifest file to the extension folder in the given
        client

        :param $cid:
        :returns: boolean True on success, False on error

    .. php:method:: findManifest()

        Tries to find the package manifest file

        :returns: boolean True on success, False on error

    .. php:method:: isManifest($file)

        Is the XML file a valid Joomla installation manifest file.

        :param $file:
        :returns: \SimpleXMLElement|null A \SimpleXMLElement, or null if the file failed to parse

    .. php:method:: generateManifestCache()

        Generates a manifest cache

        :returns: string serialised manifest data

    .. php:method:: cleanDiscoveredExtension($type, $element, $folder = '', $client = 0)

        Cleans up discovered extensions if they're being installed some other way

        :param $type:
        :param $element:
        :param $folder:
        :param $client:
        :returns: object Result of query

    .. php:method:: findDeletedFiles($old_files, $new_files)

        Compares two "files" entries to find deleted files/folders

        :param $old_files:
        :param $new_files:
        :returns: array An array with the delete files and folders in findDeletedFiles[files] and findDeletedFiles[folders] respectively

    .. php:method:: loadMD5Sum($filename)

        Loads an MD5SUMS file into an associative array

        :param $filename:
        :returns: array Associative array with filenames as the index and the MD5 as the value

    .. php:method:: parseXMLInstallFile($path)

        Parse a XML install manifest file.

        XML Root tag should be 'install' except for languages which use meta file.

        :param $path:
        :returns: array XML metadata.

    .. php:method:: getAdapter($name, $options = array())

        Fetches an adapter and adds it to the internal storage if an instance is
        not set
        while also ensuring its a valid adapter name

        :param $name:
        :param $options:
        :returns: InstallerAdapter

    .. php:method:: getAdapters($options = array(), $custom = array())

        Gets a list of available install adapters.

        :param $options:
        :param $custom:
        :returns: array An array of available install adapters.

    .. php:method:: loadAdapter($adapter, $options = array())

        Method to load an adapter instance

        :param $adapter:
        :param $options:
        :returns: InstallerAdapter

    .. php:method:: loadAllAdapters($options = array())

        Loads all adapters.

        :param $options:
        :returns: void
