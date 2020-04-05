-------------------------------------
Joomla\\CMS\\Session\\MetadataManager
-------------------------------------

.. php:namespace: Joomla\\CMS\\Session

.. php:class:: MetadataManager

    Manager for optional session metadata.

    .. php:method:: __construct(AbstractApplication $app, JDatabaseDriver $db)

        MetadataManager constructor.

        :type $app: AbstractApplication
        :param $app:
        :type $db: JDatabaseDriver
        :param $db:

    .. php:method:: createRecordIfNonExisting(Session $session, User $user)

        Create the metadata record if it does not exist.

        :type $session: Session
        :param $session:
        :type $user: User
        :param $user:
        :returns: void

    .. php:method:: deletePriorTo($time)

        Delete records with a timestamp prior to the given time.

        :param $time:
        :returns: void
