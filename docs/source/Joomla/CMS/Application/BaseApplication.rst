-----------------------------------------
Joomla\\CMS\\Application\\BaseApplication
-----------------------------------------

.. php:namespace: Joomla\\CMS\\Application

.. php:class:: BaseApplication

    Joomla Platform Base Application Class

    .. php:attr:: dispatcher

        :type: \JEventDispatcher

        :scope: protected

        The application dispatcher object.

    .. php:attr:: identity

        :type: \JUser

        :scope: protected

        The application identity object.

    .. php:method:: __construct(Input $input = null, Registry $config = null)

        Class constructor.

        :type $input: Input
        :param $input:
        :type $config: Registry
        :param $config:

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
