### v.3.18.0 - 2014/09/23

* Added Batch Order Profile page.

### v3.17.2 - 2014/09/23

* Fixed batch import functionality.

### v3.17.1 - 2014/08/08

* Updated patron address line elements.

### v3.17.0 - 2014/07/07

* Selenium WebDriver Profiles
    * The OLE QA Framework Session now accepts instantiated Selenium Firefox profiles
      as an optional argument.
* Fix to Batch_File_List
    * link_by_filename now points to the URL, previously pointed to DIV

### v3.16.0 - 2014/06/30

* Headless gem sessions now persist across OLE_QA::Framework::Session instances
    * Starting a new session with (:headless? => false) will stop Headless,
      but not destroy the Headless session.
    * Calling #quit on an OLE_QA::Framework::Session instance
      will destroy the Headless session.
    * Starting a new session with a pre-existing Watir Browser instance
      will not start a new session, and will stop Headless if it is running.
* Session is now in its own classfile
* Created Headless spec to handle headless testing
    * Removed headless tests from Session spec

### v3.15.2 - 2014/06/25

* Rescue all exceptions in page wait_for_elements

### v3.15.1 - 2014/06/25

* Update Batch Process Elements
    * Add new scheduling elements
    * Add new cron expression elements
    * Add submit, close, clear, and cancel buttons
    * Remove run and schedule buttons
    * Reference run_now_option instead of run_button in wait_for_elements
* Create Batch File List page in OLELS

### v3.15.0 - 2014/06/18

* Update Framework module & Session class
    * Add session spec
    * Move lib/config/default_options.yml to config/options.yml
* Update Rakefile
    * Remove select_config task
    * Add show_config task
    * Add configurator task
* Update Readme
    * Add instructions for show_config & configurator tasks
* Clean up modules
    * Move page helpers to lib/common/page.rb
    * Remove lib/module/qa_page_helpers.rb
    * Remove redundant page helpers spec
    * Remove lib/module/qa_data_helpers.rb
* Clean up Data Factories
    * Change classes to modules
    * Add country attribute to patron factory
* Add country data file to data/
* Update Copyright info
* Clean up specs
    * Add @ole.nil? check to specs using live sessions
* Add circulation info selector to Bib Factory
    * OLE_QA::Framework::Bib_Factory.circulation_info will return a hash containing
      a circulation desk code, circulation desk name, and an array of locations which
      are mapped to that circulation desk.
    * Added examples to spec/data_factory/bib_factory_spec.rb
* Add institutional data configuration section to README.md

### v3.14.1 - 2014/05/19

* Add Conributions document
* Update default options
    * Framework uses Test Environment by default
* Update Page Spec for Watir 0.6.9 Compatibility
    * Page spec now expects IFrame instead of Frame

### v3.14.0 - 2014/04/21

* Add Rake works_with task

### v3.13.4 - 2014/04/18

* Update Loan Screen
    * Add renewal_box element
* Add renewal screen base class
* Update & Add Marc Editor Elements
    * Updated .add_instance_button
    * Updated .add_item_button
    * Updated .delete_bib_button
    * Added .add_einstance_button

### v3.13.3 - 2014/04/14

* Update Marc Editor base class
    * Remove :title element as it no longer exists
* Update Page base class
    * Add :wait_on attribute to show wait_for_elements list

### v3.13.2 - 2014/03/27

* Update Workbench Line Elements
    * All elements
* Add Workbench Elements
    * Add .error_message
    * Add .export_xml_button

### v3.13.1 - 2014/03/27

* Add documentation to Workbench Line #search_scope_selector.
* Update Workbench Line Elements
    * Update .add_button
    * Update .delete_button

### v3.13.0 - 2014/03/21

* Add new Describe Workbench Page
    * Old page moved to Old_Describe_Workbench
* Update compatibility version
    *  1.5.0-M2-r18095, released 2014/03/20

### v3.12.5 - 2014/03/18

* Additional Request Page Fixes
    * Fixed element IDs for item search field and item barcode icon.

### v3.12.4 - 2014/03/18

* Request Page Fix
    * Replaced IDs with regex patterns to match dynamically-updated element IDs in page.

### v3.12.3 - 2014/03/14

* Request Page Fix
    * Add .user_id and .user_id_field elements.


### v3.12.2 - 2014/03/10

* Invoice Fix
    * Removed .document_id from .wait_for_elements as it was causing unnecessary failures.

### v3.12.1 - 2014/03/06

* Fix Item Lookup Elements
    * Redefined Item Lookup elements

### v3.12.0 - 2014/03/05

* Request Features
    * Added .item_search_icon & .item_barcode_icon (same element) to Request page
    * Added Item Lookup page (only accessible from Request page)

### v3.11.1 - 2014/02/19

* Patron Fixes
    * Address line  - updated add button ID
    * Phone line    - updated add button ID
    * Email line    - updated add button ID

### v3.11.0 - 2014/02/19

* Request Pages added in OLELS
    * Request Lookup
    * Request
* Patron Lookup
    * Added .return_by_text() function

### v3.10.0 - 2014/02/18

* Default Timeout Upgrade
    * Watir-Webdriver in 0.6.5 introduced a customizable default timeout.
    The Framework's default timeout setting (:explicit_wait => NN)
    now takes advantage of this feature.

### v3.9.8 - 2014/02/17

* Batch Process Page
    * Added .input_file_field for bib import processes.

### v3.9.7 - 2014/02/12

* Location Page
    * Added .wait_for_page_to_load call to .submit function definition.

### v3.9.6 - 2014/02/10

