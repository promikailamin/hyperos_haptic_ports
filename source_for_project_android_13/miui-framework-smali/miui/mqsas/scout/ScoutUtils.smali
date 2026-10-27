.class public Lmiui/mqsas/scout/ScoutUtils;
.super Ljava/lang/Object;
.source "ScoutUtils.java"


# static fields
.field public static final blacklist BINDER_FS_PATH_GKI:Ljava/lang/String; = "/dev/binderfs/binder_logs/proc/"

.field public static final blacklist BINDER_FS_PATH_MIUI:Ljava/lang/String; = "/dev/binderfs/binder_logs/proc_transaction/"

.field public static final blacklist DEBUG_FS_PATH_MIUI:Ljava/lang/String; = "/sys/kernel/debug/binder/proc_transaction/"

.field private static final blacklist INTERESTED_BINDER_EXCEPTION_MSG:[Ljava/lang/String;

.field public static final blacklist MAX_HPROF_COUNT:I = 0x2

.field public static final blacklist MIN_HPORF_COUNT:I = 0x1

.field public static final blacklist MIUI_ACTIVITY_LEAK_TAG:Ljava/lang/String; = "MIUIScout ActivityLeak"

.field public static final blacklist MIUI_ANR_TAG:Ljava/lang/String; = "MIUIScout ANR"

.field public static final blacklist MIUI_APP_TAG:Ljava/lang/String; = "MIUIScout App"

.field public static final blacklist MIUI_JE_TAG:Ljava/lang/String; = "MIUIScout JE"

.field public static final blacklist MIUI_MEM_TAG:Ljava/lang/String; = "MIUIScout Memory"

.field public static final blacklist MIUI_NE_TAG:Ljava/lang/String; = "MIUIScout NE"

.field public static final blacklist MIUI_SYS_TAG:Ljava/lang/String; = "MIUIScout System"

.field public static final blacklist MIUI_WDT_TAG:Ljava/lang/String; = "MIUIScout Watchdog"

.field public static final blacklist MIUI_WINDOW_LEAK_TAG:Ljava/lang/String; = "MIUIScout WindowLeak"

.field public static final blacklist MTBF_MIUI_TEST:Z

.field public static final blacklist PACKAGESNAME_MILINK:Ljava/lang/String; = "com.milink.service"

.field public static final blacklist PROPERTIES_APP_MTBF_TEST:Ljava/lang/String; = "persist.sys.debug.app.mtbf_test"

.field public static final blacklist PROPERTIES_CLIPDATA_PROC:Ljava/lang/String; = "persist.sys.debug.app.clipdata"

.field public static final blacklist PROPERTIES_INTERNAL_TRIAL_USER:Ljava/lang/String; = "persist.sys.internal_trial_user"

.field public static final blacklist PROPERTIES_MI_DEVELOPMENT:Ljava/lang/String; = "ro.mi.development"

.field public static final blacklist PROPERTIES_MTBF_COREDUMP:Ljava/lang/String; = "persist.reboot.coredump"

.field public static final blacklist PROPERTIES_MTBF_MIUI_TEST:Ljava/lang/String; = "ro.miui.mtbftest"

.field public static final blacklist PROPERTIES_MTBF_TEST:Ljava/lang/String; = "persist.mtbf.test"

.field public static final blacklist PROPERTIES_OMNI_TEST:Ljava/lang/String; = "persist.omni.test"

.field public static final blacklist PROPERTIES_SCOUT_BINDER_GKI:Ljava/lang/String; = "persist.sys.scout_binder_gki"

.field public static final blacklist REBOOT_COREDUMP:Z

.field public static final blacklist SCOUT_BINDER_GKI:Z

.field public static final blacklist SIGNAL_QUIT:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "ScoutUtils"

.field private static final blacklist mImportantProcesses:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    nop

    .line 52
    const-string v0, "persist.reboot.coredump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/mqsas/scout/ScoutUtils;->REBOOT_COREDUMP:Z

    .line 53
    nop

    .line 54
    const-string v0, "ro.miui.mtbftest"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    sput-boolean v2, Lmiui/mqsas/scout/ScoutUtils;->MTBF_MIUI_TEST:Z

    .line 55
    nop

    .line 56
    const-string v0, "persist.sys.scout_binder_gki"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/mqsas/scout/ScoutUtils;->SCOUT_BINDER_GKI:Z

    .line 62
    const-string v0, "can\'t deliver broadcast"

    const-string v1, "When they come for you"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/scout/ScoutUtils;->INTERESTED_BINDER_EXCEPTION_MSG:[Ljava/lang/String;

    .line 67
    const-string v0, "com.android.systemui"

    const-string v1, "com.android.development"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/mqsas/scout/ScoutUtils;->mImportantProcesses:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist CheckBinderFailException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    .registers 4
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 157
    :try_start_0
    invoke-static {p0}, Lmiui/mqsas/scout/ScoutUtils;->isInterestedBinderFailEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lmiui/mqsas/scout/ScoutUtils;->isInterestedBinderFailProcess(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 158
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v0

    .line 159
    .local v0, "pid":I
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v1

    invoke-static {v1}, Lmiui/mqsas/scout/ScoutUtils;->dumpProcBinderInfo(I)V

    .line 160
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 161
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 165
    .end local v0    # "pid":I
    :cond_20
    goto :goto_25

    .line 163
    :catch_21
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public static blacklist dumpProcBinderInfo(I)V
    .registers 9
    .param p0, "pid"    # I

    .line 138
    invoke-static {p0}, Lmiui/mqsas/scout/ScoutUtils;->getBinderFile(I)Ljava/io/File;

    move-result-object v0

    .line 139
    .local v0, "readBinderFile":Ljava/io/File;
    if-nez v0, :cond_7

    return-void

    .line 140
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder Log: Dump pid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") Binder Info Start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MIUIScout JE"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_25
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_6b

    .line 142
    .local v1, "BinderReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 143
    .local v4, "binderTransactionInfo":Ljava/lang/String;
    :goto_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_5d

    .line 144
    sget-boolean v5, Lmiui/mqsas/scout/ScoutUtils;->SCOUT_BINDER_GKI:Z

    if-eqz v5, :cond_44

    const-string v5, "MIUI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 145
    goto :goto_30

    .line 147
    :cond_44
    const-string v5, "MIUI_JE_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binder Log:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_61

    goto :goto_30

    .line 149
    .end local v4    # "binderTransactionInfo":Ljava/lang/String;
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_6b

    .line 151
    .end local v1    # "BinderReader":Ljava/io/BufferedReader;
    goto :goto_6f

    .line 141
    .restart local v1    # "BinderReader":Ljava/io/BufferedReader;
    :catchall_61
    move-exception v4

    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v5

    :try_start_67
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "readBinderFile":Ljava/io/File;
    .end local p0    # "pid":I
    :goto_6a
    throw v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6b} :catch_6b

    .line 149
    .end local v1    # "BinderReader":Ljava/io/BufferedReader;
    .restart local v0    # "readBinderFile":Ljava/io/File;
    .restart local p0    # "pid":I
    :catch_6b
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Binder Info End"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public static blacklist ensureDumpDir(Ljava/lang/String;)Z
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ScoutUtils"

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mkdir "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v2

    .line 203
    :cond_2b
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez v1, :cond_64

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isUnReleased()Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_64

    .line 207
    :cond_3a
    const/16 v1, 0x1ed

    invoke-static {v0, v1, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v1

    .line 208
    .local v1, "errno":I
    if-eqz v1, :cond_63

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update dir perms: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v2

    .line 212
    :cond_63
    return v4

    .line 204
    .end local v1    # "errno":I
    :cond_64
    :goto_64
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 205
    return v4
.end method

.method public static blacklist getBinderFile(I)Ljava/io/File;
    .registers 7
    .param p0, "pid"    # I

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "fileBinderReader":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/kernel/debug/binder/proc_transaction/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "fileBinderDebugfs":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/dev/binderfs/binder_logs/proc_transaction/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "fileBinderLogfs":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/dev/binderfs/binder_logs/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, "fileBinderGki":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 126
    move-object v0, v2

    goto :goto_78

    .line 127
    :cond_5d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 128
    move-object v0, v1

    goto :goto_78

    .line 129
    :cond_65
    sget-boolean v4, Lmiui/mqsas/scout/ScoutUtils;->SCOUT_BINDER_GKI:Z

    if-eqz v4, :cond_71

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 130
    move-object v0, v3

    goto :goto_78

    .line 132
    :cond_71
    const-string v4, "ScoutUtils"

    const-string v5, "system_server binder debugfs or binder logfs are not exist"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_78
    return-object v0
.end method

.method public static blacklist getMaxDumpSize()I
    .registers 1

    .line 169
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isUnReleased()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    .line 172
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_f
    :goto_f
    const/4 v0, 0x2

    return v0
.end method

.method public static blacklist isAppLibraryTest()Z
    .registers 2

    .line 87
    const-string v0, "persist.sys.debug.app.mtbf_test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isInterestedBinderFailEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .registers 8
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 110
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionMessage()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 112
    :cond_c
    sget-object v1, Lmiui/mqsas/scout/ScoutUtils;->INTERESTED_BINDER_EXCEPTION_MSG:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_10
    if-ge v4, v3, :cond_1f

    aget-object v5, v1, v4

    .line 113
    .local v5, "exceptionMsg":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 114
    const/4 v1, 0x1

    return v1

    .line 112
    .end local v5    # "exceptionMsg":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 117
    :cond_1f
    return v2
.end method

.method public static blacklist isInterestedBinderFailProcess(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .registers 7
    .param p0, "event"    # Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 100
    sget-object v0, Lmiui/mqsas/scout/ScoutUtils;->mImportantProcesses:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 101
    .local v4, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 102
    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_21

    .line 100
    .end local v4    # "process":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 103
    .restart local v4    # "process":Ljava/lang/String;
    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0

    .line 106
    .end local v4    # "process":Ljava/lang/String;
    :cond_23
    return v2
.end method

.method public static blacklist isLibraryTest()Z
    .registers 1

    .line 91
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isMtbfTest()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isOmniTest()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isUatTest()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static blacklist isMtbfTest()Z
    .registers 3

    .line 77
    const-string v0, "persist.reboot.coredump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    .line 78
    const-string v0, "ro.miui.mtbftest"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_13

    :cond_12
    move v1, v2

    .line 77
    :cond_13
    return v1
.end method

.method public static blacklist isOmniTest()Z
    .registers 3

    .line 73
    const-string v0, "persist.omni.test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public static blacklist isUatTest()Z
    .registers 2

    .line 82
    const-string v0, "persist.mtbf.test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 83
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isOmniTest()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    .line 82
    :cond_10
    return v1
.end method

.method public static blacklist isUnReleased()Z
    .registers 2

    .line 95
    const-string v0, "ro.mi.development"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 96
    const-string v0, "persist.sys.internal_trial_user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    .line 95
    :cond_12
    return v1
.end method

.method static synthetic blacklist lambda$removeHistoricalDumps$0(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3
    .param p0, "suffix"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeHistoricalDumps$1(Ljava/io/File;Ljava/io/File;)I
    .registers 6
    .param p0, "o1"    # Ljava/io/File;
    .param p1, "o2"    # Ljava/io/File;

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist removeHistoricalDumps(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "maxNum"    # I

    .line 176
    if-gtz p2, :cond_3

    return-void

    .line 177
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lmiui/mqsas/scout/ScoutUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lmiui/mqsas/scout/ScoutUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 178
    .local v0, "historicalDumps":[Ljava/io/File;
    if-eqz v0, :cond_71

    array-length v1, v0

    if-ge v1, p2, :cond_17

    goto :goto_71

    .line 182
    :cond_17
    :try_start_17
    new-instance v1, Lmiui/mqsas/scout/ScoutUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lmiui/mqsas/scout/ScoutUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1f} :catch_20

    .line 185
    goto :goto_39

    .line 183
    :catch_20
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparate file failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScoutUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_39
    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x7

    goto :goto_42

    :cond_41
    const/4 v1, 0x3

    .line 187
    .local v1, "EXPIRE_DAYS":I
    :goto_42
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_45
    add-int/lit8 v4, p2, -0x1

    if-lt v2, v4, :cond_70

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, v1

    .line 190
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_61

    move v4, v3

    goto :goto_62

    :cond_61
    const/4 v4, 0x0

    .line 191
    .local v4, "outdated":Z
    :goto_62
    if-nez v4, :cond_68

    add-int/lit8 v5, p2, -0x1

    if-lt v2, v5, :cond_6d

    .line 192
    :cond_68
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 187
    .end local v4    # "outdated":Z
    :cond_6d
    add-int/lit8 v2, v2, -0x1

    goto :goto_45

    .line 195
    .end local v2    # "i":I
    :cond_70
    return-void

    .line 179
    .end local v1    # "EXPIRE_DAYS":I
    :cond_71
    :goto_71
    return-void
.end method
