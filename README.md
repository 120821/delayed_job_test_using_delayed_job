# delayed_job

### 简单使用

1.修改Gemfile

```
gem 'delayed_job_active_record'
```

2.创建作业表

```
rails generate delayed_job:active_record
rake db:migrate
```

3.修改config/application.rb

在 Rails 4.2+ 中，在 config/application.rb 中设置queue_adapter

```
config.active_job.queue_adapter = :delayed_job
```

4.查看bin文件夹
```
ls bin/
bundle  delayed_job  importmap  rails  rake  setup

```
