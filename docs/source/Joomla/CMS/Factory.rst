--------------------
Joomla\\CMS\\Factory
--------------------

.. php:namespace: Joomla\\CMS

.. php:class:: Factory

    Joomla Platform Factory class.

    .. php:attr:: application

        :type: CMSApplication

        Global application object

    .. php:attr:: cache

        :type: Cache

        Global cache object

    .. php:attr:: config

        :type: \JConfig

        Global configuraiton object

    .. php:attr:: dates

        :type: array

        Container for Date instances

    .. php:attr:: session

        :type: Session

        Global session object

    .. php:attr:: language

        :type: Language

        Global language object

    .. php:attr:: document

        :type: \JDocument

        Global document object

    .. php:attr:: acl

        :type: Access

        Global ACL object

    .. php:attr:: database

        :type: \JDatabaseDriver

        Global database object

    .. php:attr:: mailer

        :type: Mail

        Global mailer object

    .. php:method:: getApplication($id = null, $config = array(), $prefix = 'J')

        Get an application object.

        Returns the global {@link CMSApplication} object, only creating it if it
        doesn't already exist.

        :param $id:
        :param $config:
        :param $prefix:
        :returns: CMSApplication object

    .. php:method:: getConfig($file = null, $type = 'PHP', $namespace = '')

        Get a configuration object

        Returns the global {@link \JConfig} object, only creating it if it doesn't
        already exist.

        :param $file:
        :param $type:
        :param $namespace:
        :returns: Registry

    .. php:method:: getSession($options = array())

        Get a session object.

        Returns the global {@link Session} object, only creating it if it doesn't
        already exist.

        :param $options:
        :returns: Session object

    .. php:method:: getLanguage()

        Get a language object.

        Returns the global {@link Language} object, only creating it if it doesn't
        already exist.

        :returns: Language object

    .. php:method:: getDocument()

        Get a document object.

        Returns the global {@link \JDocument} object, only creating it if it
        doesn't already exist.

        :returns: \JDocument object

    .. php:method:: getUser($id = null)

        Get a user object.

        Returns the global {@link User} object, only creating it if it doesn't
        already exist.

        :param $id:
        :returns: User object

    .. php:method:: getCache($group = '', $handler = 'callback', $storage = null)

        Get a cache object

        Returns the global {@link CacheController} object

        :param $group:
        :param $handler:
        :param $storage:
        :returns: \Joomla\CMS\Cache\CacheController object

    .. php:method:: getAcl()

        Get an authorization object

        Returns the global {@link Access} object, only creating it if it doesn't
        already exist.

        :returns: Access object

    .. php:method:: getDbo()

        Get a database object.

        Returns the global {@link \JDatabaseDriver} object, only creating it if it
        doesn't already exist.

        :returns: \JDatabaseDriver

    .. php:method:: getMailer()

        Get a mailer object.

        Returns the global {@link \JMail} object, only creating it if it doesn't
        already exist.

        :returns: \JMail object

    .. php:method:: getFeedParser($url, $cache_time = 0)

        Get a parsed XML Feed Source

        :param $url:
        :param $cache_time:
        :returns: mixed SimplePie parsed object on success, false on failure.

    .. php:method:: getXml($data, $isFile = true)

        Reads a XML file.

        :param $data:
        :param $isFile:
        :returns: mixed JXMLElement or SimpleXMLElement on success or false on error.

    .. php:method:: getEditor($editor = null)

        Get an editor object.

        :param $editor:
        :returns: Editor instance of Editor

    .. php:method:: getUri($uri = 'SERVER')

        Return a reference to the {@link Uri} object

        :param $uri:
        :returns: Uri object

    .. php:method:: getDate($time = 'now', $tzOffset = null)

        Return the {@link Date} object

        :param $time:
        :param $tzOffset:
        :returns: Date object

    .. php:method:: createConfig($file, $type = 'PHP', $namespace = '')

        Create a configuration object

        :param $file:
        :param $type:
        :param $namespace:
        :returns: Registry

    .. php:method:: createSession($options = array())

        Create a session object

        :param $options:
        :returns: Session object

    .. php:method:: createDbo()

        Create a database object

        :returns: \JDatabaseDriver

    .. php:method:: createMailer()

        Create a mailer object

        :returns: \JMail object

    .. php:method:: createLanguage()

        Create a language object

        :returns: Language object

    .. php:method:: createDocument()

        Create a document object

        :returns: \JDocument object

    .. php:method:: getStream($use_prefix = true, $use_network = true, $ua = null, $uamask = false)

        Creates a new stream object with appropriate prefix

        :param $use_prefix:
        :param $use_network:
        :param $ua:
        :param $uamask:
        :returns: \JStream
