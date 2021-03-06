control 'V-76741' do
  title "The IIS 8.5 web server must restrict inbound connections from
  nonsecure zones."
  desc "Remote access to the web server is any access that communicates
  through an external, non-organization-controlled network. Remote access can be
  used to access hosted applications or to perform management functions.

      A web server can be accessed remotely and must be capable of restricting
  access from what the DoD defines as nonsecure zones. Nonsecure zones are
  defined as any IP, subnet, or region that is defined as a threat to the
  organization. The nonsecure zones must be defined for public web servers
  logically located in a DMZ, as well as private web servers with perimeter
  protection devices. By restricting access from nonsecure zones, through
  internal web server access list, the web server can stop or slow denial of
  service (DoS) attacks on the web server.
  "
  impact 0.7
  tag "gtitle": 'SRG-APP-000315-WSR-000004'
  tag "gid": 'V-76741'
  tag "rid": 'SV-91437r2_rule'
  tag "stig_id": 'IISW-SV-000142'
  tag "fix_id": 'F-83437r1_fix'
  tag "cci": ['CCI-002314']
  tag "nist": ['AC-17 (1)', 'Rev_4']
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
  tag "check": "Note:  This requirement applies to the Web Management Service.
  If the Web Management Service is not installed, this is Not Applicable.

  Open the IIS 8.5 Manager.

  Click the IIS 8.5 web server name.

  Under \"Management\", double-click \"Management Service\".

  If \"Enable remote connections\" is not selected, this is Not Applicable.

  If \"Enable remote connections\" is selected, review the entries under \"IP
  Address Restrictions\".

  Verify only known, secure IP ranges are configured as \"Allow\".

  If \"IP Address Restrictions\" are not configured or IP ranges configured to be
  \"Allow\" are not restrictive enough to prevent connections from nonsecure
  zones, this is a finding."
  tag "fix": "Open the IIS 8.5 Manager.

  Click the IIS 8.5 web server name.

  Under \"Management\", double-click \"Management Service\".

  Stop the Web Management Service under the \"Actions\" pane.

  Configure only known, secure IP ranges are configured as \"Allow\".

  Select \"Apply\" in \"Actions\" pane.

  Restart the Web Management Service under the \"Actions\" pane."

  describe 'This test currently has no automated tests, you must check manually' do
    skip 'This check must be preformed manually'
  end
end
