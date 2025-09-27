CREATE OR REPLACE SECRET git_secret
    TYPE = password
    USERNAME = '<git_username>'
    PASSWORD = '<git_token>';

CREATE OR REPLACE API INTEGRATION git_api_integration_example
    API_PROVIDER = git_https_api
    API_ALLOWED_PREFIXES = ('https://github.com/')
    ALLOWED_AUTHENTICATION_SECRETOUR_FIRST_DBS = (git_secret)
    ENABLED = TRUE;