------------------------------------------------
Joomla\\CMS\\Installer\\Adapter\\TemplateAdapter
------------------------------------------------

.. php:namespace: Joomla\\CMS\\Installer\\Adapter

.. php:class:: TemplateAdapter

    Template installer

    .. php:attr:: clientId

        :type: integer

        :scope: protected

        The install client ID

    .. php:attr:: currentExtensionId

        :type: integer

        :scope: protected

        ID for the currently installed extension if present

    .. php:attr:: element

        :type: string

        :scope: protected

        The unique identifier for the extension (e.g. mod_login)

    .. php:attr:: extension

        :type: Extension

        :scope: protected

        Extension object.

    .. php:attr:: extensionMessage

        :type: string

        :scope: protected

        Messages rendered by custom scripts

    .. php:attr:: manifest

        :type: string

        Copy of the XML manifest file.

        Making this object public allows extensions to customize the manifest in
        custom scripts.

    .. php:attr:: manifest_script

        :type: string

        :scope: protected

        A path to the PHP file that the scriptfile declaration in the manifest
        refers to.

    .. php:attr:: name

        :type: string

        :scope: protected

        Name of the extension

    .. php:attr:: route

        :type: string

        :scope: protected

        Install function routing

    .. php:attr:: supportsDiscoverInstall

        :type: boolean

        :scope: protected

        Flag if the adapter supports discover installs

        Adapters should override this and set to false if discover install is
        unsupported

    .. php:attr:: type

        :type: string

        :scope: protected

        The type of adapter in use

    .. php:method:: checkExistingExtension()

        Method to check if the extension is already present in the database

        :returns: void

    .. php:method:: copyBaseFiles()

        Method to copy the extension's base files from the `<files>` tag(s) and
        the manifest file

        :returns: void

    .. php:method:: finaliseInstall()

        Method to finalise the installation processing

        :returns: void

    .. php:method:: loadLanguage($path = null)

        Custom loadLanguage method

        :param $path:
        :returns: InstallerTemplate

    .. php:method:: parseOptionalTags()

        Method to parse optional tags in the manifest

        :returns: void

    .. php:method:: parseQueries()

        Overloaded method to parse queries for template installations

        :returns: void

    .. php:method:: prepareDiscoverInstall()

        Prepares the adapter for a discover_install task

        :returns: void

    .. php:method:: setupInstallPaths()

        Method to do any prechecks and setup the install paths for the extension

        :returns: void

    .. php:method:: storeExtension()

        Method to store the extension to the database

        :returns: void

    .. php:method:: uninstall($id)

        Custom uninstall method

        :param $id:
        :returns: boolean True on success

    .. php:method:: discover()

        Discover existing but uninstalled templates

        :returns: array Extension list

    .. php:method:: refreshManifestCache()

        Refreshes the extension table cache

        :returns: boolean Result of operation, true if updated, false on failure

    .. php:method:: __construct(Installer $parent, JDatabaseDriver $db, $options = array())

        Constructor

        :type $parent: Installer
        :param $parent:
        :type $db: JDatabaseDriver
        :param $db:
        :param $options:

    .. php:method:: canUninstallPackageChild($packageId)

        Check if a package extension allows its child extensions to be uninstalled
        individually

        :param $packageId:
        :returns: boolean

    .. php:method:: checkExtensionInFilesystem()

        Method to check if the extension is present in the filesystem, flags the
        route as update if so

        :returns: void

    .. php:method:: createExtensionRoot()

        Method to create the extension root path if necessary

        :returns: void

    .. php:method:: discover_install()

        Generic discover_install method for extensions

        :returns: boolean True on success

    .. php:method:: doDatabaseTransactions()

        Method to handle database transactions for the installer

        :returns: boolean True on success

    .. php:method:: doLoadLanguage($extension, $source, $base = JPATH_ADMINISTRATOR)

        Load language files

        :param $extension:
        :param $source:
        :param $base:
        :returns: void

    .. php:method:: getDiscoverInstallSupported()

        Checks if the adapter supports discover_install

        :returns: boolean

    .. php:method:: getElement($element = null)

        Get the filtered extension element from the manifest

        :param $element:
        :returns: string The filtered element

    .. php:method:: getManifest()

        Get the manifest object.

        :returns: \SimpleXMLElement Manifest object

    .. php:method:: getName()

        Get the filtered component name from the manifest

        :returns: string The filtered name

    .. php:method:: getRoute()

        Get the install route being followed

        :returns: string The install route

    .. php:method:: getScriptClassName()

        Get the class name for the install adapter script.

        :returns: string The class name.

    .. php:method:: install()

        Generic install method for extensions

        :returns: boolean|integer The extension ID on success, boolean false on failure

    .. php:method:: setManifest($manifest)

        Set the manifest object.

        :param $manifest:
        :returns: InstallerAdapter Instance of this class to support chaining

    .. php:method:: setRoute($route)

        Set the install route being followed

        :param $route:
        :returns: InstallerAdapter Instance of this class to support chaining

    .. php:method:: setupScriptfile()

        Setup the manifest script file for those adapters that use it.

        :returns: void

    .. php:method:: setupUpdates()

        Method to setup the update routine for the adapter

        :returns: void

    .. php:method:: triggerManifestScript($method)

        Executes a custom install script method

        :param $method:
        :returns: boolean True on success

    .. php:method:: update()

        Generic update method for extensions

        :returns: boolean|integer The extension ID on success, boolean false on failure
