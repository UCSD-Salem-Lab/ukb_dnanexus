# UK Biobank with DNAnexus Tutorial

### List of unrelated subjects

```bash
# get the list of unrelated subjects
/salemlab/ukb/GenoInfo
ll *kinship_0.0442.txt
```

| Files                                                        |
| ------------------------------------------------------------ |
| /salemlab/ukb/GenoInfo/UKBiobank_genoQC_allancestry_unrelated_kinship_0.0442.txt |
| /salemlab/ukb/GenoInfo/UKBiobank_genoQC_AFR_unrelated_list_kinship_0.0442.txt |
| /salemlab/ukb/GenoInfo/UKBiobank_genoQC_EAS_unrelated_list_kinship_0.0442.txt |
| /salemlab/ukb/GenoInfo/UKBiobank_genoQC_SAS_unrelated_list_kinship_0.0442.txt |
| /salemlab/ukb/GenoInfo/UKBiobank_genoQC_EUR_unrelated_list_kinship_0.0442.txt |



### Sample command

```bash
dx run app-swiss-army-knife -iin='file-G984F98JykJZkxQ03yYGKvyk' -icmd='bcftools norm -m -both ukb23157_c10_b0_v1.vcf.gz | bgzip -c > normalized_ukb23157_c10_b0_v1.vcf.gz; plink2 --vcf normalized_ukb23157_c10_b0_v1.vcf.gz -vcf-half-call m --vcf-min-dp 10 --make-bed --out ukb23157_c10_b0_v1;' --destination '/plink_files' --name ukb23157_c10_b0_v1 --instance-type mem2_ssd1_v2_x8 --brief -y;
```

Get a list of file IDs (unique identifiers) using `dx ls -l` in the desired directory.

Use the `--destination` flag to specify output directory

Use the `--name` flag to specify the name of the file

Use the `--brief` and `-y` flags to suppress interaction questions

Use the `--instance-type` flag to specify the compute resources used



Here are all available instance types:

