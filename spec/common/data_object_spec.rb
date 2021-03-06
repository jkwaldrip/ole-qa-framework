#  Copyright 2005-2014 The Kuali Foundation
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


describe 'A Data Object' do

  before :all do
    @ole = OLE_QA::Framework::Session.new
    @data_object = OLE_QA::Framework::Data_Object.new(@ole)
  end

  after :all do
    @ole.quit unless @ole.nil?
  end

  it 'should create a new instance' do
    @data_object.class.should == OLE_QA::Framework::Data_Object
  end

  it 'should have a browser accessor' do
    @data_object.browser.class.should == @ole.browser.class
  end
end