* Search Results Update
    * For consistency, made all lookup pages with either .text_in_results or .text_in_results?
    support both methods.  The first returns an element, the second returns true or false based
    on the presence of the element.


### v3.9.5 - 2014/02/06

* Batch Profile (base class for Batch Export Profile & Batch Import Profile)
    * Added .approve_button
    * Added .message
    * Added .messages
* Batch Job Details
    * Added .job_status_by_text
* Batch Job Report
    * Fixed set_elements error
    * Added .view_export_file_link

### v3.9.4 - 2014/02/05

* Batch Process Type Lookup
    * Added regex matching for search/clear/cancel buttons

### v3.9.3 - 2014/02/05

* Batch Process Type Lookup
    * Fixed .id_by_text function (was not compatible with lookup-as-frame view)
    * Added .result_by_text function

### v3.9.2 - 2014/02/03

* Watir-Webdriver 0.6.5+ Compatibility
    * Updated frame selection to work with new iframe handling of Webdriver 0.6.5 and up

### v3.9.1 - 2014/02/03

* Update Batch Process Page
    * profile_name_field removed from wait_for_elements

### v3.9.0 - 2014/01/29

* Added Batch Job Report page in OLELS

### v3.8.3 - 2014/01/29

* Batch Profile Lookup
    * Updated return_by_text & edit_by_text elements.
* Batch Process
    * Added marc_file_field & edi_file_field elements.
    * Added message element
* Load Summary Lookup
    * Added text_in_results? function.

### v3.8.2 - 2014/01/20

* Batch Profile
    * Update base class elements - headers, buttons, etc.


### v3.8.1 - 2014/01/17

* Batch Profile Lookup  
    * Fixed element definitions

### v3.8.0 - 2014/01/09

* Data Factories
    * Bib Factory
        * added title
        * added author
    * String Factory
        * added price

### v3.7.5 - 2014/01/03

* OLELS - Fix error in Staff Upload URL

### v3.7.4 - 2014/01/03

* Remove pessimistic version constraint
    * Ruby version now <= 1.9.3, not ~> 1.9.3

### v3.7.3 - 2013/12/18

* Location Lookup
    * Added .id_by_text function
    * Added .parent_id_by_text function

### v3.7.2 - 2013/12/18

* Location Lookup
    * Fix error in return_by_text function.

### v3.7.1 - 2013/12/18

* Location Lookup
    * Added return_by_results function.
* Location Factory
    * Added .new_location method.

### v3.7.0 - 2013/12/18

* Location Pages
    * Location Lookup
    * Location Level Lookup
    * Location
* Location Factory
    * Location Code

### v3.6.7 - 2013/12/13

* Patron Lookup
    * Added .text_in_results? function.
    * Added .edit_by_text function to return edit link.
    * Added .copy_by_text function to return copy link.
    * Added .delete_by_text function to return delete link.

### v3.6.6 - 2013/12/12

* Patron
    * Added message element
    * Added submit button
    * Added save button
    * Added close button (currently back button on screen)
    * Added update barcode button

### v3.6.5 - 2013/12/12

* Patron Factory
    * Add :borrower_type to new patron
    * Add .borrower_types reader attribute
    * Add .states reader attribute

### v3.6.4 - 2013/12/12

* Patron
    * Update document header definitions
* Patron Lookup
    * add .create_new element

### v3.6.3 - 2013/12/11

* Patron Data Factory
    * Fix loading of data/states.yml

### v3.6.2 - 2013/12/11

* Patron Data Factory
    * Fix address formatting

### v3.6.1 - 2013/12/11

* Patron Data Factory
    * Added .patron_new to create minimum required data for new patron record

### v3.6.0 - 2013/12/10

* Patron Data Factory
    * Added patron source files
    * Added data factory with ability to select usable live patron record

### v3.5.0 - 2013/12/09

* Docstore
    * Added .docstore_url (.docstore) method to Session
    * Added :docstore_url: to all config files
    * Added Pages:
        * Search
        * Search Results
        * Marc Search Results

### v3.4.6 - 2013/12/05

* OLEFS Invoice
    * Update control buttons after element IDs wiped out during Rice Upgrade

### v3.4.5 - 2013/12/05

* OLEFS Invoice
    * Update document information field definitions for Rice Upgrade 2.3.2


### v3.4.4 - 2013/12/05

* OLEFS Receiving Line
    * update receive button identifier

### v3.4.3 - 2013/12/05

* OLEFS Vendor Lookup
    * add return_result(which)
* Account Factory
    * remove 2947484 from source data, this account no longer exists
    * remove 29474500 from source data, this account was a typo 

### v3.4.2 - 2013/12/04

* OLEFS Building Lookup
    * add return_result(which)


### v3.4.1 - 2013/12/03

* Invoice Document
    * added Document Overview toggle
        * this section is now expected to be closed on document load

### v3.4.0 - 2013/11/26

* OLEFS E-Doc URLs
    * Lookup URLs have been built in to the main page class
    * Lookup URLs are provided for:
        * Requisition
        * Purchase Order
        * Receiving Document
        * Load Report
        * Invoice

### v3.3.0 - 2013/11/26

* Data & Data Factories
    * Data Factories implemented for:
        * Accounting Strings (IU Sample Data used)
        * Bib Data
            * Barcode
            * Call Number (LCC Format)
        * Random Alphanumeric Strings of Preset Length
            * Alphabetic only
            * Numeric only
            * Alphanumeric
            * Telephone Numbers

### v3.2.0 - 2013/11/12

* Batch Import Screens
    * Batch Process Profile Search Screen
    * Batch Job Details Screen
    * Batch Process Type Search Screen
    * Batch Profile Base Class
    * Batch Import Profile Page
    * Batch Export Profile Page
