-----------------------------
Joomla\\CMS\\Session\\Session
-----------------------------

.. php:namespace: Joomla\\CMS\\Session

.. php:class:: Session

    Class for managing HTTP sessions

    Provides access to session-state values as well as session-level settings and lifetime management methods.
    Based on the standard PHP session handling mechanism it provides more advanced features such as expire timeouts.

    .. php:attr:: _state

        :type: string

        :scope: protected

        Internal state.
        One of 'inactive'|'active'|'expired'|'destroyed'|'error'

    .. php:attr:: _expire

        :type: string

        :scope: protected

        Maximum age of unused session in seconds

    .. php:attr:: _store

        :type: \JSessionStorage

        :scope: protected

        The session store object.

    .. php:attr:: _security

        :type: array

        :scope: protected

        Security policy.
        List of checks that will be done.

        Default values:
        - fix_browser
        - fix_adress

    .. php:attr:: instance

        :type: Session

        :scope: protected

        Session instances container.

    .. php:attr:: storeName

        :type: string

        :scope: protected

        The type of storage for the session.

    .. php:attr:: _handler

        :type: \JSessionHandlerInterface

        :scope: protected

        Holds the event dispatcher object

    .. php:attr:: data

        :type: \Joomla\Registry\Registry

        :scope: protected

        Internal data store for the session data

    .. php:method:: __construct($store = 'none', $options = array(), JSessionHandlerInterface $handlerInterface = null)

        Constructor

        :param $store:
        :param $options:
        :type $handlerInterface: JSessionHandlerInterface
        :param $handlerInterface:

    .. php:method:: __get($name)

        Magic method to get read-only access to properties.

        :param $name:
        :returns: mixed The value of the property

    .. php:method:: getInstance($store, $options, JSessionHandlerInterface $handlerInterface = null)

        Returns the global Session object, only creating it if it doesn't already
        exist.

        :param $store:
        :param $options:
        :type $handlerInterface: JSessionHandlerInterface
        :param $handlerInterface:
        :returns: Session The Session object.

    .. php:method:: getState()

        Get current state of session

        :returns: string The session state

    .. php:method:: getExpire()

        Get expiration time in seconds

        :returns: integer The session expiration time in seconds

    .. php:method:: getToken($forceNew = false)

        Get a session token, if a token isn't set yet one will be generated.

        Tokens are used to secure forms from spamming attacks. Once a token has
        been generated the system will check the post request to see if it is
        present, if not it will invalidate the session.

        :param $forceNew:
        :returns: string The session token

    .. php:method:: hasToken($tCheck, $forceExpire = true)

        Method to determine if a token exists in the session. If not the
        session will be set to expired

        :param $tCheck:
        :param $forceExpire:
        :returns: boolean

    .. php:method:: getFormToken($forceNew = false)

        Method to determine a hash for anti-spoofing variable names

        :param $forceNew:
        :returns: string Hashed var name

    .. php:method:: getIterator()

        Retrieve an external iterator.

        :returns: \ArrayIterator

    .. php:method:: checkToken($method = 'post')

        Checks for a form token in the request.

        Use in conjunction with \JHtml::_('form.token') or Session::getFormToken.

        :param $method:
        :returns: boolean True if found and valid, false otherwise.

    .. php:method:: getName()

        Get session name

        :returns: string The session name

    .. php:method:: getId()

        Get session id

        :returns: string The session id

    .. php:method:: getData()

        Returns a clone of the internal data pointer

        :returns: \Joomla\Registry\Registry

    .. php:method:: getStores()

        Get the session handlers

        :returns: array An array of available session handlers

    .. php:method:: isActive()

        Shorthand to check if the session is active

        :returns: boolean

    .. php:method:: isNew()

        Check whether this session is currently created

        :returns: boolean True on success.

    .. php:method:: initialise(Input $input, JEventDispatcher $dispatcher = null)

        Check whether this session is currently created

        :type $input: Input
        :param $input:
        :type $dispatcher: JEventDispatcher
        :param $dispatcher:
        :returns: void

    .. php:method:: get($name, $default = null, $namespace = 'default')

        Get data from the session store

        :param $name:
        :param $default:
        :param $namespace:
        :returns: mixed Value of a variable

    .. php:method:: set($name, $value = null, $namespace = 'default')

        Set data into the session store.

        :param $name:
        :param $value:
        :param $namespace:
        :returns: mixed Old value of a variable.

    .. php:method:: has($name, $namespace = 'default')

        Check whether data exists in the session store

        :param $name:
        :param $namespace:
        :returns: boolean True if the variable exists

    .. php:method:: clear($name, $namespace = 'default')

        Unset data from the session store

        :param $name:
        :param $namespace:
        :returns: mixed The value from session or NULL if not set

    .. php:method:: start()

        Start a session.

        :returns: void

    .. php:method:: _start()

        Start a session.

        Creates a session (or resumes the current one based on the state of the
        session)

        :returns: boolean true on success

    .. php:method:: destroy()

        Frees all session variables and destroys all data registered to a session

        This method resets the data pointer and destroys all of the data
        associated with the current session in its storage. It forces a new
        session to be started after this method is called. It does not unset the
        session cookie.

        :returns: boolean True on success

    .. php:method:: restart()

        Restart an expired or locked session.

        :returns: boolean True on success

    .. php:method:: fork()

        Create a new session and copy variables from the old one

        :returns: boolean $result true on success

    .. php:method:: close()

        Writes session data and ends session

        Session data is usually stored after your script terminated without the
        need to call Session::close(), but as session data is locked to prevent
        concurrent writes only one script may operate on a session at any time.
        When using framesets together with sessions you will experience the frames
        loading one by one due to this locking. You can reduce the time needed to
        load all the frames by ending the session as soon as all changes to
        session variables are done.

        :returns: void

    .. php:method:: gc()

        Delete expired session data

        :returns: boolean True on success, false otherwise.

    .. php:method:: setHandler(JSessionHandlerInterface $handler)

        Set the session handler

        :type $handler: JSessionHandlerInterface
        :param $handler:
        :returns: void

    .. php:method:: _createToken($length = 32)

        Create a token-string

        :param $length:
        :returns: string Generated token

    .. php:method:: _setCounter()

        Set counter of session usage

        :returns: boolean True on success

    .. php:method:: _setTimers()

        Set the session timers

        :returns: boolean True on success

    .. php:method:: _setOptions($options)

        Set additional session options

        :param $options:
        :returns: boolean True on success

    .. php:method:: _validate($restart = false)

        Do some checks for security reason

        - timeout check (expire)
        - ip-fixiation
        - browser-fixiation

        If one check failed, session data has to be cleaned.

        :param $restart:
        :returns: boolean True on success