| **Instance Type** | **Cores** | **Memory (GB)** | **Storage (GB)** |
| ----------------- | --------- | --------------- | ---------------- |
| mem1_hdd1_x2      | 2         | 3.75            | 200              |
| mem1_hdd1_x4      | 4         | 7.5             | 400              |
| mem1_hdd1_x8      | 8         | 15              | 800              |
| mem1_hdd1_x16     | 16        | 30              | 1600             |
| mem1_hdd1_x36     | 36        | 60              | 3200             |
| mem1_hdd1_v2_x2   | 2         | 4               | 200              |
| mem1_hdd1_v2_x4   | 4         | 8               | 400              |
| mem1_hdd1_v2_x8   | 8         | 16              | 800              |
| mem1_hdd1_v2_x16  | 16        | 32              | 1600             |
| mem1_hdd1_v2_x36  | 36        | 72              | 3600             |
| mem1_hdd1_v2_x72  | 72        | 144             | 7200             |
| mem1_hdd1_v2_x96  | 96        | 192             | 9600             |
| mem1_ssd1_x2      | 2         | 3.8             | 40               |
| mem1_ssd1_x4      | 4         | 7.5             | 80               |
| mem1_ssd1_x8      | 8         | 15              | 160              |
| mem1_ssd1_x16     | 16        | 30              | 320              |
| mem1_ssd1_x32     | 32        | 60              | 640              |
| mem1_ssd1_x36     | 36        | 72              | 900              |
| mem1_ssd1_v2_x2   | 2         | 4               | 50               |
| mem1_ssd1_v2_x4   | 4         | 8               | 100              |
| mem1_ssd1_v2_x8   | 8         | 16              | 200              |
| mem1_ssd1_v2_x16  | 16        | 32              | 400              |
| mem1_ssd1_v2_x36  | 36        | 72              | 900              |
| mem1_ssd1_v2_x72  | 72        | 144             | 1,800            |
| mem1_ssd2_x2      | 2         | 3.8             | 160              |
| mem1_ssd2_x4      | 4         | 7.5             | 320              |
| mem1_ssd2_x8      | 8         | 15              | 640              |
| mem1_ssd2_x16     | 16        | 30              | 1,280            |
| mem1_ssd2_x36     | 36        | 60              | 2,880            |
| mem1_ssd2_v2_x2   | 2         | 4               | 160              |
| mem1_ssd2_v2_x4   | 4         | 8               | 320              |
| mem1_ssd2_v2_x8   | 8         | 16              | 640              |
| mem1_ssd2_v2_x16  | 16        | 32              | 1,280            |
| mem1_ssd2_v2_x36  | 36        | 72              | 2,880            |
| mem1_ssd2_v2_x72  | 72        | 144             | 5,760            |
| mem1_hdd2_x1      | 1         | 1.7             | 160              |
| mem1_hdd2_x8      | 8         | 7               | 1,680            |
| mem1_hdd2_x32     | 32        | 60.5            | 3,360            |
| mem2_ssd1_x2      | 2         | 7.5             | 40               |
| mem2_ssd1_x4      | 4         | 15              | 80               |
| mem2_ssd1_x8      | 8         | 30              | 160              |
| mem2_ssd1_v2_x2   | 2         | 8               | 75               |
| mem2_ssd1_v2_x4   | 4         | 16              | 150              |
| mem2_ssd1_v2_x8   | 8         | 32              | 300              |
| mem2_ssd1_v2_x16  | 16        | 64              | 600              |
| mem2_ssd1_v2_x32  | 32        | 128             | 1,200            |
| mem2_ssd1_v2_x48  | 48        | 192             | 1,800            |
| mem2_ssd1_v2_x64  | 64        | 256             | 2,400            |
| mem2_ssd1_v2_x96  | 96        | 384             | 3,600            |
| mem2_ssd2_x2      | 2         | 8               | 160              |
| mem2_ssd2_x4      | 4         | 16              | 320              |
| mem2_ssd2_x8      | 8         | 32              | 1280             |
| mem2_ssd2_x16     | 16        | 64              | 2560             |
| mem2_ssd2_x40     | 40        | 160             | 3200             |
| mem2_ssd2_x64     | 64        | 256             | 5120             |
| mem2_ssd2_v2_x2   | 2         | 8               | 160              |
| mem2_ssd2_v2_x4   | 4         | 16              | 320              |
| mem2_ssd2_v2_x8   | 8         | 32              | 640              |
| mem2_ssd2_v2_x16  | 16        | 64              | 1280             |
| mem2_ssd2_v2_x32  | 32        | 128             | 2560             |
| mem2_ssd2_v2_x48  | 48        | 192             | 3840             |
| mem2_ssd2_v2_x64  | 64        | 256             | 5120             |
| mem2_ssd2_v2_x96  | 96        | 384             | 7480             |
| mem2_hdd2_x1      | 1         | 3.8             | 410              |
| mem2_hdd2_x2      | 2         | 7.5             | 840              |
| mem2_hdd2_x4      | 4         | 15              | 1,680            |
| mem2_hdd2_v2_x2   | 2         | 8               | 1,000            |
| mem2_hdd2_v2_x4   | 4         | 16              | 2,000            |
| mem3_ssd1_x2      | 2         | 15              | 40               |
| mem3_ssd1_x4      | 4         | 30.5            | 80               |
| mem3_ssd1_x8      | 8         | 61              | 160              |
| mem3_ssd1_x16     | 16        | 122             | 320              |
| mem3_ssd1_x32     | 32        | 244             | 640              |
| mem3_ssd1_v2_x2   | 2         | 16              | 75               |
| mem3_ssd1_v2_x4   | 4         | 32              | 150              |
| mem3_ssd1_v2_x8   | 8         | 64              | 300              |
| mem3_ssd1_v2_x16  | 16        | 128             | 600              |
| mem3_ssd1_v2_x32  | 32        | 256             | 1,200            |
| mem3_ssd1_v2_x48  | 48        | 384             | 1,800            |
| mem3_ssd1_v2_x64  | 64        | 512             | 3,200            |
| mem3_ssd1_v2_x96  | 96        | 768             | 3,600            |
| mem3_ssd2_x4      | 4         | 30.5            | 800              |
| mem3_ssd2_x8      | 8         | 61              | 1,600            |
| mem3_ssd2_x16     | 16        | 122             | 3,200            |
| mem3_ssd2_x32     | 32        | 244             | 6,400            |
| mem3_ssd2_v2_x2   | 2         | 15.25           | 475              |
| mem3_ssd2_v2_x4   | 4         | 30.5            | 950              |
| mem3_ssd2_v2_x8   | 8         | 61              | 1,900            |
| mem3_ssd2_v2_x16  | 16        | 122             | 3,800            |
| mem3_ssd2_v2_x32  | 32        | 244             | 7,600            |
| mem3_ssd2_v2_x64  | 64        | 488             | 15,200           |
| mem3_ssd3_x2      | 2         | 16              | 1,250            |
| mem3_ssd3_x4      | 4         | 32              | 2,500            |
| mem3_ssd3_x8      | 8         | 64              | 5,000            |
| mem3_ssd3_x12     | 12        | 96              | 7,500            |
| mem3_ssd3_x24     | 24        | 192             | 15,000           |
| mem3_ssd3_x48     | 48        | 384             | 30,000           |
| mem3_ssd3_x96     | 96        | 768             | 60,000           |
| mem3_hdd2_x2      | 2         | 17.1            | 420              |
| mem3_hdd2_x4      | 4         | 34.2            | 850              |
| mem3_hdd2_x8      | 8         | 68.4            | 1,680            |
| mem3_hdd2_v2_x2   | 2         | 16              | 500              |
| mem3_hdd2_v2_x4   | 4         | 32              | 1,000            |
| mem3_hdd2_v2_x8   | 8         | 64              | 2,000            |
| mem4_ssd1_x128    | 128       | 1,952           | 3,840            |

