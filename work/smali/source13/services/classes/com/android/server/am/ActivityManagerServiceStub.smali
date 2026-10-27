.class public Lcom/android/server/am/ActivityManagerServiceStub;
.super Ljava/lang/Object;
.source "ActivityManagerServiceStub.java"


# static fields
.field private static final INSTANCE:Lcom/android/server/am/ActivityManagerServiceStub;

.field public static final OOM_SCORE_ADJ_MIN:I = -0x3e8

.field public static final OPERATOR_GET_PHONENUMBER_PREFIX:Ljava/lang/String; = "MIUI-APPOP;"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/android/server/am/ActivityManagerServiceStub;

    .line 28
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerServiceStub;

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceStub;->INSTANCE:Lcom/android/server/am/ActivityManagerServiceStub;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/am/ActivityManagerServiceStub;
    .registers 1

    .line 31
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceStub;->INSTANCE:Lcom/android/server/am/ActivityManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public addBinderPids2PidsList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p1, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-void
.end method

.method public attachProcessStartReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 68
    return-object p1
.end method

.method public backupBind(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "val"    # Z

    .line 213
    return-void
.end method

.method public boostCameraByThreshold(Landroid/content/Intent;)V
    .registers 2
    .param p1, "in"    # Landroid/content/Intent;

    .line 169
    return-void
.end method

.method public checkAppDisableStatus(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public checkFirstDumpAnrStatus()Z
    .registers 2

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public checkFrozenUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public checkRunningCompatibility(Landroid/app/IApplicationThread;ILcom/android/server/am/ContentProviderRecord;I)Z
    .registers 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "record"    # Lcom/android/server/am/ContentProviderRecord;
    .param p4, "userId"    # I

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public checkRunningCompatibility(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public checkRunningCompatibility(Landroid/content/ComponentName;III)Z
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "userId"    # I

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public checkRunningCompatibility(Landroid/content/Intent;Ljava/lang/String;III)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "userId"    # I

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public checkStartInputMethodSettingsActivity(Landroid/content/IIntentSender;)Z
    .registers 3
    .param p1, "target"    # Landroid/content/IIntentSender;

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 154
    return-void
.end method

.method public doBoostEx(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "beginTime"    # J

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)Z
    .registers 10
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpClient"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public dumpFirstAnr(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;[JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/io/File;
    .registers 12
    .param p2, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p5, "logExceptionCreatingFile"    # Ljava/io/StringWriter;
    .param p6, "firstPidOffsets"    # [J
    .param p7, "subject"    # Ljava/lang/String;
    .param p8, "criticalEventSection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/StringWriter;",
            "[J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 239
    .local p1, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local p4, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p9, "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p10, "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public dumpMiuiJavaTrace(I)V
    .registers 2
    .param p1, "Pid"    # I

    .line 143
    return-void
.end method

.method public dumpMiuiStackTraces([I)Ljava/lang/String;
    .registers 3
    .param p1, "pids"    # [I

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableAmsDebugConfig(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 182
    return-void
.end method

.method finishBooting()V
    .registers 1

    .line 38
    return-void
.end method

.method public finishBootingAsUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 107
    return-void
.end method

.method public getAppStartMode(IIILjava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "defMode"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 48
    return p2
.end method

.method public getOomAdjOfPid(I)I
    .registers 3
    .param p1, "pid"    # I

    .line 146
    const/16 v0, -0x3e8

    return v0
.end method

.method public getPackageHoldOn(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 4
    .param p1, "pid"    # I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessNameByPid(I)Ljava/lang/String;
    .registers 4
    .param p1, "pid"    # I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopAppPackageName()Ljava/lang/String;
    .registers 2

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreSpecifiedAuthority(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 34
    return-void
.end method

.method public interceptAppRestartIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isActiveInstruUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowedOperatorGetPhoneNumber(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "permission"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public isBackuping(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public isBoostNeeded(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "hostingName"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isKillProvider(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "capp"    # Lcom/android/server/am/ProcessRecord;

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    .registers 7
    .param p1, "localhost"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "callerPkgName"    # Ljava/lang/String;
    .param p4, "calleeUid"    # I
    .param p5, "calleePkgName"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method isStartWithBackupRestriction(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupPkgName"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public killProcessDueToResolutionChanged()V
    .registers 1

    .line 109
    return-void
.end method

.method markAmsReady()V
    .registers 1

    .line 40
    return-void
.end method

.method markUIReady()V
    .registers 1

    .line 42
    return-void
.end method

.method public moveUserToForeground(II)V
    .registers 3
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .line 111
    return-void
.end method

.method public notifyExcuteServices(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 192
    return-void
.end method

.method public onGrantUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V
    .registers 5
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 244
    return-void
.end method

.method public onPackageUriPermissionRemoved(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 248
    return-void
.end method

.method onSystemReady()V
    .registers 1

    .line 36
    return-void
.end method

.method public onTransact(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/os/Parcel;
    .param p4, "reply"    # Landroid/os/Parcel;
    .param p5, "flags"    # I

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method reportBootEvent()V
    .registers 1

    .line 44
    return-void
.end method

.method public setActiveInstrumentation(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "instr"    # Landroid/content/ComponentName;

    .line 218
    return-void
.end method

.method public setPackageHoldOn(Lcom/android/server/am/ActivityManagerService;Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCrossXSpace(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public skipFrozenAppAnr(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "uid"    # I
    .param p3, "report"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public skipPruneOldTraces()Z
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "hostingNameStr"    # Ljava/lang/String;

    .line 53
    return-void
.end method

.method public syncFontForWebView()V
    .registers 1

    .line 185
    return-void
.end method

.method updateEntryPointArgs(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "entryPointArgs"    # [Ljava/lang/String;

    .line 178
    return-object p3
.end method
