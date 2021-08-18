App Content
===========

.. meta::
    :description lang=en: 
       The content available to a certain version of an app.

App content is what the users see in their app. It depends on the Platform Version their app is built with and
a the matching Version of content that was published for that app.

Platform Version
================

This is the underlying code that the App and CMS are running on. It follows `semantic versioning <https://semver.org/>`_.
If your app is on Platform Version ``0.16.1``, the CMS will also be adapted for ``0.16.1``. This allows you to consult the
matching version of the documentation as well.

Given a Platform Version of ``0.16.1``, this is how those numbers are broken down::

    0  - Major version
    16 - Minor version
    1  - Patch version

Changes to **Major** and **Minor** versions of Appspotr will include updates to your app that require you to run an app Update and
rebuild for App Store & Play Store. Your users will have to update their apps to see new content and features made for this
new Platform Version.

**Patch** updates will happen regularly for the latest Platform Version and will automatically be applied to all apps running
on the affected Platform Version. Rebuilding for App Store & Play Store are optional, the apps will keeps themselves on the latest
**Patch** version automatically. The benefit of rebuilding is that the starting Platform Version of the user's app will be more
up to date and not need to auto-update itself.


Versions
========

This is the content that is available to an app. 

A few things get compiled into a version:

* Patchwork
* Views
* Styles
* Integrations
* Storage 
* State 
* Variables

You can include a title and description with a new version publish. These can be for your own internal purposes or made visible
to the app users who receive that new content. You can control this by setting the ``Silent Update`` checkbox to true when publishing
a version. 

It's important to keep in mind that the entire contents of a version of app content are made public once they are published.
**Do not put passwords or other data that is intended to be private in things that will be compiled into a version.**


Platform Version + Versions
===========================

Combining these two concepts together is what allows your app to display content and features to users. 

An app built for ``0.15.53`` will not see content made for ``0.16.1`` and vice versa. 

Encourage your users to stay keep their apps up to date and make sure to follow our releases so you know when the next release
is happening. This will ensure that you and your customers benefit from improvements to the platform.

PWA Platform Version
====================

All users that open the PWA will run that app at the latest version as long as there is app content available for that platform version.

If you are working with ``0.15.53`` and decide to update to ``0.16.0``, users will not get the updated PWA until you publish app 
content for this new version. This gives you control over when the actual update happens. You can check that any new behaviors or features
fit the experience you would like your users to have.