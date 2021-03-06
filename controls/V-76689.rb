control 'V-76689' do
  title "The IIS 8.5 web server must produce log records containing sufficient
  information to establish the identity of any user/subject or process associated
  with an event."
  desc "Web server logging capability is critical for accurate forensic
  analysis. Without sufficient and accurate information, a correct replay of the
  events cannot be determined.

      Determining user accounts, processes running on behalf of the user, and
  running process identifiers also enable a better understanding of the overall
  event. User tool identification is also helpful to determine if events are
  related to overall user access or specific client tools.

      Log record content that may be necessary to satisfy the requirement of this
  control includes: time stamps, source and destination addresses, user/process
  identifiers, event descriptions, success/fail indications, file names involved,
  and access control or flow control rules invoked.
  "
  impact 0.7
  tag "gtitle": 'SRG-APP-000100-WSR-000064'
  tag "gid": 'V-76689'
  tag "rid": 'SV-91385r2_rule'
  tag "stig_id": 'IISW-SV-000111'
  tag "fix_id": 'F-83385r2_fix'
  tag "cci": ['CCI-001487']
  tag "nist": ['AU-3', 'Rev_4']
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "Access the IIS 8.5 web server IIS Manager.

  Click the IIS 8.5 web server name.

  Under \"IIS\", double-click the \"Logging\" icon.

  Verify the \"Format:\" under \"Log File\" is configured to \"W3C\".

  Select the \"Fields\" button.

  Under \"Standard Fields\", verify \"User Agent\", \"User Name\" and
  \"Referrer\" are selected.

  Under \"Custom Fields\", verify the following field have been configured:

  Request Header >> User-Agent

  Request Header >> Authorization

  Response Header >> Content-Type

  If any of the above fields are not selected, this is a finding.
  "
  tag "fix": "Access the IIS 8.5 web server IIS Manager.

  Click the IIS 8.5 web server name.

  Under \"IIS\", double-click the \"Logging\" icon.

  Verify the \"Format:\" under \"Log File\" is configured to \"W3C\".

  Select the \"Fields\" button.

  Under \"Standard Fields\", select \"User Agent\", \"User Name\" and
  \"Referrer\".

  Under \"Custom Fields\", select the following fields:
  Click on the \"Source Type\" drop-down list and select \"Request Header\".
  Click on the \"Source\" drop-down list and select \"User-Agent\".
  Click “OK” to add.

  Click on the \"Source Type\" drop-down list and select \"Request Header\".
  Click on the \"Source\" drop-down list and select \"Authorization\".
  Click “OK” to add.

  Click on the \"Source Type\" drop-down list and select \"Request Header\".
  Click on the \"Source\" drop-down list and select \"Content-Type\".
  Click “OK” to add.

  Click on the \"Source Type\" drop-down list and select \"Server Variable\".
  Click “OK” to add.

  Click \"OK\".

  Click \"Apply\" under the \"Actions\" pane.
  "
  describe 'Manual review of web server is required.' do
    skip 'Manual review of web server is required'
  end
end
