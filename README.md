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

## Inputs

Danger step has several inputs to make configuration of plugins easier.

Plugins and inputs connected with them that are supported by step:
* [danger-android_lint](https://github.com/loadsmart/danger-android_lint)
* [danger-kotlin_detekt](https://github.com/NFesquet/danger-kotlin_detekt)
* [danger-junit](https://github.com/orta/danger-junit)
* [danger-jacoco](https://github.com/Malinskiy/danger-jacoco)
* [danger-slack](https://github.com/duck8823/danger-slack)
* [danger-jira](https://github.com/RestlessThinker/danger-jira)
* [danger-apkanalyzer](https://github.com/STAR-ZERO/danger-apkanalyzer)

## About

This project is made with ❤️ by [Netguru](https://www.netguru.com).

### License

Licensed under the MIT License. See [License](LICENSE) for more
info.
