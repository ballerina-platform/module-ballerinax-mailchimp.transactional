_Author_:  @senurah \
_Created_: 16/06/25 \
_Updated_: 16/06/25 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document records the sanitation done on top of the official OpenAPI specification from MailChimp Transactional Emails. 
The OpenAPI specification is obtained from https://raw.githubusercontent.com/mailchimp/mailchimp-client-lib-codegen/refs/heads/main/spec/transactional.json.
These changes are done in order to improve the overall usability, and as workarounds for some known language limitations.

[//]: # (TODO: Add sanitation details)
1. 
2. 
3. 

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/openapi.yaml --mode client --license docs/license.txt -o ballerina
```
Note: The license year is hardcoded to 2024, change if necessary.
