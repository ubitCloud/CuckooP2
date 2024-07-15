## Issue Summary

### Project Details
- **Project Purpose:** Unit testing sample project using the Cuckoo mocking framework.
- **Script Location:** Saved at the root directory and executed manually in the terminal. Plan to move the script into the run script phase on the test target.

### Issue Description
#### Initial Setup:
- **Cuckoo Version:** 1.10.4
- **Outcome:** `GeneratedMocks.swift` was successfully generated with the expected content.

#### After Update:
- **Cuckoo Version:** 2.0.8
- **Outcome:** `GeneratedMocks.swift` is still being generated but is now empty.

### Problem
- The `GeneratedMocks.swift` file is empty after updating to Cuckoo 2.0.8.
- Unable to identify the cause of the issue.

### Request for Help
- Need assistance in understanding what is going wrong with the generation of the mocks in Cuckoo 2.0.8.
