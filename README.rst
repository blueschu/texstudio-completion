TeXstudio Completion Files
==========================

TeXstudio Completion Word List (.cwl) files for LaTeX packages.

A description of the cwl format can be found in the `TeXstudio user manual`_ (see 4.14).


.. _TeXstudio user manual: https://htmlpreview.github.io/?https://github.com/texstudio-org/texstudio/master/utilities/manual/usermanual_en.html

Building the CWL files
-----------------------

0. (Optional) Create a Python `virtual environment`_.

#. Install the Python dependencies::

    $ python3 -m pip install -r ./requirements.txt

#. Run make::

    $ make all

The cwl files will be available in ``./output``. These files can be installed manually by placing them in ``~/.config/texstudio/completion/user`` (Unix) or ``%appdata%\texstudio\completion\use`` (Windows). You may need to restart TeXstudio if it's already running for the new completion files to take effect.

.. _virtual environment: https://docs.python.org/3/library/venv.html
