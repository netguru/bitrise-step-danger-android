# Danger Android - Bitrise step

This Bitrise step simplify usage of Danger in Android projects.


## How to use

To use this step in your project you just need to add this step definition to
your **bitrise.yml** file under adequate workflow in **steps** key.

```yml
your_workflow:
  steps:
    - git::https://github.com/netguru/bitrise-step-danger-android.git@master:
      title: Run Danger checks
      is_always_run: true
```

If you have `Dangerfile` in your project it will now be connected.
## Inputs

Danger step has several inputs to make configuration of plugins easier.

Those inputs are available in workflow editor and you can fill them from there.

Plugins and inputs connected with them that are used in step:
* [danger-android_lint](https://github.com/loadsmart/danger-android_lint)
  - Gradle task for linter
  - Path to linter report file
* [danger-kotlin_detekt](https://github.com/NFesquet/danger-kotlin_detekt)
  - Path to detekt report file
* [danger-junit](https://github.com/orta/danger-junit)
  - Enable JUNIT reporting
* [danger-jacoco](https://github.com/Malinskiy/danger-jacoco)
  - Path to jacoco report file
* [danger-slack](https://github.com/duck8823/danger-slack)
  - Name of the Slack channel
* [danger-jira](https://github.com/RestlessThinker/danger-jira)
  - Subdomain of Jira
  - Jira keys of projects related to Pull Request - you can put here one value or
    multiple keys in format *KEY1,KEY2* etc.
* [danger-apkanalyzer](https://github.com/STAR-ZERO/danger-apkanalyzer)
  - Path to generated APK

If you leave any of inputs from plugin blank, this plugin will be skipped during step.

You can also set default values of inputs in **bitrise.yml**:

```yml
your_workflow:
  steps:
    - git::https://github.com/netguru/bitrise-step-danger-android.git@master:
      title: Run Danger checks
      is_always_run: true
      inputs:
        - LINT_GRADLE_TASK: example
        - LINT_REPORT_PATH: example
        - DETEKT_REPORT_PATH: example
        - JACOCO_REPORT_PATH: example
        - JIRA_SUBDOMAIN: example
        - JIRA_IDENTIFIERS: example
        - SLACK_NOTIFICATION_CHANNEL: example
        - APK_PATH: example
        - JUNIT_ENABLED: example
```


## About

This project is made with ❤️ by [Netguru](https://www.netguru.com).

### License

Licensed under the MIT License. See [License](LICENSE) for more
info.
