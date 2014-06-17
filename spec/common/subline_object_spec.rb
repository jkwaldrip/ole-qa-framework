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

describe 'A Subline Object' do

  before :all do
    @ole = OLE_QA::Framework::Session.new
    @line = OLE_QA::Framework::Line_Object.new(@ole, 1)
    @subline = OLE_QA::Framework::Subline_Object.new(@ole, @line, 1)
  end

  after :all do
    @ole.quit unless @ole.nil?
  end

  it 'should create a new instance' do
    @subline.class.should == OLE_QA::Framework::Subline_Object
    @subline.class.superclass.should == OLE_QA::Framework::Line_Object
  end

  it 'should have its parent line object in the parent line reader attribute' do
    @subline.parent_line.should == @line
  end

  it 'should have access to parent line methods' do
    @subline.parent_line.line_number = 2
    @line.line_number.should == 2
    @line.line_id.should == 1
  end
end