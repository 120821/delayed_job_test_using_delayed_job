class AddDelayedJob < ActiveRecord::Migration[7.0]
  def change
    create_table :delayed_jobs do |t|
      t.integer :priority, default: 0, null: false  # The priority of the job, defaults to 0
      t.integer :attempts, default: 0, null: false  # Number of attempts to execute the job, defaults to 0
      t.text :handler, null: false                   # YAML-encoded string of the object that will be processed. Must be able to be unmarshalled by Delayed::Job.
      t.text :last_error                              # Contains the last error raised, if any, while processing this job.
      t.datetime :run_at                              # When to run the job. Might be immediately or sometime in the future.
      t.datetime :locked_at                           # When a worker acquired this job for processing.
      t.datetime :failed_at                           # When the job last failed.
      t.string :locked_by                             # Who is working on this object, if locked.
      t.string :queue                                 # The name of the queue this job is in.
      t.timestamps null: true
    end
    add_index :delayed_jobs, %i[priority run_at], name: "delayed_jobs_priority"
  end
end
