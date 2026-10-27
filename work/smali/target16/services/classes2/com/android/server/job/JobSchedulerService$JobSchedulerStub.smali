.class public final Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
.super Landroid/app/job/IJobScheduler$Stub;
.source "JobSchedulerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public static synthetic $r8$lambda$9isYUgRbOiEZYC69DvsyhLYoFxk(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->lambda$getAllJobSnapshots$0(Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 4815
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/app/job/IJobScheduler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final canPersistJobs(II)Z
    .registers 4

    .line 4882
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mhasPermission(Lcom/android/server/job/JobSchedulerService;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public canRunUserInitiatedJobs(Ljava/lang/String;)Z
    .registers 7

    .line 5271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5272
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5273
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 5279
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcheckRunUserInitiatedJobsPermission(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 5275
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query canRunUserInitiatedJobs for package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel(Ljava/lang/String;I)V
    .registers 11

    .line 5259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5263
    :try_start_8
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move v4, v1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJob(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;III)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    .line 5266
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5267
    throw p0
.end method

.method public cancelAll()V
    .registers 9

    .line 5226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5229
    :try_start_8
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAll() called by app, callingUid="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZIILjava/lang/String;)Z
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_25

    .line 5236
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_25
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5237
    throw p0
.end method

.method public cancelAllInNamespace(Ljava/lang/String;)V
    .registers 12

    .line 5242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5245
    :try_start_8
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5248
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cancelAllInNamespace() called by app, callingUid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5245
    invoke-static/range {v0 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForUid(Lcom/android/server/job/JobSchedulerService;IZZLjava/lang/String;IILjava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2a

    .line 5253
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2a
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5254
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 5300
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5304
    :cond_f
    invoke-static {p3}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_8e

    move v0, v1

    move v3, v0

    .line 5306
    :goto_19
    array-length v4, p3

    if-ge v0, v4, :cond_62

    .line 5307
    aget-object v4, p3, v0

    .line 5308
    const-string v5, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 5309
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 5311
    :cond_2a
    const-string v5, "-a"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_3c

    .line 5313
    :cond_33
    const-string v5, "--proto"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v3, 0x1

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 5315
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_62

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_62

    .line 5316
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 5323
    :cond_62
    array-length v1, p3

    if-ge v0, v1, :cond_77

    .line 5324
    aget-object p3, p3, v0

    .line 5326
    :try_start_67
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_77} :catch_79

    :cond_77
    move v1, v3

    goto :goto_8e

    .line 5329
    :catch_79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 5335
    :cond_8e
    :goto_8e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v1, :cond_9c

    .line 5338
    :try_start_94
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/JobSchedulerService;->dumpInternalProto(Ljava/io/FileDescriptor;I)V

    goto :goto_a8

    :catchall_9a
    move-exception p0

    goto :goto_ac

    .line 5340
    :cond_9c
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/JobSchedulerService;->dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    :try_end_a8
    .catchall {:try_start_94 .. :try_end_a8} :catchall_9a

    .line 5344
    :goto_a8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_ac
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5345
    throw p0
.end method

.method public final enforceBuilderApiPermissions(IILandroid/app/job/JobInfo;)Landroid/app/job/JobInfo;
    .registers 6

    .line 4861
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->getBias()I

    move-result v0

    if-eqz v0, :cond_4b

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    .line 4862
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mhasPermission(Lcom/android/server/job/JobSchedulerService;IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4b

    const-wide/32 v0, 0x11e8ebd1

    .line 4863
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_43

    .line 4868
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " set bias on its job"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, p3}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    const/4 p1, 0x0

    .line 4870
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 4871
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    .line 4864
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Apps may not call setBias()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    return-object p3
.end method

.method public final enforceValidJobRequest(IILandroid/app/job/JobInfo;)V
    .registers 7

    .line 4821
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4822
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 4823
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4824
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0xc0000

    .line 4826
    :try_start_19
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 4832
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, p1, :cond_83

    .line 4836
    const-string v2, "android.permission.BIND_JOB_SERVICE"

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_2d} :catch_be

    if-eqz v0, :cond_67

    .line 4846
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->canPersistJobs(II)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_44

    .line 4847
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Requested job cannot be persisted without holding android.permission.RECEIVE_BOOT_COMPLETED permission"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4850
    :cond_44
    :goto_44
    invoke-virtual {p3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p3

    if-eqz p3, :cond_66

    const-wide/32 v0, 0x10341a19

    .line 4851
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p3

    if-eqz p3, :cond_66

    .line 4853
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string p3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mhasPermission(Lcom/android/server/job/JobSchedulerService;IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5e

    goto :goto_66

    .line 4854
    :cond_5e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "android.permission.ACCESS_NETWORK_STATE required for jobs with a connectivity constraint"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    :goto_66
    return-void

    .line 4837
    :cond_67
    :try_start_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Scheduled service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not require android.permission.BIND_JOB_SERVICE permission"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4833
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot schedule job in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4834
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4830
    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No such service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_be} :catch_be

    .line 4841
    :catch_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to schedule job for non-existent component: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .registers 14

    .line 5077
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 5078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueueing job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " work: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    :cond_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5081
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 5082
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5084
    invoke-virtual {p0, v4, v5, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(IILandroid/app/job/JobInfo;)V

    if-eqz p3, :cond_66

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v8, p3

    .line 5089
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJob(Landroid/app/job/JobInfo;IIILjava/lang/String;Landroid/app/job/JobWorkItem;)I

    move-result p0

    move p2, v5

    move v5, v4

    move-object v4, v8

    const/4 p3, 0x1

    if-eq p0, p3, :cond_47

    return p0

    .line 5094
    :cond_47
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5096
    invoke-virtual {v2, v5, p2, v3}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceBuilderApiPermissions(IILandroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    move-result-object v3

    .line 5098
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 5100
    :try_start_53
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v7, v0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_60

    .line 5103
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_60
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5104
    throw p2

    .line 5086
    :cond_66
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "work is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;
    .registers 5

    .line 5393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_30

    .line 5397
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5398
    :try_start_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5399
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 5402
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p0

    :catchall_2d
    move-exception p0

    .line 5403
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw p0

    .line 5395
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "getAllJobSnapshots() is system internal use only."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllPendingJobs()Ljava/util/Map;
    .registers 8

    .line 5150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5154
    :try_start_8
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5155
    invoke-static {p0, v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPendingJobs(Lcom/android/server/job/JobSchedulerService;I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 5156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v3, 0x0

    .line 5157
    :goto_14
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 5158
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v5, v6}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_31

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catchall_31
    move-exception p0

    goto :goto_37

    .line 5162
    :cond_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5163
    throw p0
.end method

.method public getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 7

    .line 5169
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5173
    :try_start_8
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5175
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5174
    invoke-static {v4, v0, p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPendingJobsInNamespace(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    .line 5177
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5178
    throw p0
.end method

.method public getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;
    .registers 7

    .line 5183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5187
    :try_start_8
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5188
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5187
    invoke-static {v3, v0, p0, p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPendingJob(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 5190
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5191
    throw p0
.end method

.method public getPendingJobReason(Ljava/lang/String;I)I
    .registers 3

    .line 5196
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->getPendingJobReasons(Ljava/lang/String;I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public getPendingJobReasons(Ljava/lang/String;I)[I
    .registers 7

    .line 5201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5204
    :try_start_8
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5205
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5204
    invoke-static {v3, v0, p0, p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPendingJobReasons(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)[I

    move-result-object p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 5207
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5208
    throw p0
.end method

.method public getPendingJobReasonsHistory(Ljava/lang/String;I)Ljava/util/List;
    .registers 7

    .line 5214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5217
    :try_start_8
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5218
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5217
    invoke-static {v3, v0, p0, p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetPendingJobReasonsHistory(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 5220
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5221
    throw p0
.end method

.method public getStartedJobs()Ljava/util/List;
    .registers 5

    .line 5363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3f

    .line 5370
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5371
    :try_start_d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 5372
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobsLocked()Landroid/util/ArraySet;

    move-result-object p0

    .line 5373
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5374
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_24
    if-ltz v2, :cond_3b

    .line 5375
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    if-eqz v3, :cond_38

    .line 5377
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_3d

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 5380
    :cond_3b
    monitor-exit v0

    return-object v1

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_36

    throw p0

    .line 5365
    :cond_3f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "getStartedJobs() is system internal use only."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 5352
    new-instance v0, Lcom/android/server/job/JobSchedulerShellCommand;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 5353
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 5352
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .registers 6

    .line 5284
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 5285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p2, :cond_36

    .line 5286
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_36

    .line 5287
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query hasRunUserInitiatedJobsPermission for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5292
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcheckRunUserInitiatedJobsPermission(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isInStateToScheduleUserInitiatedJobs(IILjava/lang/String;)Z
    .registers 10

    .line 5027
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    .line 5028
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v2, "Uid "

    const-string v3, "JobScheduler"

    if-eqz v1, :cond_2e

    .line 5029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " proc state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5030
    invoke-static {v0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5029
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v4, 0x2

    if-ne v0, v4, :cond_33

    const/4 p0, 0x1

    return p0

    .line 5035
    :cond_33
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 5036
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManagerInternal;->canScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    move-result p0

    if-eqz v1, :cond_57

    .line 5038
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AM.canScheduleUserInitiatedJobs= "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return p0
.end method

.method public final synthetic lambda$getAllJobSnapshots$0(Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 5399
    new-instance v0, Landroid/app/job/JobSnapshot;

    .line 5400
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSatisfiedConstraintFlags()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 5401
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/job/JobSnapshot;-><init>(Landroid/app/job/JobInfo;IZ)V

    .line 5399
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 5432
    invoke-super {p0}, Landroid/app/job/IJobScheduler$Stub;->notePendingUserRequestedAppStop_enforcePermission()V

    if-eqz p1, :cond_b

    .line 5436
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->notePendingUserRequestedAppStopInternal(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 5434
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "packageName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .registers 3

    .line 5409
    invoke-super {p0}, Landroid/app/job/IJobScheduler$Stub;->registerUserVisibleJobObserver_enforcePermission()V

    if-eqz p1, :cond_1c

    .line 5413
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5414
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5415
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 5411
    :cond_1c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "observer"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I
    .registers 17

    move-object/from16 v1, p2

    .line 5047
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 5048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling job: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JobScheduler"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    :cond_20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 5051
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5052
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5054
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(IILandroid/app/job/JobInfo;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    .line 5056
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJob(Landroid/app/job/JobInfo;IIILjava/lang/String;Landroid/app/job/JobWorkItem;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3b

    return v4

    .line 5061
    :cond_3b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5063
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceBuilderApiPermissions(IILandroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    move-result-object v5

    .line 5065
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5067
    :try_start_47
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_55

    .line 5070
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_55
    move-exception v0

    move-object p0, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5071
    throw p0
.end method

.method public scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 15

    .line 5110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5111
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 5112
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "Caller uid "

    if-eqz v0, :cond_3b

    .line 5113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " scheduling job: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on behalf of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "JobScheduler"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    if-eqz p3, :cond_97

    .line 5121
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7d

    .line 5128
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(IILandroid/app/job/JobInfo;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    move v4, p4

    .line 5130
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJob(Landroid/app/job/JobInfo;IIILjava/lang/String;Landroid/app/job/JobWorkItem;)I

    move-result p0

    move-object v8, v5

    move v5, v4

    move-object v4, v8

    const/4 p2, 0x1

    if-eq p0, p2, :cond_5e

    return p0

    .line 5135
    :cond_5e
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5137
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceBuilderApiPermissions(IILandroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    move-result-object v1

    .line 5139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 5141
    :try_start_6a
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    move v3, v2

    const/4 v2, 0x0

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_77

    .line 5144
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_77
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5145
    throw p2

    .line 5124
    :cond_7d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not permitted to schedule jobs for other apps"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5118
    :cond_97
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Must specify a package for scheduleAsPackage()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .registers 2

    .line 5421
    invoke-super {p0}, Landroid/app/job/IJobScheduler$Stub;->unregisterUserVisibleJobObserver_enforcePermission()V

    if-eqz p1, :cond_f

    .line 5425
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void

    .line 5423
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "observer"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateJob(Landroid/app/job/JobInfo;IIILjava/lang/String;Landroid/app/job/JobWorkItem;)I
    .registers 14

    const-wide/32 v0, 0xf1e9ef7

    .line 4888
    invoke-static {v0, v1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    const-wide/32 v1, 0xb98555f

    .line 4891
    invoke-static {v1, v2, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    const-wide/32 v2, 0x128fa179

    .line 4894
    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    const-wide/32 v3, 0x1345eb5a

    .line 4896
    invoke-static {v3, v4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    .line 4890
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/app/job/JobInfo;->enforceValidity(ZZZZ)V

    .line 4898
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const-string v3, "JobScheduler"

    if-eqz v1, :cond_34

    .line 4899
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4902
    :cond_34
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_63

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_5b

    .line 4906
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 4907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Periodic jobs mustn\'t have FLAG_EXEMPT_FROM_APP_STANDBY. Job="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 4904
    :cond_5b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Job has invalid flags"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4911
    :cond_63
    :goto_63
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-eqz v1, :cond_dd

    const/4 v1, -0x1

    if-eq p4, v1, :cond_79

    if-eqz p5, :cond_79

    .line 4915
    :try_start_6e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v4, p5, v5, v6, p4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p4
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_78} :catch_79

    goto :goto_7a

    :catch_79
    :cond_79
    move p4, v1

    .line 4924
    :goto_7a
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eq p4, v1, :cond_9a

    .line 4928
    invoke-virtual {p0, p4, p5}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateRunUserInitiatedJobsPermission(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v2, :cond_8c

    return v6

    :cond_8c
    if-ne p2, p4, :cond_95

    .line 4933
    invoke-virtual {v4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    move v1, p3

    .line 4935
    :cond_95
    invoke-virtual {p0, p4, v1, p5}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->isInStateToScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    move-result v1

    goto :goto_9b

    :cond_9a
    move v1, v5

    :goto_9b
    if-ne p2, p4, :cond_a3

    .line 4939
    invoke-virtual {v4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_b1

    .line 4943
    :cond_a3
    invoke-virtual {p0, p2, v4}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateRunUserInitiatedJobsPermission(ILjava/lang/String;)I

    move-result p5

    if-eq p5, v2, :cond_aa

    return p5

    :cond_aa
    if-nez v1, :cond_b1

    .line 4949
    invoke-virtual {p0, p2, p3, v4}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->isInStateToScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    move-result p0

    goto :goto_b2

    :cond_b1
    move p0, v5

    :goto_b2
    if-nez v1, :cond_dd

    if-nez p0, :cond_dd

    .line 4955
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Uid(s) "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in a state to schedule user-initiated jobs"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    const-string p0, "job_scheduler.value_cntr_w_uid_schedule_failure_uij_invalid_state"

    invoke-static {p0, p2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return v5

    :cond_dd
    if-eqz p6, :cond_12c

    .line 4964
    invoke-virtual {p6, v0}, Landroid/app/job/JobWorkItem;->enforceValidity(Z)V

    .line 4965
    invoke-virtual {p6}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long p0, p3, v0

    if-nez p0, :cond_fc

    .line 4966
    invoke-virtual {p6}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide p3

    cmp-long p0, p3, v0

    if-nez p0, :cond_fc

    .line 4968
    invoke-virtual {p6}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide p3

    cmp-long p0, p3, v0

    if-eqz p0, :cond_117

    .line 4970
    :cond_fc
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    if-nez p0, :cond_117

    const-wide/32 p3, 0xe5ef4d2

    .line 4973
    invoke-static {p3, p4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    const-string p2, "JobWorkItem implies network usage but job doesn\'t specify a network constraint"

    if-nez p0, :cond_111

    .line 4978
    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117

    .line 4976
    :cond_111
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4982
    :cond_117
    :goto_117
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result p0

    if-eqz p0, :cond_12c

    .line 4985
    invoke-virtual {p6}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_124

    goto :goto_12c

    .line 4986
    :cond_124
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot persist JobWorkItems with Intents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12c
    :goto_12c
    return v2
.end method

.method public final validateNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 4996
    invoke-static {p1}, Landroid/app/job/JobScheduler;->sanitizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 4998
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 5001
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_19

    .line 5005
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5002
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "namespace cannot be more than 1000 characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4999
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "namespace cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    return-object p0
.end method

.method public final validateRunUserInitiatedJobsPermission(ILjava/lang/String;)I
    .registers 4

    .line 5011
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mgetRunUserInitiatedJobsPermissionState(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)I

    move-result p0

    const/4 p2, 0x2

    .line 5012
    const-string v0, "job_scheduler.value_cntr_w_uid_schedule_failure_uij_no_permission"

    if-eq p0, p2, :cond_14

    const/4 p2, 0x1

    if-ne p0, p2, :cond_13

    .line 5019
    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    :cond_13
    return p2

    .line 5013
    :cond_14
    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 5015
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "android.permission.RUN_USER_INITIATED_JOBS required to schedule user-initiated jobs."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
