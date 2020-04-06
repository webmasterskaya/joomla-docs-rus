--------------------------------------------
Joomla\\CMS\\MVC\\Controller\\BaseController
--------------------------------------------

.. php:namespace: Joomla\\CMS\\MVC\\Controller

.. php:class:: BaseController

    Base class for a Joomla Controller

    Controller (Controllers are where you put all the actual code.) Provides basic functionality, such as rendering views (aka displaying templates).

    .. php:attr:: basePath

        :type: string

        :scope: protected

        The base path of the controller

    .. php:attr:: default_view

        :type: string

        :scope: protected

        The default view for the display method.

    .. php:attr:: doTask

        :type: string

        :scope: protected

        The mapped task that was performed.

    .. php:attr:: message

        :type: string

        :scope: protected

        Redirect message.

    .. php:attr:: messageType

        :type: string

        :scope: protected

        Redirect message type.

    .. php:attr:: methods

        :type: array

        :scope: protected

        Array of class methods

    .. php:attr:: name

        :type: array

        :scope: protected

        The name of the controller

    .. php:attr:: model_prefix

        :type: string

        :scope: protected

        The prefix of the models

    .. php:attr:: paths

        :type: array

        :scope: protected

        The set of search directories for resources (views).

    .. php:attr:: redirect

        :type: string

        :scope: protected

        URL for redirection.

    .. php:attr:: task

        :type: string

        :scope: protected

        Current or most recently performed task.

    .. php:attr:: taskMap

        :type: array

        :scope: protected

        Array of class methods to call for a given task.

    .. php:attr:: input

        :type: \JInput

        :scope: protected

        Hold a JInput object for easier access to the input variables.

    .. php:attr:: instance

        :type: \JControllerLegacy

        :scope: protected

        Instance container.

    .. php:attr:: views

        :type: \JViewLegacy[]

        :scope: protected

        Instance container containing the views.

    .. php:method:: addModelPath($path, $prefix = '')

        Adds to the stack of model paths in LIFO order.

        :param $path:
        :param $prefix:
        :returns: void

    .. php:method:: createFileName($type, $parts = array())

        Create the filename for a resource.

        :param $type:
        :param $parts:
        :returns: string The filename.

    .. php:method:: getInstance($prefix, $config = array())

        Method to get a singleton controller instance.

        :param $prefix:
        :param $config:
        :returns: \JControllerLegacy

    .. php:method:: __construct($config = array())

        Constructor.

        :param $config:

    .. php:method:: addPath($type, $path)

        Adds to the search path for templates and resources.

        :param $type:
        :param $path:
        :returns: \JControllerLegacy A \JControllerLegacy object to support chaining.

    .. php:method:: addViewPath($path)

        Add one or more view paths to the controller's stack, in LIFO order.

        :param $path:
        :returns: \JControllerLegacy This object to support chaining.

    .. php:method:: authorise($task)

        Authorisation check

        :param $task:
        :returns: boolean True if authorised

    .. php:method:: checkEditId($context, $id)

        Method to check whether an ID is in the edit list.

        :param $context:
        :param $id:
        :returns: boolean True if the ID is in the edit list.

    .. php:method:: createModel($name, $prefix = '', $config = array())

        Method to load and return a model object.

        :param $name:
        :param $prefix:
        :param $config:
        :returns: \JModelLegacy|boolean Model object on success; otherwise false on failure.

    .. php:method:: createView($name, $prefix = '', $type = '', $config = array())

        Method to load and return a view object. This method first looks in the
        current template directory for a match and, failing that, uses a default
        set path to load the view class file.

        Note the "name, prefix, type" order of parameters, which differs from the
        "name, type, prefix" order used in related public methods.

        :param $name:
        :param $prefix:
        :param $type:
        :param $config:
        :returns: \JViewLegacy|null View object on success; null or error result on failure.

    .. php:method:: display($cachable = false, $urlparams = array())

        Typical view method for MVC based architecture

        This function is provide as a default implementation, in most cases you
        will need to override it in your own controllers.

        :param $cachable:
        :param $urlparams:
        :returns: \JControllerLegacy A \JControllerLegacy object to support chaining.

    .. php:method:: execute($task)

        Execute a task by triggering a method in the derived class.

        :param $task:
        :returns: mixed The value returned by the called method.

    .. php:method:: getModel($name = '', $prefix = '', $config = array())

        Method to get a model object, loading it if required.

        :param $name:
        :param $prefix:
        :param $config:
        :returns: \JModelLegacy|boolean Model object on success; otherwise false on failure.

    .. php:method:: getName()

        Method to get the controller name

        The dispatcher name is set by default parsed using the classname, or it
        can be set by passing a $config['name'] in the class constructor

        :returns: string The name of the dispatcher

    .. php:method:: getTask()

        Get the last task that is being performed or was most recently performed.

        :returns: string The task that is being performed or was most recently performed.

    .. php:method:: getTasks()

        Gets the available tasks in the controller.

        :returns: array Array[i] of task names.

    .. php:method:: getView($name = '', $type = '', $prefix = '', $config = array())

        Method to get a reference to the current view and load it if necessary.

        :param $name:
        :param $type:
        :param $prefix:
        :param $config:
        :returns: \JViewLegacy Reference to the view or an error.

    .. php:method:: holdEditId($context, $id)

        Method to add a record ID to the edit list.

        :param $context:
        :param $id:
        :returns: void

    .. php:method:: redirect()

        Redirects the browser or returns false if no redirect is set.

        :returns: boolean False if no redirect exists.

    .. php:method:: registerDefaultTask($method)

        Register the default task to perform if a mapping is not found.

        :param $method:
        :returns: \JControllerLegacy A \JControllerLegacy object to support chaining.

    .. php:method:: registerTask($task, $method)

        Register (map) a task to a method in the class.

        :param $task:
        :param $method:
        :returns: \JControllerLegacy A \JControllerLegacy object to support chaining.

    .. php:method:: unregisterTask($task)

        Unregister (unmap) a task in the class.

        :param $task:
        :returns: \JControllerLegacy This object to support chaining.

    .. php:method:: releaseEditId($context, $id)

        Method to check whether an ID is in the edit list.

        :param $context:
        :param $id:
        :returns: void

    .. php:method:: setMessage($text, $type = 'message')

        Sets the internal message that is passed with a redirect

        :param $text:
        :param $type:
        :returns: string Previous message

    .. php:method:: setPath($type, $path)

        Sets an entire array of search paths for resources.

        :param $type:
        :param $path:
        :returns: void

    .. php:method:: checkToken($method = 'post', $redirect = true)

        Checks for a form token in the request.

        Use in conjunction with \JHtml::_('form.token') or
        \JSession::getFormToken.

        :param $method:
        :param $redirect:
        :returns: boolean True if found and valid, otherwise return false or redirect to referrer page.

    .. php:method:: setRedirect($url, $msg = null, $type = null)

        Set a URL for browser redirection.

        :param $url:
        :param $msg:
        :param $type:
        :returns: \JControllerLegacy This object to support chaining.
