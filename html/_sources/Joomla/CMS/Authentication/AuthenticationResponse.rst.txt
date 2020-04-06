---------------------------------------------------
Joomla\\CMS\\Authentication\\AuthenticationResponse
---------------------------------------------------

.. php:namespace: Joomla\\CMS\\Authentication

.. php:class:: AuthenticationResponse

    Authentication response class, provides an object for storing user and error details

    .. php:attr:: status

        :type: string

        Response status (see status codes)

    .. php:attr:: type

        :type: string

        The type of authentication that was successful

    .. php:attr:: error_message

        :type: string

        The error message

    .. php:attr:: username

        :type: string

        Any UTF-8 string that the End User wants to use as a username.

    .. php:attr:: password

        :type: string

        Any UTF-8 string that the End User wants to use as a password.

    .. php:attr:: email

        :type: string

        The email address of the End User as specified in section 3.4.1 of
        [RFC2822]

    .. php:attr:: fullname

        :type: string

        UTF-8 string free text representation of the End User's full name.

    .. php:attr:: birthdate

        :type: string

        The End User's date of birth as YYYY-MM-DD. Any values whose
        representation uses
        fewer than the specified number of digits should be zero-padded. The
        length of this
        value MUST always be 10. If the End User user does not want to reveal any
        particular
        component of this value, it MUST be set to zero.

        For instance, if an End User wants to specify that their date of birth is
        in 1980, but not the month or day, the value returned SHALL be
        "1980-00-00".

    .. php:attr:: gender

        :type: string

        The End User's gender, "M" for male, "F" for female.

    .. php:attr:: postcode

        :type: string

        UTF-8 string free text that SHOULD conform to the End User's country's
        postal system.

    .. php:attr:: country

        :type: string

        The End User's country of residence as specified by ISO3166.

    .. php:attr:: language

        :type: string

        End User's preferred language as specified by ISO639.

    .. php:attr:: timezone

        :type: string

        ASCII string from TimeZone database
