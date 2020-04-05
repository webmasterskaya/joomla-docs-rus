----------------------------------------
Joomla\\CMS\\Application\\WebApplication
----------------------------------------

.. php:namespace: Joomla\\CMS\\Application

.. php:class:: WebApplication

    Base class for a Joomla! Web application.

    .. php:attr:: charSet

        :type: string

    .. php:attr:: mimeType

        :type: string

    .. php:attr:: modifiedDate

        :type: \JDate

    .. php:attr:: client

        :type: \JApplicationWebClient

    .. php:attr:: document

        :type: \JDocument

        :scope: protected

    .. php:attr:: language

        :type: \JLanguage

        :scope: protected

    .. php:attr:: session

        :type: \JSession

        :scope: protected

    .. php:attr:: response

        :type: object

        :scope: protected

    .. php:attr:: instance

        :type: WebApplication

        :scope: protected

    .. php:attr:: dispatcher

        :type: \JEventDispatcher

        :scope: protected

        The application dispatcher object.

    .. php:attr:: identity

        :type: \JUser

        :scope: protected

        The application identity object.

    .. php:method:: __construct(Input $input = null, Registry $config = null, JApplicationWebClient $client = null)

        Class constructor.

        :type $input: Input
        :param $input:
        :type $config: Registry
        :param $config:
        :type $client: JApplicationWebClient
        :param $client:

    .. php:method:: getInstance($name = null)

        Returns a reference to the global WebApplication object, only creating it
        if it doesn't already exist.

        This method must be invoked as: $web = WebApplication::getInstance();

        :param $name:
        :returns: WebApplication

    .. php:method:: initialise($session = null, $document = null, $language = null, $dispatcher = null)

        Initialise the application.

        :param $session:
        :param $document:
        :param $language:
        :param $dispatcher:
        :returns: WebApplication Instance of $this to allow chaining.

    .. php:method:: execute()

        Execute the application.

        :returns: void

    .. php:method:: render()

        Rendering is the process of pushing the document buffers into the template
        placeholders, retrieving data from the document and pushing it into
        the application response buffer.

        :returns: void

    .. php:method:: compress()

        Checks the accept encoding of the browser and compresses the data before
        sending it to the client if possible.

        :returns: void

    .. php:method:: respond()

        Method to send the application response to the client.  All headers will
        be sent prior to the main
        application output data.

        :returns: void

    .. php:method:: redirect($url, $status = 303)

        Redirect to another URL.

        If the headers have not been sent the redirect will be accomplished using
        a "301 Moved Permanently"
        or "303 See Other" code in the header pointing to the new location. If the
        headers have already been sent this will be accomplished using a
        JavaScript statement.

        :param $url:
        :param $status:
        :returns: void

    .. php:method:: isRedirectState($state)

        Checks if a state is a redirect state

        :param $state:
        :returns: boolean

    .. php:method:: loadConfiguration($data)

        Load an object or array into the application configuration object.

        :param $data:
        :returns: WebApplication Instance of $this to allow chaining.

    .. php:method:: allowCache($allow = null)

        Set/get cachable state for the response.  If $allow is set, sets the
        cachable state of the
        response.  Always returns the current state.

        :param $allow:
        :returns: boolean

    .. php:method:: setHeader($name, $value, $replace = false)

        Method to set a response header.  If the replace flag is set then all
        headers
        with the given name will be replaced by the new one.  The headers are
        stored
        in an internal array to be sent when the site is sent to the browser.

        :param $name:
        :param $value:
        :param $replace:
        :returns: WebApplication Instance of $this to allow chaining.

    .. php:method:: getHeaders()

        Method to get the array of response headers to be sent when the response
        is sent
        to the client.

        :returns: array *

    .. php:method:: clearHeaders()

        Method to clear any set response headers.

        :returns: WebApplication Instance of $this to allow chaining.

    .. php:method:: sendHeaders()

        Send the response headers.

        :returns: WebApplication Instance of $this to allow chaining.

    .. php:method:: getHttpStatusValue($value)

        Check if a given value can be successfully mapped to a valid http status
        value

        :param $value:
        :returns: string

    .. php:method:: setBody($content)

        Set body content.  If body content already defined, this will replace it.

        :param $content:
        :returns: WebApplication Instance of $this to allow chaining.

    .. php:method:: prependBody($content)

        Prepend content to the body content

        :param $content:
        :returns: WebApplication Instance of $this to allow chaining.

    .. php:method:: appendBody($content)

        Append content to the body content

        :param $content:
        :returns: WebApplication Instance of $this to allow chaining.

    .. php:method:: getBody($asArray = false)

        Return the body content

        :param $asArray:
        :returns: mixed The response body either as an array or concatenated string.

    .. php:method:: getDocument()

        Method to get the application document object.

        :returns: \JDocument The document object

    .. php:method:: getLanguage()

        Method to get the application language object.

        :returns: \JLanguage The language object

    .. php:method:: getSession()

        Method to get the application session object.

        :returns: \JSession The session object

    .. php:method:: checkConnectionAlive()

        Method to check the current client connection status to ensure that it is
        alive.  We are
        wrapping this to isolate the connection_status() function from our code
        base for testing reasons.

        :returns: boolean True if the connection is valid and normal.

    .. php:method:: checkHeadersSent()

        Method to check to see if headers have already been sent.  We are wrapping
        this to isolate the
        headers_sent() function from our code base for testing reasons.

        :returns: boolean True if the headers have already been sent.

    .. php:method:: detectRequestUri()

        Method to detect the requested URI from server environment variables.

        :returns: string The requested URI

    .. php:method:: fetchConfigurationData($file = '', $class = '\JConfig')

        Method to load a PHP configuration class file based on convention and
        return the instantiated data object.  You
        will extend this method in child classes to provide configuration data
        from whatever data source is relevant
        for your specific application.

        :param $file:
        :param $class:
        :returns: mixed Either an array or object to be loaded into the configuration object.

    .. php:method:: flushAssets()

        Flush the media version to refresh versionable assets

        :returns: void

    .. php:method:: header($string, $replace = true, $code = null)

        Method to send a header to the client.  We are wrapping this to isolate
        the header() function
        from our code base for testing reasons.

        :param $string:
        :param $replace:
        :param $code:
        :returns: void

    .. php:method:: isSSLConnection()

        Determine if we are using a secure (SSL) connection.

        :returns: boolean True if using SSL, false if not.

    .. php:method:: loadDocument(JDocument $document = null)

        Allows the application to load a custom or default document.

        The logic and options for creating this object are adequately generic for
        default cases but for many applications it will make sense to override
        this method and create a document,
        if required, based on more specific needs.

        :type $document: JDocument
        :param $document:
        :returns: WebApplication This method is chainable.

    .. php:method:: loadLanguage(JLanguage $language = null)

        Allows the application to load a custom or default language.

        The logic and options for creating this object are adequately generic for
        default cases but for many applications it will make sense to override
        this method and create a language,
        if required, based on more specific needs.

        :type $language: JLanguage
        :param $language:
        :returns: WebApplication This method is chainable.

    .. php:method:: loadSession(JSession $session = null)

        Allows the application to load a custom or default session.

        The logic and options for creating this object are adequately generic for
        default cases but for many applications it will make sense to override
        this method and create a session,
        if required, based on more specific needs.

        :type $session: JSession
        :param $session:
        :returns: WebApplication This method is chainable.

    .. php:method:: afterSessionStart()

        After the session has been started we need to populate it with some
        default values.

        :returns: void

    .. php:method:: loadSystemUris($requestUri = null)

        Method to load the system URI strings for the application.

        :param $requestUri:
        :returns: void

    .. php:method:: getIdentity()

        Get the application identity.

        :returns: mixed A \JUser object or null.

    .. php:method:: registerEvent($event, $handler)

        Registers a handler to a particular event group.

        :param $event:
        :param $handler:
        :returns: BaseApplication The application to allow chaining.

    .. php:method:: triggerEvent($event, $args = null)

        Calls all handlers associated with an event group.

        :param $event:
        :param $args:
        :returns: array An array of results from each function call, or null if no dispatcher is defined.

    .. php:method:: loadDispatcher(JEventDispatcher $dispatcher = null)

        Allows the application to load a custom or default dispatcher.

        The logic and options for creating this object are adequately generic for
        default cases but for many applications it will make sense to override
        this method and create event dispatchers, if required, based on more
        specific needs.

        :type $dispatcher: JEventDispatcher
        :param $dispatcher:
        :returns: BaseApplication This method is chainable.

    .. php:method:: loadIdentity(JUser $identity = null)

        Allows the application to load a custom or default identity.

        The logic and options for creating this object are adequately generic for
        default cases but for many applications it will make sense to override
        this method and create an identity,
        if required, based on more specific needs.

        :type $identity: JUser
        :param $identity:
        :returns: BaseApplication This method is chainable.

    .. php:method:: doExecute()

        Method to run the application routines.  Most likely you will want to
        instantiate a controller
        and execute it, or perform some sort of task directly.

        :returns: void
