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

require 'rspec'
require 'spec_helper'

describe 'An accounting line' do

  before :all do
    @ole = OLE_QA::Framework::Session.new
    @accounting_line = OLE_QA::Framework::OLEFS::Accounting_Line.new(@ole, 1, 1)
  end

  after :all do
    @ole.quit
  end

  it 'should create a new instance' do
    @accounting_line.class.should == OLE_QA::Framework::OLEFS::Accounting_Line
  end

  it 'should be a subclass of subline object' do
    @accounting_line.class.superclass.should == OLE_QA::Framework::Subline_Object
  end

  it 'should have a browser accessor' do
    @accounting_line.browser.class.should == @ole.browser.class
  end

  it 'should have line number attributes' do
    @accounting_line.line_number.should == 1
  end

  it 'should have accounting line elements' do
    methods = @accounting_line.methods
    methods.include?(:account_number_field).should be_true
    methods.include?(:sub_account_number_field).should be_true
    methods.include?(:object_field).should be_true
    methods.include?(:sub_object_field).should be_true
    methods.include?(:project_field).should be_true
    methods.include?(:org_ref_id_field).should be_true
    methods.include?(:dollar_field).should be_true
    methods.include?(:percent_field).should be_true
    methods.include?(:chart_selector).should be_true
    methods.include?(:delete_button).should be_true
    methods.include?(:balance_inquiry_button).should be_true
    methods.include?(:closed_chart_field).should be_true
    methods.include?(:closed_account_number_field).should be_true
    methods.include?(:closed_object_field).should be_true
    methods.include?(:closed_dollar_field).should be_true
    methods.include?(:closed_percent_field).should be_true
  end
end