* Page Base Class
    * Improved .wait_for_page_to_load rescues not-present exceptions and returns
      true or false if page is loaded.

### v3.1.1 - 2013/11/05

* Update Invoice Line
  * Add button ID was changed

### v3.1.0 - 2013/10/30

* OLE 1.0 Receiving
    * Re-create receiving elements on PURAP line items
    * Re-create receiving document & receiving lines

### v3.0.1 - 2013/10/29

* Line Object Fix
    * Fix set_subline method on lib/common/line_object.rb.

### v3.0.0 - 2013/10/15

* Flexible Line Objects
    * Line Objects & Subline Objects are defined once on a parent object
    * The line number instance variable is now settable.
    * The line ID instance variable has been replaced with a reader lookup method.
    * Array reader attributes are used to track lines & sublines on instantiated objects.
        * A lines array has been implemented on all page objects.
        * A sublines array has been implemented on all line objects.
* OLELS
    * Fix element definitions on Return Screen page.
    * Fix element definitions on Staff Upload page.
* Spec
    * Remove old workflow spec, no longer accurate or necessary.

### v2.7.3 - 2013/10/11

* Page (base class)
    * .wait_for_page_to_load
        * Added wait for loading_message element to disappear if present

### v2.7.2 - 2013/10/10

* OLEFS - Invoice Document
    * Add .messages element (multiple element array)
    * Add .message function (defaults to 1, selectable by 1-based index)

### v2.7.1 - 2013/10/09

* OLEFS - Invoice Document
    * Add Current Items Line

### v2.7.0 - 2013/10/09

* OLEFS - New Items
    * Invoice Document
    * Invoice Line

### v2.6.5 - 2013/09/25

* Added Marc Editor View-Only Pages
    * Bib Editor
    * Instance Editor
    * Item Editor


### v2.6.4 - 2013/09/12

* Added Describe Workbench Function
    * result_present?(str)
        * searches for a given string in the search results table
          and reports whether or not that string was found

### v2.6.3 - 2013/09/12

* Fixed Describe Workbench Definitions
    * Doc Type Radio Buttons
        * Bib
        * Holdings
        * Item

### v2.6.2 - 2013/08/23

* Fixed Requisition Line Item Definitions:
    * Location Selector

### v2.6.1 - 2013/08/23

* Updated Bib Editor definitions
    * Control Field 008 definition reset to original format
    * Control Field 006 definitions updated
    * Control Field 006 line object added
    * Control Field 007 definitions updated
    * Control Field 007 line object added

### v2.6.0 - 2013/08/23

* Finished Describe Workbench Screen
    * used for describe workbench tests
    * used for requisition existing bib record search tests

### v2.5.3 - 2013/08/22

* Requisition Interface Updated
    * added vendor alias search elements
    * added new line item definitions for:
        * new bib option
        * new bib button
        * existing bib option
        * existing bib button

### v2.5.2 - 2013/08/15

* Editor Fixes
    * move all message elements to Editor base class (OLE_QA::Framework::OLELS::Editor)/.
    * fix message definition
    * add messages definition (multiple elements returned)
    * add message_header definition
    * add message_count function (returns "0" if message_header not present)

### v2.5.1 - 2013/08/13

* Small Fixes
    * Update spec/common/page_spec.rb
    * Update specs to ensure @ole.quit
      is run after each full spec

### v2.5.0 - 2013/08/05

* Add Patron Record Screen

### v2.4.1 - 2013/07/30

* Small Fixes
    * Update .open method to default to @url
    * Update documentation
    * Update .login function on page - return false if no response

### v2.4.0 - 2013/07/25

* Unify URLs for Unified OLE Interface
    * .url method is main URL on Framework Session
    * Aliased for backwards compatibility:
        * .base_url -> .url
        * .ls_url   -> .url
        * .fs_url   -> .url

### v2.3.0 - 2013/07/24

* Pages Added
    * OLEFS
        * Load Summary Lookup (for Staff Upload load reports)
* Functions Added
    * OLEFS
        * Lookup
            * row_by_td_text, row_by_text
                * Return a search results row by the text of a td element in that row.
        * Load Summary Lookup
            * doc_link_by_text
                * Return the link to a load report document by the text found in any td
                element in that row.


### v2.2.0 - 2013/07/22

* Staff Upload
    * staff upload page added to OLELS
    * accessible through OLEFS main menu page, but coded on OLELS

### v2.1.2 - 2013/07/18

* Compatibility Update
    * No new or updated definitions added.


### v2.1.1 - 2013/07/12

* Fix Bib Editor
    * Update control field IDs for compatibility with M1-r12784
* Fix Editor base Class
    * move message to Bib Editor, span ID is not universal across editor types

### v2.1.0 - 2013/07/10

* Login/Logout
    * Added .login(username) & .logout to OLE_QA::Framework::Page_Helpers
        * .login attempts to login with given username string
            * returns true if successful, false if not
            * raises OLE_QA::Framework::Error if login field not found
        * .logout attempts to logout
            * returns true if successful, false if not
        * both methods use @browser instance variable instead of  browser
        function, as the login field is never found within iframeportlet.
* Open Method
    * Added .open(url) to OLE_QA::Framework::Session
        * opens the given URL, defaults to @base_url
* Custom Error Class
    * Added OLE_QA::Framework::Error class (inherits StandardError).
* OLELS
    * Main Menu
        * added some links as elements
    * Editors
        * added .save_record function to base class
        * Item Editor
            * fixed .call_number_type_selector definition
    * Patron Lookup
        * added page
    * Loan
        * added page
    * Return
        * added page
