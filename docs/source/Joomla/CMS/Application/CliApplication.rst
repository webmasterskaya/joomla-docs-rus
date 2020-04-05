----------------------------------------
Joomla\\CMS\\Application\\CliApplication
----------------------------------------

.. php:namespace: Joomla\\CMS\\Application

.. php:class:: CliApplication

    Base class for a Joomla! command line application.

    .. php:attr:: output

        :type: CliOutput

        :scope: protected

    .. php:attr:: instance

        :type: CliApplication

        :scope: protected

    .. php:attr:: dispatcher

        :type: \JEventDispatcher

        :scope: protected

        The application dispatcher object.

    .. php:attr:: identity

        :type: \JUser

        :scope: protected

        The application identity object.

    .. php:method:: __construct(Cli $input = null, Registry $config = null, JEventDispatcher $dispatcher = null)

        Class constructor.

        :type $input: Cli
        :param $input:
        :type $config: Registry
        :param $config:
        :type $dispatcher: JEventDispatcher
        :param $dispatcher:

    .. php:method:: getInstance($name = null)

        Returns a reference to the global CliApplication object, only creating it
        if it doesn't already exist.

        This method must be invoked as: $cli = CliApplication::getInstance();

        :param $name:
        :returns: CliApplication

    .. php:method:: execute()

        Execute the application.

        :returns: void

    .. php:method:: loadConfiguration($data)

        Load an object or array into the application configuration object.

        :param $data:
        :returns: CliApplication Instance of $this to allow chaining.

    .. php:method:: out($text = '', $nl = true)

        Write a string to standard output.

        :param $text:
        :param $nl:
        :returns: CliApplication Instance of $this to allow chaining.

    .. php:method:: getOutput()

        Get an output object.

        :returns: CliOutput

    .. php:method:: setOutput(CliOutput $output)

        Set an output object.

        :type $output: CliOutput
        :param $output:
        :returns: CliApplication Instance of $this to allow chaining.

    .. php:method:: in()

        Get a value from standard input.

        :returns: string The input string from standard input.

    .. php:method:: fetchConfigurationData($file = '', $class = '\JConfig')

        Method to load a PHP configuration class file based on convention and
        return the instantiated data object.  You
        will extend this method in child classes to provide configuration data
        from whatever data source is relevant
        for your specific application.

        :param $file:
        :param $class:
        :returns: mixed Either an array or object to be loaded into the configuration object.

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
