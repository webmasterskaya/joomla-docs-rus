---------------------------------------------------------
Joomla\\CMS\\Captcha\\Google\\HttpBridgePostRequestMethod
---------------------------------------------------------

.. php:namespace: Joomla\\CMS\\Captcha\\Google

.. php:class:: HttpBridgePostRequestMethod

    Bridges the Joomla! HTTP API to the Google Recaptcha RequestMethod interface for a POST request.

    .. php:const:: SITE_VERIFY_URL

        URL to which requests are sent.

    .. php:method:: __construct(Http $http = null)

        Class constructor.

        :type $http: Http
        :param $http:

    .. php:method:: submit(RequestParameters $params)

        Submit the request with the specified parameters.

        :type $params: RequestParameters
        :param $params:
        :returns: string Body of the reCAPTCHA response