* QA Helper Module
    * redefined .set_function
        * Now uses splat expansion to give functions optional parameters.
        * Currently, all parameters are considered optional.
        * Defaults can be defined for function by declaring |var = value| in block.

### v2.0.4 - 2013/07/05

* .function - alias for .set_function
* Common Object class added
    * The Common Object class is inherited by both Page & Data Object classes in order
        to perform a DRYer initialize for both.

### v2.0.3 - 2013/07/05

* .elements & .functions methods on Page & Data Objects
    * elements and functions defined on Page and Data Objects are automatically added
        to the .elements and .functions array accessor methods, respectively.
* .set_function
    * defines a function in the same manner as an element - a lambda to be evaluated
        which represents a set of actions to be taken in sequence by the browser.

### v2.0.2 - 2013/07/05

* Wait Constants -> Wait Reader Attributes
    * .explicit_wait & .doc_wait still set from options, but now exist as reader
        attributes on the OLE_QA::Framework module.

### v2.0.1 - 2013/07/05

* Wait Constants in OLE_QA::Framework Namespace
    * Explicit_Wait -> explicit_wait option
    * Doc_Wait -> doc_wait option

### v2.0.0 - 2013/07/03

* Namespace Refactoring
    * Main namespace has been changed from OLE_QA to OLE_QA::Framework.
    * Main session-handling class has been renamed to OLE_QA::Framework::Session.
    * Constants VERSION and COMPATIBILITY have been moved to OLE_QA::Framework.
    * Main Menu classes moved to OLEFS & OLELS namespaces under OLE_QA::Framework.
* OLELS
    * Added Describe Workbench page

### v1.0.0 - 2013/06/24

* Watir-Webdriver
    * The entire project has been refactored to use Watir-Webdriver.
* ole-qa-framework.rb
    * Renamed from ole_qa_framework.rb
    * Spec renamed
    * Module renamed from OLE_QAF to OLE_QA
    * now loads version info programmatically
        * lib/ole_qa_framework/VERSION.rb
        * lib/ole_qa_framework/COMPATIBILITY.rb
    * loads subdirectories in order of dependency, files in alphabetical order
    * added .fs_url method, returns @base_url
    * refactored configuration files
        * implicit_wait is now set to 0 by default for Watir compatibility
* modules
    * rewrites to
        * qa_helpers.rb
            * contains .set_element for data objects and page objects
                * expects an element name, an element type, a how, and a what
                * creates an instance variable and an accessor on self
                * allows for extension of element definitions in data & page objects
                * allows to optionally redefine a previously-defined element on self with force option
            * contains .set_elements for data objects and page objects
                * expects a nested array of element definitions
                * populates elements as instance variables on self
                * uses .set_element for individual elements
        * qa_data_helpers.rb
            * contains .load_elements for data objects
            * contains .replace_identifiers for line/subline objects
        * qa_page_helpers.rb
            * contains .load_elements for page objects

