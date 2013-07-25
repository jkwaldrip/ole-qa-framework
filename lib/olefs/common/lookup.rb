#  Copyright 2005-2013 The Kuali Foundation
#
#  Licensed under the Educational Community License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at:
#
#    http://www.opensource.org/licenses/ecl2.php
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

module OLE_QA::Framework::OLEFS
  # A Lookup Screen in OLEFS
  class Lookup < OLE_QA::Framework::Page
    # Set lookup page elements.
    def set_elements
      super
      element(:title)                           {b.h1(:xpath => "//div[@id='headerarea-small']/h1")}
      element(:active_indicator_yes)            {b.radio(:id => "activeYes")}
      element(:active_indicator_no)             {b.radio(:id => "activeNo")}
      element(:active_indicator_both)           {b.radio(:id => "activeBoth")}
      element(:search_button)                   {b.input(:title => "search")}
      element(:clear_button)                    {b.input(:title => "clear")}
      element(:cancel_button)                   {b.input(:title => "cancel")}
    end

    # Set commonly-used lookup page functions.
    def set_functions
      super
      # Return a search results row by searching on the text in a given table cell.
      function(:row_by_td_text)                 {|which| b.td(:xpath => "//table[@id='row']/descendant::td[contains(text(),'#{which}')]").parent}
      function(:row_by_text)                    {|which| b.td(:xpath => "//table[@id='row']/descendant::td[contains(text(),'#{which}')]").parent}
    end
  end
end