[More Instance Types](https://documentation.dnanexus.com/developer/api/running-analyses/instance-types#standard-aws-instance-types)

### Full Command manual

```bash
usage: dx run [-i INPUT] [-j INPUT_JSON] [-f FILENAME] [--brief | --verbose]
              [--env-help] [--extra-args EXTRA_ARGS]
              [--instance-type INSTANCE_TYPE_OR_MAPPING]
              [--instance-type-help] [--property KEY=VALUE] [--tag TAG]
              [-d DEPENDS_ON] [-h] [--clone CLONE] [--alias ALIAS]
              [--destination PATH] [--batch-folders] [--project PROJECT]
              [--stage-output-folder STAGE_ID FOLDER]
              [--stage-relative-output-folder STAGE_ID FOLDER] [--name NAME]
              [--delay-workspace-destruction] [--priority {low,normal,high}]
              [--head-job-on-demand] [-y] [--wait] [--watch]
              [--allow-ssh [ADDRESS]] [--ssh] [--ssh-proxy <address>:<port>]
              [--debug-on {AppError,AppInternalError,ExecutionError,All}]
              [--ignore-reuse | --ignore-reuse-stage STAGE_ID]
              [--rerun-stage STAGE_ID] [--batch-tsv FILE]
              [--instance-count INSTANCE_COUNT_OR_MAPPING] [--input-help]
              [--detach] [--cost-limit cost_limit] [-r RANK]
              [--max-tree-spot-wait-time MAX_TREE_SPOT_WAIT_TIME]
              [--max-job-spot-wait-time MAX_JOB_SPOT_WAIT_TIME]
              [--detailed-job-metrics]
              [--preserve-job-outputs | --preserve-job-outputs-folder JOB_OUTPUTS_FOLDER]
              [executable]

Run an applet, app, or workflow.  To see a list of executables you can run,
hit <TAB> twice after "dx run" or run "dx find apps" or "dx find
globalworkflows" to see a list of available apps and global workflows.

If any inputs are required but not specified, an interactive mode for
selecting inputs will be launched.  Inputs can be set in multiple ways.  Run
"dx run --input-help" for more details.

Run "dx run --instance-type-help" to see a list of specifications for
computers available to run executables.

positional arguments:
  executable            Name or ID of an applet, app, or workflow to run; must
                        be provided if --clone is not set

optional arguments:
  -i INPUT, --input INPUT
                        An input to be added using "<input
                        name>[:<class>]=<input value>" (provide "class" if
                        there is no input spec; it can be any job IO class,
                        e.g. "string", "array:string", or "array"; if "class"
                        is "array" or not specified, the value will be
                        attempted to be parsed as JSON and is otherwise
                        treated as a string)
  -j INPUT_JSON, --input-json INPUT_JSON
                        The full input JSON (keys=input field names,
                        values=input field values)
  -f FILENAME, --input-json-file FILENAME
                        Load input JSON from FILENAME ("-" to use stdin)
  --brief               Display a brief version of the return value; for most
                        commands, prints a DNAnexus ID per line
  --verbose             If available, displays extra verbose output
  --env-help            Display help message for overriding environment
                        variables
  --extra-args EXTRA_ARGS
                        Arguments (in JSON format) to pass to the underlying
                        API method, overriding the default settings
  --instance-type INSTANCE_TYPE_OR_MAPPING
                        Specify instance type(s) for jobs this executable will
                        run; see --instance-type-help for more details
  --instance-type-help  Print help for specifying instance types
  --property KEY=VALUE  Key-value pair to add as a property; repeat as
                        necessary,
                         e.g. "--property key1=val1 --property key2=val2"
  --tag TAG             Tag for the resulting execution; repeat as necessary,
                         e.g. "--tag tag1 --tag tag2"
  -d DEPENDS_ON, --depends-on DEPENDS_ON
                        ID of job, analysis, or data object that must be in
                        the "done" or "closed" state, as appropriate, before
                        this executable can be run; repeat as necessary (e.g.
                        "--depends-on id1 ... --depends-on idN"). Cannot be
                        supplied when running workflows
  -h, --help            show this help message and exit
  --clone CLONE         Job or analysis ID or name from which to use as
                        default options (will use the exact same executable
                        ID, destination project and folder, job input,
                        instance type requests, and a similar name unless
                        explicitly overridden by command-line arguments. When
                        using an analysis with --clone a workflow executable
                        cannot be overriden and should not be provided.)
  --alias ALIAS, --version ALIAS
                        Alias (tag) or version of the app to run (default:
                        "default" if an app)
  --destination PATH, --folder PATH
                        The full project:folder path in which to output the
                        results. By default, the current working directory
                        will be used.
  --batch-folders       Output results to separate folders, one per batch,
                        using batch ID as the name of the output folder. The
                        batch output folder location will be relative to the
                        path set in --destination
  --project PROJECT     Project name or ID in which to run the executable.
                        This can also be specified together with the output
                        folder in --destination.
  --stage-output-folder STAGE_ID FOLDER
                        A stage identifier (ID, name, or index), and a folder
                        path to use as its output folder
  --stage-relative-output-folder STAGE_ID FOLDER
                        A stage identifier (ID, name, or index), and a
                        relative folder path to the workflow output folder to
                        use as the output folder
  --name NAME           Name for the job (default is the app or applet name)
  --delay-workspace-destruction
                        Whether to keep the job's temporary workspace around
                        for debugging purposes for 3 days after it succeeds or
                        fails
  --priority {low,normal,high}
                        Request a scheduling priority for all resulting jobs.
                        Defaults to high when --watch, --ssh, or --allow-ssh
                        flags are used.
  --head-job-on-demand  Requests that the head job of an app or applet be run
                        in an on-demand instance. Note that
                        --head-job-on-demand option will override the
                        --priority setting for the head job
  -y, --yes             Do not ask for confirmation
  --wait                Wait until the job is done before returning
  --watch               Watch the job after launching it. Defaults --priority to high.
  --allow-ssh [ADDRESS]
                        Configure the job to allow SSH access. Defaults
                        --priority to high. If an argument is supplied, it is
                        interpreted as an IP range, e.g. "--allow-ssh
                        1.2.3.4". If no argument is supplied then the client
                        IP visible to the DNAnexus API server will be used by
                        default
  --ssh                 Configure the job to allow SSH access and connect to
                        it after launching. Defaults --priority to high.
  --ssh-proxy <address>:<port>
                        SSH connect via proxy, argument supplied is used as
                        the proxy address and port
  --debug-on {AppError,AppInternalError,ExecutionError,All}
                        Configure the job to hold for debugging when any of
                        the listed errors occur
  --ignore-reuse        Disable job reuse for execution
  --ignore-reuse-stage STAGE_ID
                        A stage (using its ID, name, or index) for which job
                        reuse should be disabled, if a stage points to another
                        (nested) workflow the ignore reuse option will be
                        applied to the whole subworkflow. This option
                        overwrites any ignoreReuse fields set on app(let)s or
                        the workflow during build time; repeat as necessary
  --rerun-stage STAGE_ID
                        A stage (using its ID, name, or index) to rerun, or
                        "*" to indicate all stages should be rerun; repeat as
                        necessary
  --batch-tsv FILE      A file in tab separated value (tsv) format, with a
                        subset of the executable input arguments. A job will
                        be launched for each table row.
  --instance-count INSTANCE_COUNT_OR_MAPPING
                        Specify spark cluster instance count(s). It can be an
                        int or a mapping of the format '{"entrypoint": <number
                        of instances>}'
  --input-help          Print help and examples for how to specify inputs
  --detach              When invoked from a job, detaches the new job from the
                        creator job so the new job will appear as a typical
                        root execution. Setting DX_RUN_DETACH environment
                        variable to 1 causes this option to be set by default.
  --cost-limit cost_limit
                        Maximum cost of the job before termination. In case of
                        workflows it is cost of the entire analysis job. For
                        batch run, this limit is applied per job.
  -r RANK, --rank RANK  Set the rank of the root execution, integer between
                        -1024 and 1023. Requires executionRankEnabled license
                        feature for the billTo. Default is 0.
  --max-tree-spot-wait-time MAX_TREE_SPOT_WAIT_TIME
                        The amount of time allocated to each path in the root
                        execution's tree to wait for Spot (in seconds, or use
                        suffix s, m, h, d, w, M, y)
  --max-job-spot-wait-time MAX_JOB_SPOT_WAIT_TIME
                        The amount of time allocated to each job in the root
                        execution's tree to wait for Spot (in seconds, or use
                        suffix s, m, h, d, w, M, y)
  --detailed-job-metrics
                        Collect CPU, memory, network and disk metrics every 60
                        seconds
  --preserve-job-outputs
                        Copy cloneable outputs of every non-reused job
                        entering "done" state in this root execution into the
                        "intermediateJobOutputs" subfolder under the output
                        folder for the root execution.
  --preserve-job-outputs-folder JOB_OUTPUTS_FOLDER
                        Copy cloneable outputs of every non-reused job
                        entering "done" state in this root execution to a
                        folder in the project. JOB_OUTPUTS_FOLDER starting
                        with '/' refers to an absolute path within the
                        project, otherwise, it refers to a subfolder under
                        root execution's output folder.
```

[Index of all commands](https://documentation.dnanexus.com/user/helpstrings-of-sdk-command-line-utilities)