---------------------------------------------------------------------------------------------------------
    *HISTORICAL* - Below this point, the information in this changelog may no longer
    be applicable, as it pertains to the previous Selenium-WebDriver based version of
    this testing framework.

    ### v0.8.0 - 2013/06/07

    * Instance Editor (OLELS)
        * Create Instance Editor Page
            * Ownership Extent Line
                * Ownership Note Line
            * Access Info Line
            * Holdings Note Line
        * Create Editor Note Line Object
            * "Access Info" Note Type
            * "Holdings Note" Note Type
            * "Ownership Note" Note Type
    * Item Editor
        * Create Item Editor Page
            * Item Note Line Object
        * Create Editor Note "Item Note" Type

    ### v0.7.0 - 2013/06/06

    * Remodel Line Object & Subline Object Handling in PURAP Documents
        * Remove .add_line methods
            * .add_button will need to be clicked manually
            * Line Objects & Subline Objects will be noted as new or added upon
            instantiation.  The default will be "new".
                * new.yml - will still contain element definitions not needing
                line number, line identifier, subline number, and subline identifier
                substitution
                * added.yml - will still contain element definitions needing line
                number, line identifier, subline number, and subline identifier
                substitution
                * conversion will not occur automatically between the two sets of
                identifiers; instead, a new instance will need to be created to
                represent the item after it has been added
                * this functionality is more accurate in that adding a line on a
                PURAP document will always populate the added line and retain a new
                line, which will always have value-independent identifiers
        * Replace nested object handling methods
            * Replace .remove_X_line(which, do_click) with .delete_X_line
                * the .delete_button will need to be clicked manually if it exists
                * this further separates the page model from the behavior of the actual
                page on the screen in order to allow users to remove inappropriate lines
                from the model
                * delete_X_line
                    * delete the highest instance variable representing a line item or
                    subline item of X type (e.g., .delete_line_item will remove
                    .line_item_N from a PURAP document's model)
                    * decrement the appropriate .X_line_counter variable
            * Replace .add_X_line(do_click) with .create_X_line
                * the .add_button will need to be clicked manually if it exists and
                needs to be clicked
                * this further separates the page model from the behavior of the actual
                page on the screen in order to allow users to create lines on the page
                model when they are expected to already exist on the actual document being
                modeled (e.g., when a Purchase Order is opened, this will facilitate
                the creation of both line items and accounting lines to match the expected
                shape of the Purchase Order on the screen)
                * create_X_line
                    * increment the appropriate .X_line_counter variable
                    * create a new instance variable representing a line item or subline
                    item of X type (e.g., .create_accounting_line will create a new
                    .accounting_line_N where N = .accounting_line_counter + 1)
            * Using "create" and "delete" instead of "add" and "remove" should make it clearer
            that the new functionality refers to instances on the page model rather than items
            on the actual page itself.
        * Instantiate new pages with .new_X_line instead of .X_line_1, where X is a line object
        type
        * Instantiate new line objects with .new_X_line instead of .X_line_1, where X is a
        subline object type

    ### v0.6.0 - 2013/06/05

    * Rename Requisition File
        * lib/olefs/pages/requisition.rb -> lib/olefs/pages/purap_requisition.rb
        * lib/olefs/pages/requisition/ -> lib/olefs/pages/purap_requisition/
        * These changes were made so that purchase order definitions & functionality
          can be inherited from requisitions (load order is alphabetic).
    * New Data Objects
        * Receiving Line
            * Line Object
            * About
                * Represents a single Receiving Line on a Receiving Document
                * Analogous in behavior to Line Item on Requisition and Purchase Order
                * Can be added, but cannot be deleted
                    * the function is not supported in OLE -- there is no delete button
                    for a newly-added Receiving Line
                * Has receiving-related notes lines, but no accounting lines
                * The only common subline is the copies line
                * Even if the related line item has no copies line and the # of copies is
                1 for a given item, the copies line is required on the receiving line
            * Fields
                * description field
                * quantity ordered field
                * parts ordered field
                * prior quantity received field
                    * (not available on new receiving line)
                * prior parts received field
                    * (not available on new receiving line)
                * quantity to be received field
                * parts to be received field
                * item received quantity field
                * item received parts field
                * item returned quantity field
                * item returned parts field
                * item damaged quantity field
                * item damaged parts field
                * available to public checkbox
                    * public view checkbox (alias)
            * Methods
                * add_line
                * add sublines
                    * add_exception_notes_line
                    * add_receipt_notes_line
                    * add_processing_line
                    * add_copies_line
                * remove sublines
                    * remove_exception_notes_line
                    * remove_receipt_notes_line
                    * remove_processing_line
                    * remove_copies_line
                * counters
                    * exception_notes_line_counter
                    * receipt_notes_line_counter
                    * processing_line_counter
                    * copies_line_counter
        * Exception Notes Line
            * Subline Object
            * Fields
        * Receipt Notes Line
            * Subline Object
            * Fields
        * Processing Line
            * About
                * Represents a subline item for Special Processing Instructions
                added as a special Note Type on a requisition or purchase order
                Notes Line.
                * Cannot be added or removed on the Receiving Line.
                * Retains an .add_line method for consistency.  Use .add_line to
                create the object to represent an existing Special Processing
                Instructions Note line on the Receiving Line.  There is no
                .add_button or .delete_button element to click, so .add_line
                is permanently aliased to do .add_line(do_click = false).
            * Subline Object
            * Fields
                * note field
                * acknowledge checkbox
        * PREQ Line Item
            * About
                * Represents a special line item for payment requests only
            * Line Object
            * Fields
                * po_unit_price_field
                * format_selector
                * vendor_item_identifier_field
                * number_of_copies_ordered_field
                * number_of_parts_ordered_field
                * list_price_field
                * discount_field
                * discount_type_selector
                * assigned_to_trade_in_checkbox
                    * becomes assigned_to_trade_in_field when added
                * description_field
                * receipt_status_selector
                * new_bib_button
                    * becomes edit_bib_button when added
        * Invoice Notes Line
            * About
                * Represents a special type of notes line for payment requests
                only
            * Subline Object
            * Fields
                * note_field
    * New Pages
        * Purchase Order
            * Inheritance
                * Page -> OLEFS E-Doc -> Requisition -> Purchase Order
            * Fields
                * Purchase Order Detail Area
                    * funding source selector
                * Vendor Tab
                    * vendor name field
                        * redefined from requisition
                * View View Related Docs Tab
                    * view related requisition link
                * Input Buttons
                    * sensitive data button
                    * payment hold button
                    * amend button
                    * void order button
                    * receiving button
                    * print button
                    * send ad hoc button
            * NB - Functionality is largely established by requisition.
            See notes in YARD Documentation on Purchase Order class for more
            information about how a Purchase Order can be modeled appropriately
            for different OLE workflows.
        * PURAP Document
            * Inheritance
                * Page -> OLEFS E-Doc -> PURAP Document
            * Fields
                * Route Log Tab
                    * route log tab toggle
                    * actions taken array
                    * actions taken by array
            * Methods
                * add_line_item
                * remove_line_item
            * Purpose
                * The Line Item methods were moved from the Requisition document
                page to the PURAP document page so that they could be inherited by
                multiple document types.
        * Receiving Document
            * Inheritance
                * Page -> OLEFS E-Doc -> PURAP Document -> Receiving Document
            * Fields
                * Vendor Tab
                    * vendor tab toggle
                    * date received field
                    * packing slip number field
                    * bill of lading number field
                    * reference number field
                    * carrier selector
                * Delivery Tab
                    * delivery tab toggle
                    * campus field
                    * building field
                    * address field
                    * room field
                    * city field
                    * state field
                    * postal code field
                    * country field
                    * delivery to field
                    * phone number field
                    * email field
                * View Related Documents Tab
                    * view related documents tab toggle
                    * view related po link
                    * view related requisition link
            * Methods
                * add_receiving_line
                * remove_receiving_line
                * receiving_line_counter
            * About
                * The Receiving Document uses a different type of item line.
                Instead of the Line Item, Line Items are represented by Receiving
                Lines.  A document begins with at least one full receiving line,
                so the Receiving Document class creates two receiving lines upon
                instantiation - one added, and one new.  Like the Requisition and
                Purchase Order classes, the highest receiving line number will always
                point at the new line to-be-added.
        * Payment Request
            * Inheritance
                * Page -> OLEFS E-Doc -> PURAP Document -> Payment Request
            * Fields
                * Invoice Info Tab
                    * invoice_number_field
                    * pay_date_field
                    * invoice_date_field
                    * immediate_pay_checkbox
                    * payment_attachment_checkbox
                    * invoice_type_field
                    * invoice_subtype_field
                    * payment_method_selector
                * Titles Tab
                    * grand_total_field
                    * additional_charges_toggle
                    * freight_extended_cost_field
                    * freight_description_field
                    * shipping_handling_extended_cost_field
                    * shipping_handling_description_field
                    * minimum_order_extended_cost_field
                    * minimum_order_description_field
                    * miscellaneous_overhead_extended_cost_field
                    * miscellaneous_overhead_description_field
                    * prorate_by_quantity_checkbox
                    * prorate_by_dollar_checkbox
                    * prorate_manual_checkbox
                    * close_po_checkbox
                * View Related Docs Tab
                    * view_related_tab_toggle
                    * view_related_requisition_link
                    * view_related_po_link
            * Methods
                * add_line_item
                * remove_line_item
            * About
                * The Payment Request uses line item objects similar to those on the
                requisition and purchase order, but with different fields, or some fields
                in different locations, and so uses its own class of line item:
                OLE_QA::OLEFS::PREQ_Line_Item.
                * The PREQ Line Item only features two types of sublines:
                    * accounting lines
                    * invoice notes lines
    * New Features
        * Line Object click option
            * In all subclasses of Line Object, the option (do_click) has been added
            to the .add_line and .remove_line methods.  If do_click is set to true
            (default value in most cases) then the test script will attempt to click
            the .add_button or .delete_button element on a given line object.  This
            option is backwards-compatible, and has been included in order to allow more
            accurate modeling of existing line items on new OLEFS PURAP documents, as
            purchase orders, receiving documents, and payment request documents come with
            prepopulated line items.
        * Subline Object click option
            * In all subclasses of Subline Object, the option (do_click) has been
            added to the .add_line and .remove_line methods.  If do_click is set to
            true (default value in most cases) then the test script will attempt to click
            the .add_button or .delete_button element on a given subline object.  This
            option is backwards-compatible, and has been included to give more accuracy
            in modeling PURAP document line items which might include multiple subline
            objects at document creation.

    ### v0.5.0 - 2013/05/30

    * Main Testing Framework Class
        * Renamed, OLE_QA::OLE_Framework -> OLE_QA::Framework
        * Removed .doc_route_wait (this will be handled by OLE_QAT)
        * Removed requirements for Chronic and Benchmark (to be handled by OLE_QAT)
    * YARD
        * Added development dependency for YARD
        * Added formatted comments for YARD Documentation to most complete base classes.
    * New Data Objects
        * Subline Object
            * Created base class and element definitions
            * Used as a nested line, e.g. for an accounting line in OLE Financial System
            * Subclass of Line Object
            * .add_line
                * clicks "add_button" if defined
                * parses element hashes, removes original elements, adds redefined elements
            * Created example element definitions in lib/common/subline_object/
                * new.yml - element definitions before adding
                * added.yml - element definitions after adding
            * Element definitions undergo two rounds of replacement
                * LINEID/LINENUM in identifiers are replaced by Line Item values
                * SUBLINEID/SUBLINENUM in identifiers are replaced by relevant Sub Line values
        * Accounting Line
            * Now a subclass of Subline Object
            * Definitions in
                * lib/OLEFS/objects/accounting_line/
                    * new.yml
                    * added.yml
            * .add_line (from subline object)
            * fields for:
                * chart code
                * account number
                * sub-account
                * object code
                * sub-object
                * org ref id
                * dollar amount
                * percentage
        * Copies Line
            * subclass of Subline Object
            * Definitions in
                * lib/OLEFS/objects/copies_line/
                    * new.yml
                    * added.yml
            * fields for:
                * copies
                * starting copy
                * location copies
        * Notes Line
            * subclass of Subline Object
            * Definitions in
                * lib/OLEFS/objects/notes_line/
                    * new.yml
                    * added.yml
            * fields for:
                * note type
                * note
        * Line Item
            * Line Object
                * represents a single line item on an OLEFS PURAP Document
                * contains sub-objects:
                    * Accounting Line
                    * Copies Line
                    * Notes Line
                * has counters for
                    * accounting lines
                    * copies lines
                    * notes lines
                * has add & remove functionality for each sub-object listed above
                    * add_X_line
                        * clicks the add button on the highest-numbered X line
                        * invokes add_line function on that line to switch from "new" to "added" definitions
                        * advances counter
                    * remove_X_line(N)
                        * clicks the delete button on the Nth line of X type
                        * decrements the counter
                        * resets the highest line of X type to a new, non-added line
                * starts out with:
                    * accounting_line_1
                    * copies_line_1
                    * notes_line_1
                    * all counters set to 1
                * NB - the number of a sub-object line (e.g. the 1 in accounting_line_1)
                  represents the number of line after it is added; the highest numbered
                  line therefore will always point at the new line at the top of the sub-tab,
                  as there is always a new line of any given type there
            * Definitions in
                * lib/OLEFS/objects/line_item
            * Has fields for:
                * number of copies
                * number of parts
                * list price
                * discount
                * item price source
                * request source
                * item type
                * format
                * category
                * discount type
                * public view
                * route to requestor
                * requestor id
                * extended cost
                * unit cost
            * has button/link to current bib
            * has tab toggles for
                * accounting lines
                * copies
                * notes
    * New Pages
        * OLEFS Lookup Page (base class)
           * Inheritance
               * Page -> Lookup
           * Fields
               * title
               * active indicator yes
               * active indicator no
               * active indicator both
               * search button
               * clear button
               * cancel button
        * Requisition
            * Inheritance
                * Page -> OLEFS E-Doc -> Requisition
            * Data Objects
                * Line Item
            * Fields
                * Requisition Detail Area
                    * license request checkbox
                    * receiving required checkbox
                    * payment request approval required checkbox
                * Additional Information Tab
                    * additional info tab toggle
                    * phone number field
                * Delivery Tab
                    * delivery tab toggle
                    * building field
                    * room field
                    * building search icon
                    * campus search icon
                * Vendor Tab
                    * vendor tab toggle
                    * vendor name field
                    * vendor name added field
                    * vendor search icon
                * Titles Tab
                    * grand total field
                * View Related Docs Tab
                    * view related tab toggle
                    * view related po link
            * Methods
                * add_line_item
                    * Adds a line item
                    * Increments the line_item_counter instance variable
                * remove_line_item(which)
                    * Removes a target line item by clicking the delete button
                    * Deletes the highest line item instance variable
                    * Resets the next-highest line item to have new line elements
                    * blocks if target line is highest line (and therefore unadded)
                    * blocks if target line is higher than line item counter
        * Vendor Lookup
            * Inheritance
                * Page -> OLEFS Lookup -> Vendor Lookup
            * Fields
                * vendor name field
                * tax number field
                * vendor number field
                * vendor type selector
                * state field
                * commodity code field
                * supplier diversity selector
        * Building Lookup
            * Inheritance
                * Page -> OLEFS Lookup -> Building Lookup
            * Fields
                * campus code field
                * building code field
                * building name field

    ### v0.4.0 - 2013/05/03

    * Data Helpers
        * .replace_identifiers
            * given an element hash, replace identifier strings in hash with dynamic values
        * .replace_names
            * given an element hash, replace the keys in the hash with dynamic values
    * Line Object
        * make use of .replace_identifiers
    * OLEFS E-Doc
        * automatically perform .frame_select upon open
    * Checkbox Element
        * added .check and .uncheck methods
            * these methods will return output in addition to setting or unsetting a checkbox
                * true if successful or unnecessary (depending on previous state)
                * false if unsuccessful
    * Bib Editor Line
        * Represents a line in the OLELS Bib Editor
        * Can represent a Leader Field line, a Control Field line, or a Data Field line
            * dynamically set with line_type variable
            * defaults to 'data'
            * configures elements from yaml_files in lib/olels/objects/bib_editor/
                * leader_line.yml
                * control_line.yml
                * data_line.yml
            * sets the following elements on instances, depending on type
                * value_field (all)
                * tag_field (control & data only)
                * indicator_1_field (data only)
                * indicator_2_field (data only)
                * add_button (control & data only)
                * remove_button (control & data only)
    * Data Element
        * .verify_text
            * now includes text & text.strip verifictions
            * text in OLE is often wrapped with whitespace or newline characters
            * target text will be verified with or without .strip
    * Editor
        * base class for OLELS Describe Editor interfaces
        * has common elements:
            * .submit_button                - submit record
            * .cancel_button                - cancel edits
            * .close_button                 - close record
            * .title                        - title span of current editor
            * .return_to_search_button      - close & return to bib search
    * Bib Editor
        * represents a Marc Bibliographic Record Editor Page
        * native to OLELS, but opens in OLEFS on PURAP documents & DocStore on edit
        * .leader_line
            * data object for leader line consisting of a value field
            * elements:
                * .value_field
        * .control_line_1
            * data object automatically created for first control line
            * elements:
                * .tag_field
                * .value_field
        * .data_line_1
            * data object automatically created for first data line
            * elements:
                * .tag_field
                * .indicator_1_field
                * .indicator_2_field
                * .value_field
        * .control_line_N
            * sequential data objects automatically created or deleted for add'l control lines
        * .data_line_N
            * sequential data objects automatically created or deleted for add'l data lines
        * .add_control_line
            * adds a new control_line_N
            * increments .control_line_counter
        * .add_data_line
            * adds a new data_line_N
            * increments .data_line_counter
        * .remove_control_line(N)
            * removes control_line_N
            * shifts control lines downward
            * decrements .control_line_counter
        * .remove_data_line(N)
            * removes data_line_N
            * shifts data lines downward
            * decrements .data_line_counter
        * .save
            * saves current record with .submit_button
            * increments control lines for addition of automagic control line by OLE
        * .save_message
            * message span for save message

    ### v0.3.2 - 2013/05/01

    * Checkbox Element
       * Added Checkbox Element class
           * .checked? - returns true/false
           * .verify_checked - returns true/false, rescues if element not found
    * Line Object
       * new.yml
           * added all necessary item definitions
    * Requisition
       * URLs
           * fixed definition for [:new] in URLs hash file
    * Spec
       * Made fixes to:
           * Data Object
           * Line Object
    * Page
       * .frame_present?
           * method is no longer private

    ### v0.3.1 - 2013/04/30

    * Line Object
        * new.yml
            * also now undergoes LINENUM/LINEID replacement

    ### v0.3.0 - 2013/04/30

    * Line Object
        * common/
            * Line Object - base class for addable line objects, includes initialize and add_line methods
                * .add_line
                    * clicks self.add if such an element exists
                    * removes previous elements set by new.yml and replaces them with those in added.yml
            * line_object/
                * new.yml - YML definitions file for elements while the line object is still new
                    * uses static definitions for element identifier strings
                    * this is where you would include an .add element
                * added.yml - YML definitions file for elements after the line object has been added
                    * uses dynamic definitions for element identifier strings
                    * these elements will only exist on the line object after .add_line is invoked
        * spec/elements/
            * Line Object Spec
                * tests for class constituency
                * tests for element constituency
                * tests for .add_line functionality
                * uses lib/common/line_object/new.yml & added.yml for testing

    ### v0.2.3a - 2013/04/30

    * Remove Test Pages
        * remove directory & load references
    * Load Modules First
        * altered load order to load modules first; assuming they will not contain WebDriver-dependent methods

    ### v0.2.2b - 2013/04/29

    * Gem Build & Install Successful
        * Completed Gemspec
            * Added dependencies
            * Added development dependency
        * Refactored loading of libraries
            * Verified libraries load after gem install

    ### v0.2.2a - 2013/04/29

    * Now using Version Gem to maintain OLE_QA::VERSION constant
        * ole_qa_framework.gemspec depends on Version
    * Common
        * data_object
            * base class for all Data Objects
            * collection of element definitions below the page level
            * intended for creating recursive data objects
        * line_object
            * special Data Object
            * mostly used by OLEFS PURAP Documents
            * represents a single line in a tab that can be added or removed
            * should have two data files
                * new.yml - for a new data line, where all element IDs are set to 0
                * added.yml - used after data line is added, redefines element IDs dynamically
    * Module
        * qaf_helpers - general module for all helpers
        * qaf_page_helpers - helper module for page objects specifically
            * (currently unused)
        * qaf_data_helpers - helper module for non-page data objects
            * (currently unused)
    * OLEFS
        * e_doc - base page definition for all e-documents in OLE Financial System
        * objects/ - object definitions for OLE Financial System data objects
            * line_item - Used to create a Line Item for any OLEFS Purchasing/AP e-documents
            * accounting_line - Used to create control elements for an Accounting Line on a Line Item
            * copies_line - Used to create control elements for a Copies Line on a Line Item
        * pages/
            * requisition - will be used to create base class for OLEFS PURAP Requisition Document
                * (incomplete)
            * main_menu - used to create definitions for OLEFS Main Menu
                * (incomplete)
    * OLELS
        * e_doc - base page definition for all e-documents in OLE Library System
        * editor - base class for various bibliographic record editors in OLELS
            * (incomplete)
            * must be loaded before each editor is loaded, hence inclusion in OLELS/ instead of pages/
            * will be used by:
                * MARC Editor
                * Holdings Editor
                * Item Editor
        * pages/
            * main_menu - used to create definitions for OLELS Main Menu
                * (incomplete)

    ### v0.2.2 - 2013/04/15

    * YAML Configuration
        * lib/config/default_options.yml
            * Default configurations for OLE QA Framework
            * currently points to OLE Test Environment
        * lib/config/defaults/
            * ole_dev_environment.yml
                * points to OLE Development Environment
            * ole_test_environment.yml
                * points to OLE Test Environment
            * ole_test_no_headless.yml
                * points to OLE Test Environment
                * runs browser without Headless gem (no xvfb session invoked)

    ### v0.2.1 - 2013/04/12

    * Test Pages
        * lib/test_pages defines pages for testing base classes and methods
        * lib/test_pages/kuali_kis
            * Kuali KIS - http://kis.kuali.org/
            * Defines base page class with URL & some elements for spec testing
        * spec/test_pages/kuali_kis_spec
            * Defines spec behaviors for Kuali KIS page for testing

    ### v0.2.0 - 2013/04/11

    * API Change
        * All classes now enclosed within OLE_QA namespace
    * lib/module
        * QAF_Helpers
            * includes mixin methods for dynamically adding attributes to classes

    ### v0.1.1 - 2013/04/10

    * Structure Changes
        * Elements -> Objects
        * Browser
            * includes web_element.rb base class for Selenium web elements
            * includes web_element/ directory for element subclasses
                * data_element.rb - basic class for an element which contains useful data
                * input_element.rb - for input fields and controls
                * selector_element.rb - for drop-down select menus
        * OLEFS
            * Pages
                * main_menu.rb - page class for OLEFS main menu
        * OLELS
            * Pages
                * main_menu.rb - page class for OLELS main menu
     * Additions
        * Rakefile
            * spec namespace for running rspec tests
                * run_all task for running all specs
                * non_ole task for running non-OLE specs (e.g. for browser setup &c.)
     * Compatibility Update
        * Updated compatibility file for most recent OLE Release - 0.8.0-u-r11754

    ### v0.1.0 - 2013/04/05

    * Initial commit
        * Created directory structure and base class files
    * Base class
        * Created base class with browser method as interface for Selenium Webdriver
    * Web Element class
        * Created web element class to extend functions of Selenium web element
        * Added Functions:
            * present? - tests if a web element is present, returns true or false
            * enabled? - tests if a web element is enabled, returns true or false
            * type() - enters given text into a web element
            * value - returns the value of an input element
    * Basic Structure
        * Elements
            * Element - base class for data objects and other non-page entities
            * Page - base class for pages in OLE
        * OLEFS
            * Element - used to define OLE Financial System data objects
            * Page - used to define OLE Financial System base page elements and functions
        * OLELS
            * Element - used to define OLE Library System data objects
            * Page - used to define OLE Library System base page elements and functions
        * Docstore
