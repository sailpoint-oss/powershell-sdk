---
id: v2025-jwks
title: JWKS
pagination_label: JWKS
sidebar_label: JWKS
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JWKS', 'V2025JWKS'] 
slug: /tools/sdk/powershell/v2025/models/jwks
tags: ['SDK', 'Software Development Kit', 'JWKS', 'V2025JWKS']
---


# JWKS

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Keys** | [**[]JWK**](jwk) | Array of JSON Web Keys. | [required]

## Examples

- Prepare the resource
```powershell
$JWKS = Initialize-V2025JWKS  -Keys [{alg=RS256, e=AQAB, kid=mrk-3db792b3d0a642dbbb5bb28b542929cd, kty=RSA, n=xMPKL_ccvjTDQAJ60jg5kP9XJmEIpeSb1FIjzvAnM9RP-vSiY5iW2eK0-VLHYB_XbcDT8jzneUmX90mCfiwF_F4Mjh3f0D79ncrXDglnBLKnuqmvNcblUOuOyNFts3jQSBAqB_GR_dSjKLzbs1wP3K8EJqosQGfPNuh5HxFfU79v-uZFdtkYzf_xtu8phrO84VT_DLuFJyIxLOcY5MVJ6uHlmlKXSJbMO8xTKzvcz6TTZM8XrrT73GpTCdtmNVpCLz2v14XQb-6sNeya2v037ktrgdUWFLC63iIgNKzgNr88L7x3j5AeeOi1VX_2ZAxLrz4BUtJxxyWxVthrpDCYuQ, use=sig}]
```

- Convert the resource to JSON
```powershell
$JWKS | ConvertTo-JSON
```


[[Back to top]](#) 

