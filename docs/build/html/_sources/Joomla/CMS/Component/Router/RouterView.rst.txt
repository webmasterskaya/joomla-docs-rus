------------------------------------------
Joomla\\CMS\\Component\\Router\\RouterView
------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router

.. php:class:: RouterView

    View-based component routing class

    .. php:attr:: name

        :type: string

        :scope: protected

        Name of the router of the component

    .. php:attr:: rules

        :type: RulesInterface[]

        :scope: protected

        Array of rules

    .. php:attr:: views

        :type: RouterViewConfiguration[]

        :scope: protected

        Views of the component

    .. php:attr:: app

        :type: \JApplicationCms

        Application object to use in the router

    .. php:attr:: menu

        :type: \JMenu

        Menu object to use in the router

    .. php:method:: registerView(RouterViewConfiguration $view)

        Register the views of a component

        :type $view: RouterViewConfiguration
        :param $view:
        :returns: void

    .. php:method:: getViews()

        Return an array of registered view objects

        :returns: RouterViewConfiguration[] Array of registered view objects

    .. php:method:: getPath($query)

        Get the path of views from target view to root view
        including content items of a nestable view

        :param $query:
        :returns: array List of views including IDs of content items

    .. php:method:: getRules()

        Get all currently attached rules

        :returns: RulesInterface[] All currently attached rules in an array

    .. php:method:: attachRules($rules)

        Add a number of router rules to the object

        :param $rules:
        :returns: void

    .. php:method:: attachRule(RulesInterface $rule)

        Attach a build rule

        :type $rule: RulesInterface
        :param $rule:
        :returns: void

    .. php:method:: detachRule(RulesInterface $rule)

        Remove a build rule

        :type $rule: RulesInterface
        :param $rule:
        :returns: boolean Was a rule removed?

    .. php:method:: preprocess($query)

        Generic method to preprocess a URL

        :param $query:
        :returns: array The URL arguments to use to assemble the subsequent URL.

    .. php:method:: build($query)

        Build method for URLs

        :param $query:
        :returns: array Array of URL segments

    .. php:method:: parse($segments)

        Parse method for URLs

        :param $segments:
        :returns: array Associative array of query values

    .. php:method:: getName()

        Method to return the name of the router

        :returns: string Name of the router

    .. php:method:: __construct($app = null, $menu = null)

        Class constructor.

        :param $app:
        :param $menu:
