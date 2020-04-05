-------------------------------------------
Joomla\\CMS\\Application\\DaemonApplication
-------------------------------------------

.. php:namespace: Joomla\\CMS\\Application

.. php:class:: DaemonApplication

    Class to turn CliApplication applications into daemons.  It requires CLI and PCNTL support built into PHP.

    .. php:attr:: signals

        :type: array

        :scope: protected

    .. php:attr:: exiting

        :type: boolean

        :scope: protected

    .. php:attr:: parentId

        :type: integer

        :scope: protected

    .. php:attr:: processId

        :type: integer

        :scope: protected

    .. php:attr:: running

        :type: boolean

        :scope: protected

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

    .. php:method:: __construct(JInputCli $input = null, Registry $config = null, JEventDispatcher $dispatcher = null)

        Class constructor.

        :type $input: JInputCli
        :param $input:
        :type $config: Registry
        :param $config:
        :type $dispatcher: JEventDispatcher
        :param $dispatcher:

    .. php:method:: signal($signal)

        Method to handle POSIX signals.

        :param $signal:
        :returns: void

    .. php:method:: isActive()

        Check to see if the daemon is active.  This does not assume that $this
        daemon is active, but
        only if an instance of the application is active as a daemon.

        :returns: boolean True if daemon is active.

    .. php:method:: loadConfiguration($data)

        Load an object or array into the application configuration object.

        :param $data:
        :returns: DaemonApplication Instance of $this to allow chaining.

    .. php:method:: execute()

        Execute the daemon.

        :returns: void

    .. php:method:: restart()

        Restart daemon process.

        :returns: void

    .. php:method:: stop()

        Stop daemon process.

        :returns: void

    .. php:method:: changeIdentity()

        Method to change the identity of the daemon process and resources.

        :returns: boolean True if identity successfully changed

    .. php:method:: daemonize()

        Method to put the application into the background.

        :returns: boolean

    .. php:method:: detach()

        This is truly where the magic happens.  This is where we fork the process
        and kill the parent
        process, which is essentially what turns the application into a daemon.

        :returns: void

    .. php:method:: fork()

        Method to fork the process.

        :returns: integer The child process id to the parent process, zero to the child process.

    .. php:method:: gc()

        Method to perform basic garbage collection and memory management in the
        sense of clearing the
        stat cache.  We will probably call this method pretty regularly in our
        main loop.

        :returns: void

    .. php:method:: setupSignalHandlers()

        Method to attach the DaemonApplication signal handler to the known
        signals.  Applications
        can override these handlers by using the pcntl_signal() function and
        attaching a different
        callback method.

        :returns: boolean

    .. php:method:: shutdown($restart = false)

        Method to shut down the daemon and optionally restart it.

        :param $restart:
        :returns: void

    .. php:method:: writeProcessIdFile()

        Method to write the process id file out to disk.

        :returns: boolean

    .. php:method:: postFork()

        Method to handle post-fork triggering of the onFork event.

        :returns: void

    .. php:method:: pcntlChildExitStatus($status)

        Method to return the exit code of a terminated child process.

        :param $status:
        :returns: integer The child process exit code.

    .. php:method:: pcntlFork()

        Method to return the exit code of a terminated child process.

        :returns: integer On success, the PID of the child process is returned in the parent's thread of execution, and a 0 is returned in the child's thread of execution. On failure, a -1 will be returned in the parent's context, no child process will be created, and a PHP error is raised.

    .. php:method:: pcntlSignal($signal, $handler, $restart = true)

        Method to install a signal handler.

        :param $signal:
        :param $handler:
        :param $restart:
        :returns: boolean True on success.

    .. php:method:: pcntlWait($status, $options = 0)

        Method to wait on or return the status of a forked child.

        :param $status:
        :param $options:
        :returns: integer The process ID of the child which exited, -1 on error or zero if WNOHANG was provided as an option (on wait3-available systems) and no child was available.

    .. php:method:: getInstance($name = null)

        Returns a reference to the global CliApplication object, only creating it
        if it doesn't already exist.

        This method must be invoked as: $cli = CliApplication::getInstance();

        :param $name:
        :returns: CliApplication

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
