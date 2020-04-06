--------------------
Joomla\\CMS\\Version
--------------------

.. php:namespace: Joomla\\CMS

.. php:class:: Version

    Version information class for the Joomla CMS.

    .. php:const:: PRODUCT

        Product name.

    .. php:const:: MAJOR_VERSION

        Major release version.

    .. php:const:: MINOR_VERSION

        Minor release version.

    .. php:const:: PATCH_VERSION

        Patch release version.

    .. php:const:: EXTRA_VERSION

        Extra release version info.

        This constant when not empty adds an additional identifier to the version string to reflect the development state.
        For example, for 3.8.0 when this is set to 'dev' the version string will be `3.8.0-dev`.

    .. php:const:: RELEASE

        Release version.

    .. php:const:: DEV_LEVEL

        Maintenance version.

    .. php:const:: DEV_STATUS

        Development status.

    .. php:const:: BUILD

        Build number.

    .. php:const:: CODENAME

        Code name.

    .. php:const:: RELDATE

        Release date.

    .. php:const:: RELTIME

        Release time.

    .. php:const:: RELTZ

        Release timezone.

    .. php:const:: COPYRIGHT

        Copyright Notice.

    .. php:const:: URL

        Link text.

    .. php:method:: __get($name)

        Magic getter providing access to constants previously defined as class
        member vars.

        :param $name:
        :returns: mixed A value if the property name is valid.

    .. php:method:: isInDevelopmentState()

        Check if we are in development mode

        :returns: boolean

    .. php:method:: isCompatible($minimum)

        Compares two a "PHP standardized" version number against the current
        Joomla version.

        :param $minimum:
        :returns: boolean True if the version is compatible.

    .. php:method:: getHelpVersion()

        Method to get the help file version.

        :returns: string Version suffix for help files.

    .. php:method:: getShortVersion()

        Gets a "PHP standardized" version string for the current Joomla.

        :returns: string Version string.

    .. php:method:: getLongVersion()

        Gets a version string for the current Joomla with all release information.

        :returns: string Complete version string.

    .. php:method:: getUserAgent($component = null, $mask = false, $add_version = true)

        Returns the user agent.

        :param $component:
        :param $mask:
        :param $add_version:
        :returns: string User Agent.

    .. php:method:: generateMediaVersion()

        Generate a media version string for assets
        Public to allow third party developers to use it

        :returns: string

    .. php:method:: getMediaVersion()

        Gets a media version which is used to append to Joomla core media files.

        This media version is used to append to Joomla core media in order to
        trick browsers into reloading the CSS and JavaScript, because they think
        the files are renewed.
        The media version is renewed after Joomla core update, install,
        discover_install and uninstallation.

        :returns: string The media version.

    .. php:method:: refreshMediaVersion()

        Function to refresh the media version

        :returns: Version Instance of $this to allow chaining.

    .. php:method:: setMediaVersion($mediaVersion)

        Sets the media version which is used to append to Joomla core media files.

        :param $mediaVersion:
        :returns: Version Instance of $this to allow chaining.
