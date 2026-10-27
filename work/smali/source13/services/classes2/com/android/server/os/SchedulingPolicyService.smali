.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final MEDIA_PROCESS_NAMES:[Ljava/lang/String;

.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# instance fields
.field private mBoostedPid:I

.field private mClient:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-string/jumbo v0, "media.swcodec"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    .line 44
    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$1;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    iput-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 66
    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    const-string v1, "SchedulingPolicyService.<init>"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 78
    return-void
.end method

.method private disableCpusetBoost(I)I
    .registers 10
    .param p1, "pid"    # I

    .line 185
    const-string v0, " back to group default"

    const-string v1, "SchedulingPolicyService"

    iget v2, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 188
    .local v2, "boostedPid":I
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 189
    iget-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    .line 191
    const/4 v6, 0x0

    :try_start_f
    iget-object v7, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v4, v7, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_19
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_1a

    .line 194
    :catchall_15
    move-exception v0

    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 195
    throw v0

    .line 192
    :catch_19
    move-exception v4

    .line 194
    :goto_1a
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 200
    :cond_1c
    if-ne v2, p1, :cond_57

    .line 202
    :try_start_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {p1, v3}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3b} :catch_3c

    .line 206
    goto :goto_57

    .line 204
    :catch_3c
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t move pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_57
    :goto_57
    return v5
.end method

.method private enableCpusetBoost(ILandroid/os/IBinder;)I
    .registers 9
    .param p1, "pid"    # I
    .param p2, "client"    # Landroid/os/IBinder;

    .line 146
    const-string v0, "SchedulingPolicyService"

    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_8

    .line 147
    return v2

    .line 153
    :cond_8
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 154
    iget-object v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    if-eqz v3, :cond_1d

    .line 156
    const/4 v4, 0x0

    :try_start_10
    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v5, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1a
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1b

    .line 159
    :catchall_16
    move-exception v0

    iput-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 160
    throw v0

    .line 157
    :catch_1a
    move-exception v3

    .line 159
    :goto_1b
    iput-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 164
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1, v4}, Landroid/os/Process;->setProcessGroup(II)V

    .line 169
    iput p1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 170
    iput-object p2, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4a} :catch_4b

    .line 172
    return v2

    .line 173
    :catch_4b
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed enableCpusetBoost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_62
    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_68

    goto :goto_69

    .line 178
    :catch_68
    move-exception v0

    :goto_69
    nop

    .line 181
    .end local v3    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private isPermitted()Z
    .registers 4

    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 215
    return v2

    .line 218
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 224
    const/4 v0, 0x0

    return v0

    .line 222
    :sswitch_15
    return v2

    :sswitch_data_16
    .sparse-switch
        0x3ea -> :sswitch_15
        0x411 -> :sswitch_15
        0x417 -> :sswitch_15
    .end sparse-switch
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-server-os-SchedulingPolicyService()V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-enter v0

    .line 69
    :try_start_3
    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 70
    sget-object v1, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 71
    .local v1, "nativePids":[I
    if-eqz v1, :cond_1e

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 72
    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 73
    aget v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)I

    .line 76
    .end local v1    # "nativePids":[I
    :cond_1e
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public requestCpusetBoost(ZLandroid/os/IBinder;)I
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "client"    # Landroid/os/IBinder;

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_14

    .line 126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_14

    .line 127
    return v2

    .line 130
    :cond_14
    sget-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 131
    .local v0, "nativePids":[I
    if-eqz v0, :cond_3a

    array-length v1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_21

    goto :goto_3a

    .line 136
    :cond_21
    iget-object v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-enter v1

    .line 137
    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    .line 138
    :try_start_27
    aget v2, v0, v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/os/SchedulingPolicyService;->enableCpusetBoost(ILandroid/os/IBinder;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 140
    :cond_2f
    aget v2, v0, v2

    invoke-direct {p0, v2}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)I

    move-result v2

    monitor-exit v1

    return v2

    .line 142
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_37

    throw v2

    .line 132
    :cond_3a
    :goto_3a
    const-string v1, "SchedulingPolicyService"

    const-string/jumbo v3, "requestCpusetBoost: can\'t find media.codec process"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v2
.end method

.method public requestPriority(IIIZ)I
    .registers 10
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I
    .param p4, "isForApp"    # Z

    .line 91
    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermitted()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_71

    const/4 v0, 0x1

    if-lt p3, v0, :cond_71

    const/4 v0, 0x3

    if-gt p3, v0, :cond_71

    .line 92
    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    if-eq v0, p1, :cond_14

    goto :goto_71

    .line 97
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x411

    if-ne v0, v2, :cond_25

    if-nez p4, :cond_25

    .line 98
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v0

    if-eq v0, v2, :cond_25

    .line 99
    return v1

    .line 101
    :cond_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3ea

    const-string v3, "SchedulingPolicyService"

    if-eq v0, v2, :cond_50

    .line 104
    if-nez p4, :cond_33

    .line 105
    const/4 v0, 0x4

    goto :goto_34

    :cond_33
    const/4 v0, 0x6

    .line 104
    :goto_34
    :try_start_34
    invoke-static {p2, v0}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_38

    .line 109
    goto :goto_50

    .line 106
    :catch_38
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed setThreadGroup: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1

    .line 113
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_50
    :goto_50
    const v0, 0x40000001    # 2.0000002f

    :try_start_53
    invoke-static {p2, v0, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_56} :catch_59

    .line 118
    nop

    .line 119
    const/4 v0, 0x0

    return v0

    .line 115
    :catch_59
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed setThreadScheduler: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 93
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_71
    :goto_71
    return v1
.end method
