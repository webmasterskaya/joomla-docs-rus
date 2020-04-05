----------------------------------------------------
Joomla\\CMS\\Component\\Router\\Rules\\StandardRules
----------------------------------------------------

.. php:namespace: Joomla\\CMS\\Component\\Router\\Rules

.. php:class:: StandardRules

    Rule for the standard handling of component routing

    .. php:attr:: router

        :type: RouterView

        :scope: protected

        Router this rule belongs to

    .. php:method:: __construct(RouterView $router)

        Class constructor.

        :type $router: RouterView
        :param $router:

    .. php:method:: preprocess($query)

        Dummymethod to fullfill the interface requirements

        :param $query:
        :returns: void

    .. php:method:: parse($segments, $vars)

        Parse the URL

        :param $segments:
        :param $vars:
        :returns: void

    .. php:method:: build($query, $segments)

        Build a standard URL

        :param $query:
        :param $segments:
        :returns: void
