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

module OLE_QA::Framework::OLELS
  # The OLE Library System MARC Bibliographic Record Editor Screen
  class Bib_Editor < Editor
    # Set OLE Library System Bib Editor screen elements.
    # @note  Elements for individual Marc data lines are set on
    #   {OLE_QA::Framework::OLELS::Data_Line}
    def set_elements
      super
      element(:bib_record_status_selector)          {b.select_list(:id => "StatusFieldSection_control")}
      element(:set_button)                          {b.button(:id => "set_button")}
      element(:leader_field)                        {b.text_field(:id => "LeaderTextInputField_control")}
      # Control Field Buttons
      element(:control_003_link)                    {b.a(:id => "003FieldLink")}
      element(:control_005_link)                    {b.a(:id => "005FieldLink")}
      element(:control_006_link)                    {b.a(:id => "006FieldLink")}
      element(:control_007_link)                    {b.a(:id => "007FieldLink")}
      element(:control_008_link)                    {b.a(:id => "008FieldLink")}
      element(:control_009_link)                    {b.a(:id => "009FieldLink")}
      # Control Fields & Related Elements
      #   (NB - Dependent on links & leader field state!)
      # TODO - Update when OLE-4431 is resolved.  {https://jira.kuali.org/browse/OLE-4431}
      element(:control_001_field)                   {b.text_field(:id => "Control_Field_001_control")}
      element(:control_003_field)                   {b.text_field(:id => "Control_Field_003_control")}
      element(:control_005_field)                   {b.text_field(:id => "Control_Field_005_control")}
      element(:control_006_format_selector)         {b.select_list(:id => "006Field_0_control")}
      element(:control_006_set_button)              {b.button(:id => "ControlField_Set_button")}
      element(:control_006_clear_button)            {b.button(:id => "ControlField_Reset_button")}
      element(:control_007_catmtrl_selector)        {b.select_list(:id => "007Field_0_control")}
      element(:control_007_set_button)              {b.button(:id => "ControlField007_Set_button")}
      element(:control_007_clear_button)            {b.button(:id => "ControlField007_Clear_button  ")}
      element(:control_008_field)                   {b.text_field(:id => 'Control_Field_008_control')}
      # Read-Only Fields (for when the Bib Editor is opened in 'View' mode)
      element(:readonly_edit_button)                {b.button(:text => /Edit/)}
      element(:readonly_created_by)                 {b.span(:id => 'createdBy_control')}
      element(:readonly_created_date)               {b.span(:id => 'createdDate_control')}
      element(:readonly_leader_field)               {b.span(:id => 'LeaderTextInputField_control')}
      element(:readonly_control_001_field)          {b.span(:id => 'Control_Field_001ReadOnly_control')}
      element(:readonly_control_003_field)          {b.span(:id => 'Control_Field_003ReadOnly_control')}
      element(:readonly_control_005_field)          {b.span(:id => 'Control_Field_005ReadOnly_control')}
      element(:readonly_control_008_field)          {b.span(:id => 'Control_Field_008ReadOnly_control')}
    end

    def set_functions
      super
      # Functions for iterative fields on the read-only version of the Marc Bib Editor.
      # - Invoke with numerical value (1-based) of repeatable line.
      #   e.g. bib_editor.readonly_data_field(1).text to get the text of the first Marc data line in the record.
      function(:readonly_control_006_field)         {|which = 1| which -= 1 ; b.span(:id => "Control_Field_006ReadOnly_line#{which}_control")}
      function(:readonly_control_007_field)         {|which = 1| which -= 1 ; b.span(:id => "Control_Field_007ReadOnly_line#{which}_control")}
      function(:readonly_tag_field)                 {|which = 1| which -= 1 ; b.span(:id => "dataField_tag_id_readOnly_line#{which}_control")}
      function(:readonly_ind1_field)                {|which = 1| which -= 1 ; b.span(:id => "dataField_ind1_id_readOnly_line#{which}_control")}
      function(:readonly_ind2_field)                {|which = 1| which -= 1 ; b.span(:id => "dataField_ind2_id_readOnly_line#{which}_control")}
      function(:readonly_data_field)                {|which = 1| which -= 1 ; b.span(:id => "dataField_value_id_readOnly_line#{which}_control")}
    end

    # Add the first Marc Data Line to a new Bib Editor record.
    # @note There will always be at least one Marc Data Line on a newly-opened record,
    #   whether newly-created or previously extant.
    def set_lines
      create_006_line(1)
      create_007_line(1)
      create_data_line(1)
    end
    
    # Add a control field 006 line to the editor page model.
    def create_006_line(which = 1)
      create_line("control_006_line_#{which}", "Control_006_Line", which)
    end                         
    alias_method(:add_006_line, :create_006_line)

    # Add a control field 007 line to the editor page model.
    def create_007_line(which = 1)
      create_line("control_007_line_#{which}", "Control_007_Line", which)
    end
    alias_method(:add_007_line, :create_007_line)
    
    # Add a Marc data line to the editor page model.
    def create_data_line(which = 1)
      create_line("data_line_#{which}","Data_Line", which)
    end
    alias_method(:add_data_line, :create_data_line)

    # Remove a Marc data line from the editor page model.
    def remove_data_line(which = 1)
      remove_line("data_line_#{which}")
    end
    alias_method(:delete_data_line,:remove_data_line)

    # Remove a control 006 line from the editor page model.
    def remove_006_line(which = 1)
      remove_line("control_006_line_#{which}")
    end
    alias_method(:delete_006_line,:remove_006_line)

    # Remove a control 007 line from the editor page model.
    def remove_007_line(which = 1)
      remove_line("control_007_line_#{which}")
    end
    alias_method(:delete_007_line,:remove_007_line)


  end
end