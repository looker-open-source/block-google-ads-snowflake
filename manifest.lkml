project_name: "block-google-ads"

# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "3d8fe8aa069aecfb55b245599cf2f7a9ed1b8f36"
}

remote_dependency: app-marketing-google-ads-adapter {
  url: "git://github.com/looker/app-marketing-google-ads-fivetran-snowflake"
  ref: "1a7ae9095d023157693ab526448349681acfd1e2"
}

remote_dependency: app-marketing-google-ads {
  url: "git://github.com/looker/app-marketing-google-ads"
  ref: "94462fb041b5ddbe4b3c85b78b3791a58eccfdcd"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: ADWORDS_SCHEMA {
    value: "@{ADWORDS_SCHEMA}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-google-ads-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "looker_app_2"
  export: override_required
}

constant: ADWORDS_SCHEMA {
  value: "adwords_generated_2"
  export: override_required
}
