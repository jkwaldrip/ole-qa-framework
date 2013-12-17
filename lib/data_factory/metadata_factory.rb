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

module OLE_QA::Framework
  # This class contains methods to generate assorted metadata.
  class Metadata_Factory
    class << self
      include OLE_QA::Framework::Factory_Helpers
      
      # Generate a usable OLE location code.
      def location_code
        str_out = String.new
        str_out << sampler('A'..'Z')
        str_out << sampler('0'..'9')
        str_out << str(sampler(2..4))
        str_out.upcase
      end
  
    end
  end
end
