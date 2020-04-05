---------------------------------
Joomla\\CMS\\Environment\\Browser
---------------------------------

.. php:namespace: Joomla\\CMS\\Environment

.. php:class:: Browser

    Browser class, provides capability information about the current web client.

    Browser identification is performed by examining the HTTP_USER_AGENT environment variable provided by the web server.

    This class has many influences from the lib/Browser.php code in version 3 of Horde by Chuck Hagenbuch and Jon Parise.

    .. php:attr:: majorVersion

        :type: integer

        :scope: protected

    .. php:attr:: minorVersion

        :type: integer

        :scope: protected

    .. php:attr:: browser

        :type: string

        :scope: protected

    .. php:attr:: agent

        :type: string

        :scope: protected

    .. php:attr:: lowerAgent

        :type: string

        :scope: protected

    .. php:attr:: accept

        :type: string

        :scope: protected

    .. php:attr:: acceptParsed

        :type: array

        :scope: protected

    .. php:attr:: platform

        :type: string

        :scope: protected

    .. php:attr:: robots

        :type: array

        :scope: protected

    .. php:attr:: mobile

        :type: boolean

        :scope: protected

    .. php:attr:: images

        :type: array

        :scope: protected

        List of viewable image MIME subtypes.
        This list of viewable images works for IE and Netscape/Mozilla.

    .. php:attr:: instances

        :type: array

        :scope: protected

    .. php:method:: __construct($userAgent = null, $accept = null)

        Create a browser instance (constructor).

        :param $userAgent:
        :param $accept:

    .. php:method:: getInstance($userAgent = null, $accept = null)

        Returns the global Browser object, only creating it
        if it doesn't already exist.

        :param $userAgent:
        :param $accept:
        :returns: Browser The Browser object.

    .. php:method:: match($userAgent = null, $accept = null)

        Parses the user agent string and inititializes the object with
        all the known features and quirks for the given browser.

        :param $userAgent:
        :param $accept:
        :returns: void

    .. php:method:: _setPlatform()

        Match the platform of the browser.

        This is a pretty simplistic implementation, but it's intended to let us
        tell what line breaks to send, so it's good enough for its purpose.

        :returns: void

    .. php:method:: getPlatform()

        Return the currently matched platform.

        :returns: string The user's platform.

    .. php:method:: identifyBrowserVersion()

        Set browser version, not by engine version
        Fallback to use when no other method identify the engine version

        :returns: void

    .. php:method:: setBrowser($browser)

        Sets the current browser.

        :param $browser:
        :returns: void

    .. php:method:: getBrowser()

        Retrieve the current browser.

        :returns: string The current browser.

    .. php:method:: getMajor()

        Retrieve the current browser's major version.

        :returns: integer The current browser's major version

    .. php:method:: getMinor()

        Retrieve the current browser's minor version.

        :returns: integer The current browser's minor version.

    .. php:method:: getVersion()

        Retrieve the current browser's version.

        :returns: string The current browser's version.

    .. php:method:: getAgentString()

        Return the full browser agent string.

        :returns: string The browser agent string

    .. php:method:: getHTTPProtocol()

        Returns the server protocol in use on the current server.

        :returns: string The HTTP server protocol version.

    .. php:method:: isViewable($mimetype)

        Determines if a browser can display a given MIME type.

        Note that  image/jpeg and image/pjpeg *appear* to be the same entity, but
        Mozilla doesn't seem to want to accept the latter.
        For our purposes, we will treat them the same.

        :param $mimetype:
        :returns: boolean True if the browser can display the MIME type.

    .. php:method:: isBrowser($browser)

        Determine if the given browser is the same as the current.

        :param $browser:
        :returns: boolean Is the given browser the same as the current?

    .. php:method:: isRobot()

        Determines if the browser is a robot or not.

        :returns: boolean True if browser is a known robot.

    .. php:method:: isMobile()

        Determines if the browser is mobile version or not.

        :returns: boolean True if browser is a known mobile version.

    .. php:method:: isSSLConnection()

        Determine if we are using a secure (SSL) connection.

        :returns: boolean True if using SSL, false if not.
