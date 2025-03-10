# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `parallel_tests` gem.
# Please instead update this file by running `bin/tapioca gem parallel_tests`.


# rake tasks for Rails 3+
#
# source://parallel_tests//lib/parallel_tests.rb#6
module ParallelTests
  class << self
    # copied from http://github.com/carlhuda/bundler Bundler::SharedHelpers#find_gemfile
    #
    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests.rb#66
    def bundler_enabled?; end

    # source://parallel_tests//lib/parallel_tests.rb#111
    def delta; end

    # source://parallel_tests//lib/parallel_tests.rb#28
    def determine_multiple(multiple); end

    # used by external libraries, do not rename or change api
    #
    # source://parallel_tests//lib/parallel_tests.rb#18
    def determine_number_of_processes(count); end

    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests.rb#82
    def first_process?; end

    # @return [Boolean]
    #
    # source://parallel_tests//lib/parallel_tests.rb#86
    def last_process?; end

    # source://parallel_tests//lib/parallel_tests.rb#107
    def now; end

    # source://parallel_tests//lib/parallel_tests.rb#103
    def number_of_running_processes; end

    # source://parallel_tests//lib/parallel_tests.rb#55
    def pid_file_path; end

    # source://parallel_tests//lib/parallel_tests.rb#51
    def pids; end

    # source://parallel_tests//lib/parallel_tests.rb#59
    def stop_all_processes; end

    # source://parallel_tests//lib/parallel_tests.rb#98
    def wait_for_other_processes_to_finish; end

    # source://parallel_tests//lib/parallel_tests.rb#38
    def with_pid_file; end

    # source://parallel_tests//lib/parallel_tests.rb#94
    def with_ruby_binary(command); end
  end
end

# source://parallel_tests//lib/parallel_tests/cli.rb#9
class ParallelTests::CLI
  # source://parallel_tests//lib/parallel_tests/cli.rb#10
  def run(argv); end

  private

  # exit with correct status code so rake parallel:test && echo 123 works
  #
  # @return [Boolean]
  #
  # source://parallel_tests//lib/parallel_tests/cli.rb#189
  def any_test_failed?(test_results); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#374
  def append_test_options(options, argv); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#415
  def detailed_duration(seconds); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#389
  def execute_command_in_parallel(command, num_processes, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#56
  def execute_in_parallel(items, num_processes, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#363
  def extract_file_paths(argv); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#369
  def extract_test_options(argv); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#422
  def final_fail_message; end

  # @return [Boolean]
  #
  # source://parallel_tests//lib/parallel_tests/cli.rb#432
  def first_is_1?; end

  # source://parallel_tests//lib/parallel_tests/cli.rb#31
  def handle_interrupt; end

  # source://parallel_tests//lib/parallel_tests/cli.rb#382
  def load_runner(type); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#138
  def lock(lockfile); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#193
  def parse_options!(argv); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#178
  def pluralize(n, singular); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#156
  def report_failure_rerun_commmand(test_results, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#170
  def report_number_of_tests(groups); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#148
  def report_results(test_results, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#410
  def report_time_taken(&block); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#130
  def reprint_output(result, lockfile); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#111
  def run_tests(group, process_number, num_processes, options); end

  # source://parallel_tests//lib/parallel_tests/cli.rb#71
  def run_tests_in_parallel(num_processes, options); end

  # CI systems often fail when there is no output for a long time, so simulate some output
  #
  # source://parallel_tests//lib/parallel_tests/cli.rb#438
  def simulate_output_for_ci(simulate); end

  # @return [Boolean]
  #
  # source://parallel_tests//lib/parallel_tests/cli.rb#428
  def use_colors?; end
end

# source://parallel_tests//lib/parallel_tests.rb#9
ParallelTests::DEFAULT_MULTIPLY_PROCESSES = T.let(T.unsafe(nil), Float)

# source://parallel_tests//lib/parallel_tests/grouper.rb#3
class ParallelTests::Grouper
  class << self
    # source://parallel_tests//lib/parallel_tests/grouper.rb#10
    def by_scenarios(tests, num_groups, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#5
    def by_steps(tests, num_groups, options); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#15
    def in_even_groups_by_size(items, num_groups, options = T.unsafe(nil)); end

    private

    # source://parallel_tests//lib/parallel_tests/grouper.rb#113
    def add_to_group(group, item, size); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#118
    def group_by_features_with_steps(tests, options); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#123
    def group_by_scenarios(tests, options = T.unsafe(nil)); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#128
    def group_features_by_size(items, groups_to_fill); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#95
    def isolate_count(options); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#136
    def items_to_group(items); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#105
    def largest_first(files); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#109
    def smallest_group(groups); end

    # source://parallel_tests//lib/parallel_tests/grouper.rb#51
    def specify_groups(items, num_groups, options, groups); end
  end
end

# source://parallel_tests//lib/parallel_tests/pids.rb#5
class ParallelTests::Pids
  # @return [Pids] a new instance of Pids
  #
  # source://parallel_tests//lib/parallel_tests/pids.rb#8
  def initialize(file_path); end

  # source://parallel_tests//lib/parallel_tests/pids.rb#13
  def add(pid); end

  # source://parallel_tests//lib/parallel_tests/pids.rb#28
  def all; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#23
  def count; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#18
  def delete(pid); end

  # Returns the value of attribute file_path.
  #
  # source://parallel_tests//lib/parallel_tests/pids.rb#6
  def file_path; end

  # Returns the value of attribute mutex.
  #
  # source://parallel_tests//lib/parallel_tests/pids.rb#6
  def mutex; end

  private

  # source://parallel_tests//lib/parallel_tests/pids.rb#39
  def clear; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#35
  def pids; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#44
  def read; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#52
  def save; end

  # source://parallel_tests//lib/parallel_tests/pids.rb#56
  def sync(&block); end
end

# source://parallel_tests//lib/parallel_tests.rb#8
ParallelTests::RUBY_BINARY = T.let(T.unsafe(nil), String)

# source://parallel_tests//lib/parallel_tests/version.rb#3
ParallelTests::VERSION = T.let(T.unsafe(nil), String)

# source://parallel_tests//lib/parallel_tests.rb#7
ParallelTests::WINDOWS = T.let(T.unsafe(nil), T.untyped)
