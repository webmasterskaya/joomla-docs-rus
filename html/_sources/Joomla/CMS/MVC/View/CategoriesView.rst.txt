--------------------------------------
Joomla\\CMS\\MVC\\View\\CategoriesView
--------------------------------------

.. php:namespace: Joomla\\CMS\\MVC\\View

.. php:class:: CategoriesView

    Categories view base class.

    .. php:attr:: state

        :type: \Joomla\Registry\Registry

        :scope: protected

        State data

    .. php:attr:: items

        :type: array

        :scope: protected

        Category items data

    .. php:attr:: pageHeading

        :type: string

        :scope: protected

        Language key for default page heading

    .. php:attr:: document

        :type: \JDocument

        The active document object

    .. php:attr:: _name

        :type: array

        :scope: protected

        The name of the view

    .. php:attr:: _models

        :type: array

        :scope: protected

        Registered models

    .. php:attr:: _basePath

        :type: string

        :scope: protected

        The base path of the view

    .. php:attr:: _defaultModel

        :type: string

        :scope: protected

        The default model

    .. php:attr:: _layout

        :type: string

        :scope: protected

        Layout name

    .. php:attr:: _layoutExt

        :type: string

        :scope: protected

        Layout extension

    .. php:attr:: _layoutTemplate

        :type: string

        :scope: protected

        Layout template

    .. php:attr:: _path

        :type: array

        :scope: protected

        The set of search directories for resources (templates)

    .. php:attr:: _template

        :type: string

        :scope: protected

        The name of the default template source file.

    .. php:attr:: _output

        :type: string

        :scope: protected

        The output of the template script.

    .. php:attr:: _escape

        :type: string

        :scope: protected

        Callback for escaping.

    .. php:attr:: _charset

        :type: string

        :scope: protected

        Charset to use in escaping mechanisms; defaults to urf8 (UTF-8)

    .. php:method:: display($tpl = null)

        Execute and display a template script.

        :param $tpl:
        :returns: mixed A string if successful, otherwise an Error object.

    .. php:method:: prepareDocument()

        Prepares the document

        :returns: void

    .. php:method:: __construct($config = array())

        Constructor

        :param $config:

    .. php:method:: assign()

        Assigns variables to the view script via differing strategies.

        This method is overloaded; you can assign all the properties of an object,
        an associative array, or a single value by name.

        You are not allowed to set variables that begin with an underscore;
        these are either private properties for \JView or private variables within
        the template script itself.

        <code>
        $view = new \Joomla\CMS\View\HtmlView;

        // Assign directly
        $view->var1 = 'something';
        $view->var2 = 'else';

        // Assign by name and value
        $view->assign('var1', 'something');
        $view->assign('var2', 'else');

        // Assign by assoc-array
        $ary = array('var1' => 'something', 'var2' => 'else');
        $view->assign($obj);

        // Assign by object
        $obj = new \stdClass;
        $obj->var1 = 'something';
        $obj->var2 = 'else';
        $view->assign($obj);

        </code>

        :returns: boolean True on success, false on failure.

    .. php:method:: assignRef($key, $val)

        Assign variable for the view (by reference).

        You are not allowed to set variables that begin with an underscore;
        these are either private properties for \JView or private variables within
        the template script itself.

        <code>
        $view = new \JView;

        // Assign by name and value
        $view->assignRef('var1', $ref);

        // Assign directly
        $view->var1 = &$ref;
        </code>

        :param $key:
        :param $val:
        :returns: boolean True on success, false on failure.

    .. php:method:: escape($var)

        Escapes a value for output in a view script.

        If escaping mechanism is either htmlspecialchars or htmlentities, uses
        {@link $_encoding} setting.

        :param $var:
        :returns: mixed The escaped value.

    .. php:method:: get($property, $default = null)

        Method to get data from a registered model or a property of the view

        :param $property:
        :param $default:
        :returns: mixed The return value of the method

    .. php:method:: getModel($name = null)

        Method to get the model object

        :param $name:
        :returns: mixed \JModelLegacy object

    .. php:method:: getLayout()

        Get the layout.

        :returns: string The layout name

    .. php:method:: getLayoutTemplate()

        Get the layout template.

        :returns: string The layout template name

    .. php:method:: getName()

        Method to get the view name

        The model name by default parsed using the classname, or it can be set by
        passing a $config['name'] in the class constructor

        :returns: string The name of the model

    .. php:method:: setModel($model, $default = false)

        Method to add a model to the view.  We support a multiple model single
        view system by which models are referenced by classname.  A caveat to the
        classname referencing is that any classname prepended by \JModel will be
        referenced by the name without \JModel, eg. \JModelCategory is just
        Category.

        :param $model:
        :param $default:
        :returns: \JModelLegacy The added model.

    .. php:method:: setLayout($layout)

        Sets the layout name to use

        :param $layout:
        :returns: string Previous value.

    .. php:method:: setLayoutExt($value)

        Allows a different extension for the layout files to be used

        :param $value:
        :returns: string Previous value

    .. php:method:: setEscape($spec)

        Sets the _escape() callback.

        :param $spec:
        :returns: void

    .. php:method:: addTemplatePath($path)

        Adds to the stack of view script paths in LIFO order.

        :param $path:
        :returns: void

    .. php:method:: addHelperPath($path)

        Adds to the stack of helper script paths in LIFO order.

        :param $path:
        :returns: void

    .. php:method:: loadTemplate($tpl = null)

        Load a template file -- first look in the templates folder for an override

        :param $tpl:
        :returns: string The output of the the template script.

    .. php:method:: loadHelper($hlp = null)

        Load a helper file

        :param $hlp:
        :returns: void

    .. php:method:: _setPath($type, $path)

        Sets an entire array of search paths for templates or resources.

        :param $type:
        :param $path:
        :returns: void

    .. php:method:: _addPath($type, $path)

        Adds to the search path for templates and resources.

        :param $type:
        :param $path:
        :returns: void

    .. php:method:: _createFileName($type, $parts = array())

        Create the filename for a resource

        :param $type:
        :param $parts:
        :returns: string The filename

    .. php:method:: getForm()

        Returns the form object

        :returns: mixed A \JForm object on success, false on failure

    .. php:method:: setDocumentTitle($title)

        Sets the document title according to Global Configuration options

        :param $title:
        :returns: void
