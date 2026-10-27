.class public Lcom/android/server/am/MemoryStandardProcessControl;
.super Ljava/lang/Object;
.source "MemoryStandardProcessControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;
    }
.end annotation


# static fields
.field private static ALL_ACTIVE:I = 0x0

.field private static final CLOUD_MEMORY_STANDARD_ENABLE:Ljava/lang/String; = "cloud_memory_standard_enable"

.field private static DEBUG:Z = false

.field public static final EVENT_TAGS:I = 0x13c04

.field private static IS_MIUI_LITE_VERSION:Z = false

.field private static final KILLING_DURATION_THRESHOLD:I = 0xa4cb80

.field private static final MEMORY_STANDARD_DEBUG_PROP:Ljava/lang/String; = "persist.sys.memory_standard.debug"

.field private static final MEMORY_STANDARD_ENABLE_PROP:Ljava/lang/String; = "persist.sys.memory_standard.enable"

.field private static final MEMORY_STANDARD_THRESHOLD:J = 0x1f4000L

.field private static final MSG_MEMORY_THRESHOLD_JUDGMENT:I = 0x1

.field private static PROCESS_MANAGER_SERVICE_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MemoryStandardProcessControl"

.field private static sCleanWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHomeOrRecents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/am/MemoryStandardProcessControl;

.field private static sSystemRelatedPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isInit:Z

.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mActiveUidRecordClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mActiveUidRecordClz_Field_uid:Ljava/lang/reflect/Field;

.field private mDeviceLevelClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mDeviceLevelClz_Field_IS_MIUI_LITE_VERSION:Ljava/lang/reflect/Field;

.field private volatile mEnable:Z

.field private mGetActiveUidRecordListMethod:Ljava/lang/reflect/Method;

.field private mGetProcessPolicyMethod:Ljava/lang/reflect/Method;

.field private mHandler:Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKillTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCleanByPressure:J

.field private mPMS:Ljava/lang/Object;

.field private mProcessManagerClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mProcessManagerClz_Field_ALL_ACTIVE:Ljava/lang/reflect/Field;

.field private mProcessManagerClz_Field_SERVICE_NAME:Ljava/lang/reflect/Field;

.field private mProcessManagerServiceClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mProcessPolicyClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mPssThresholdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sFirstKillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private sListFlag:Z

.field private sSecondKillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/android/server/am/MemoryStandardProcessControl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEnable(Lcom/android/server/am/MemoryStandardProcessControl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mmemoryThresholdJudgment(Lcom/android/server/am/MemoryStandardProcessControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/MemoryStandardProcessControl;->memoryThresholdJudgment()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    const-string/jumbo v0, "persist.sys.memory_standard.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MemoryStandardProcessControl;->DEBUG:Z

    .line 57
    new-instance v0, Lcom/android/server/am/MemoryStandardProcessControl;

    invoke-direct {v0}, Lcom/android/server/am/MemoryStandardProcessControl;-><init>()V

    sput-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sInstance:Lcom/android/server/am/MemoryStandardProcessControl;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sCleanWhiteList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sHomeOrRecents:Ljava/util/List;

    .line 63
    const-string v1, "com.miui.home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sHomeOrRecents:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sHomeOrRecents:Ljava/util/List;

    const-string v1, "com.mi.android.globallauncher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    const-string v1, "com.lbe.security.miui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    const-string v1, "com.miui.securityadd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    const-string v1, "com.xiaomi.xmsf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    const-string v1, "com.miui.analytics"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    const-string v1, "com.android.permissioncontroller"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    const-string v1, "com.miui.securitycenter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    const-string v1, "com.miui.powerkeeper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sCleanWhiteList:Ljava/util/List;

    const-string v1, "com.android.camera"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sCleanWhiteList:Ljava/util/List;

    const-string v1, "com.google.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string/jumbo v0, "ro.miui.build.region"

    const-string v1, "cn"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 80
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sCleanWhiteList:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sCleanWhiteList:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_9c
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "persist.sys.memory_standard.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mEnable:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->sListFlag:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/am/MemoryStandardProcessControl;->isInit:Z

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mLastCleanByPressure:J

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->sFirstKillList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->sSecondKillList:Ljava/util/List;

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryStandardProcessControl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mHandler:Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;

    .line 94
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 95
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mPMS:Ljava/lang/Object;

    .line 97
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mDeviceLevelClz:Ljava/lang/Class;

    .line 98
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mDeviceLevelClz_Field_IS_MIUI_LITE_VERSION:Ljava/lang/reflect/Field;

    .line 99
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessPolicyClz:Ljava/lang/Class;

    .line 100
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mGetActiveUidRecordListMethod:Ljava/lang/reflect/Method;

    .line 101
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerClz:Ljava/lang/Class;

    .line 102
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerClz_Field_SERVICE_NAME:Ljava/lang/reflect/Field;

    .line 103
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerClz_Field_ALL_ACTIVE:Ljava/lang/reflect/Field;

    .line 104
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerServiceClz:Ljava/lang/Class;

    .line 105
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mGetProcessPolicyMethod:Ljava/lang/reflect/Method;

    .line 106
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mActiveUidRecordClz:Ljava/lang/Class;

    .line 107
    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mActiveUidRecordClz_Field_uid:Ljava/lang/reflect/Field;

    .line 114
    return-void
.end method

.method private checkProcessList()V
    .registers 21

    .line 297
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/MemoryStandardProcessControl;->mKillTimeMap:Ljava/util/HashMap;

    if-nez v0, :cond_d

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/am/MemoryStandardProcessControl;->mKillTimeMap:Ljava/util/HashMap;

    .line 300
    :cond_d
    iget-object v0, v1, Lcom/android/server/am/MemoryStandardProcessControl;->sFirstKillList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_128

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 301
    .local v2, "processFirst":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v1, Lcom/android/server/am/MemoryStandardProcessControl;->sSecondKillList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_126

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 302
    .local v4, "processSecond":Lcom/android/server/am/ProcessRecord;
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-ne v5, v6, :cond_124

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, v6, :cond_124

    .line 303
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 304
    .local v3, "packageName":Ljava/lang/String;
    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 306
    .local v15, "processName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/am/MemoryStandardProcessControl;->mKillTimeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v11, "MemoryStandardProcessControl"

    if-eqz v5, :cond_7e

    .line 307
    iget-object v5, v1, Lcom/android/server/am/MemoryStandardProcessControl;->mKillTimeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 308
    .local v5, "oldKillTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v5, v7

    const-wide/32 v9, 0xa4cb80

    cmp-long v7, v7, v9

    if-gez v7, :cond_7e

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip killing in less than 3 hours, packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    goto/16 :goto_126

    .line 313
    .end local v5    # "oldKillTime":J
    :cond_7e
    const v5, 0x13c04

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "standardkill:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v1, v2}, Lcom/android/server/am/MemoryStandardProcessControl;->killedReason(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 314
    const/16 v5, 0xd

    const/4 v6, 0x1

    const-string v7, "MemoryStandardProcessContral"

    invoke-virtual {v2, v7, v5, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 315
    invoke-static {}, Lcom/android/server/am/AppProfilerStub;->getInstance()Lcom/android/server/am/AppProfilerStub;

    move-result-object v5

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 316
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v9

    .line 315
    move-object v6, v15

    invoke-interface/range {v5 .. v10}, Lcom/android/server/am/AppProfilerStub;->reportKillMessage(Ljava/lang/String;IIJ)V

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 319
    .local v14, "nowKillTime":Ljava/lang/Long;
    iget-object v5, v1, Lcom/android/server/am/MemoryStandardProcessControl;->mKillTimeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "kill process, packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v5, 0x0

    .line 323
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    const-string v13, "MemoryStandardPullUp"

    .line 324
    .local v13, "hostingType":Ljava/lang/String;
    const/4 v12, 0x0

    .line 326
    .local v12, "userId":I
    :try_start_ea
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x400

    invoke-interface {v6, v3, v7, v8, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_f4} :catch_117

    .line 331
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 332
    iget-object v5, v1, Lcom/android/server/am/MemoryStandardProcessControl;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/am/HostingRecord;

    invoke-direct {v10, v13, v15}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "android"

    move-object v6, v15

    move/from16 v19, v12

    .end local v12    # "userId":I
    .local v19, "userId":I
    move/from16 v12, v16

    move-object/from16 v16, v13

    .end local v13    # "hostingType":Ljava/lang/String;
    .local v16, "hostingType":Ljava/lang/String;
    move/from16 v13, v17

    move-object/from16 v17, v14

    .end local v14    # "nowKillTime":Ljava/lang/Long;
    .local v17, "nowKillTime":Ljava/lang/Long;
    move-object/from16 v14, v18

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 336
    .local v5, "newApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_126

    .line 328
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "hostingType":Ljava/lang/String;
    .end local v17    # "nowKillTime":Ljava/lang/Long;
    .end local v19    # "userId":I
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "userId":I
    .restart local v13    # "hostingType":Ljava/lang/String;
    .restart local v14    # "nowKillTime":Ljava/lang/Long;
    :catch_117
    move-exception v0

    move/from16 v19, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    .line 329
    .end local v12    # "userId":I
    .end local v13    # "hostingType":Ljava/lang/String;
    .end local v14    # "nowKillTime":Ljava/lang/Long;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "hostingType":Ljava/lang/String;
    .restart local v17    # "nowKillTime":Ljava/lang/Long;
    .restart local v19    # "userId":I
    const-string v6, "error in getApplicationInfo!"

    invoke-static {v11, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    return-void

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "processSecond":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "processName":Ljava/lang/String;
    .end local v16    # "hostingType":Ljava/lang/String;
    .end local v17    # "nowKillTime":Ljava/lang/Long;
    .end local v19    # "userId":I
    :cond_124
    goto/16 :goto_25

    .line 339
    .end local v2    # "processFirst":Lcom/android/server/am/ProcessRecord;
    :cond_126
    :goto_126
    goto/16 :goto_13

    .line 340
    :cond_128
    return-void
.end method

.method private dependencyCheck()Z
    .registers 8

    .line 185
    const-string v0, "MemoryStandardProcessControl"

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v2, "miui.util.DeviceLevel"

    .line 186
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mDeviceLevelClz:Ljava/lang/Class;

    .line 187
    const-string v3, "IS_MIUI_LITE_VERSION"

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mDeviceLevelClz_Field_IS_MIUI_LITE_VERSION:Ljava/lang/reflect/Field;

    .line 189
    nop

    .line 190
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/MemoryStandardProcessControl;->IS_MIUI_LITE_VERSION:Z

    .line 193
    const-string/jumbo v2, "miui.process.ProcessManager"

    .line 194
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerClz:Ljava/lang/Class;

    .line 195
    const-string v4, "SERVICE_NAME"

    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerClz_Field_SERVICE_NAME:Ljava/lang/reflect/Field;

    .line 197
    nop

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/MemoryStandardProcessControl;->PROCESS_MANAGER_SERVICE_NAME:Ljava/lang/String;

    .line 199
    iget-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerClz:Ljava/lang/Class;

    const-string v4, "ALL_ACTIVE"

    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerClz_Field_ALL_ACTIVE:Ljava/lang/reflect/Field;

    .line 201
    nop

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/server/am/MemoryStandardProcessControl;->ALL_ACTIVE:I

    .line 205
    const-string v2, "com.android.server.am.ProcessManagerService"

    .line 206
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessManagerServiceClz:Ljava/lang/Class;

    .line 207
    const-string/jumbo v3, "getProcessPolicy"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mGetProcessPolicyMethod:Ljava/lang/reflect/Method;

    .line 211
    const-string v2, "com.android.server.am.ProcessPolicy"

    .line 212
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mProcessPolicyClz:Ljava/lang/Class;

    .line 213
    const-string v3, "getActiveUidRecordList"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 214
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mGetActiveUidRecordListMethod:Ljava/lang/reflect/Method;

    .line 218
    const-string v2, "com.android.server.am.ProcessPolicy$ActiveUidRecord"

    .line 219
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mActiveUidRecordClz:Ljava/lang/Class;

    .line 220
    const-string/jumbo v3, "uid"

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mActiveUidRecordClz_Field_uid:Ljava/lang/reflect/Field;
    :try_end_82
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_82} :catch_b3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_82} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_82} :catch_83

    .line 223
    return v4

    .line 230
    :catch_83
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dependency check failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v1

    .line 227
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_9b
    move-exception v2

    .line 228
    .local v2, "nfe":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dependent field missing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v1

    .line 224
    .end local v2    # "nfe":Ljava/lang/NoSuchFieldException;
    :catch_b3
    move-exception v2

    .line 225
    .local v2, "nme":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dependent interface missing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v1
.end method

.method public static getInstance()Lcom/android/server/am/MemoryStandardProcessControl;
    .registers 1

    .line 110
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sInstance:Lcom/android/server/am/MemoryStandardProcessControl;

    return-object v0
.end method

.method private getLocationActiveUids()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 370
    .local v1, "activeUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mGetProcessPolicyMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mPMS:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 371
    .local v2, "processPolicy":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mGetActiveUidRecordListMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sget v6, Lcom/android/server/am/MemoryStandardProcessControl;->ALL_ACTIVE:I

    .line 372
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v1, v3

    .line 373
    if-eqz v1, :cond_4d

    .line 374
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 375
    .local v4, "r":Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mActiveUidRecordClz_Field_uid:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 376
    .local v5, "uid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 377
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4c} :catch_4e

    .line 379
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "uid":I
    :cond_4c
    goto :goto_2b

    .line 383
    .end local v2    # "processPolicy":Ljava/lang/Object;
    :cond_4d
    goto :goto_67

    .line 381
    :catch_4e
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocationActiveUids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MemoryStandardProcessControl"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_67
    return-object v0
.end method

.method private initPssThresholdMap(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    const-string v0, "MemoryStandardProcessControl"

    const-string v1, "Init Memory ThresholdMap"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mPssThresholdMap:Ljava/util/HashMap;

    if-nez v1, :cond_82

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mPssThresholdMap:Ljava/util/HashMap;

    .line 159
    sget-boolean v1, Lcom/android/server/am/MemoryStandardProcessControl;->IS_MIUI_LITE_VERSION:Z

    if-eqz v1, :cond_1a

    .line 160
    const-string/jumbo v1, "package_pss_threshold_lite"

    .local v1, "listName":Ljava/lang/String;
    goto :goto_1d

    .line 162
    .end local v1    # "listName":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v1, "package_pss_threshold"

    .line 164
    .restart local v1    # "listName":Ljava/lang/String;
    :goto_1d
    nop

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "array"

    const-string v4, "android.miui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 167
    .local v2, "pssThresholdId":I
    if-lez v2, :cond_7d

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "pssThresholdList":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_35
    array-length v5, v3

    if-ge v4, v5, :cond_64

    .line 170
    aget-object v5, v3, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 171
    .local v5, "packageThreshold":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    .line 172
    .local v6, "packagePssThreshold":I
    iget-object v7, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mPssThresholdMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v5    # "packageThreshold":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "packagePssThreshold":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 175
    .end local v4    # "i":I
    :cond_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pssThresholdList size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 177
    .end local v3    # "pssThresholdList":[Ljava/lang/String;
    :cond_7d
    const-string v3, "No Memory Threshold Id"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "listName":Ljava/lang/String;
    .end local v2    # "pssThresholdId":I
    :cond_82
    :goto_82
    return-void
.end method

.method private static isHomeOrRecents(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 343
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sHomeOrRecents:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOutOfStandard(Ljava/lang/String;J)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPss"    # J

    .line 355
    iget-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mPssThresholdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 356
    iget-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mPssThresholdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, p2, v2

    if-gez v0, :cond_23

    .line 357
    return v1

    .line 359
    :cond_1b
    const-wide/32 v2, 0x1f4000

    cmp-long v0, p2, v2

    if-gez v0, :cond_23

    .line 360
    return v1

    .line 362
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method private static isSystemPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 347
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sSystemRelatedPkgs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/android/server/am/MemoryStandardProcessControl;->isHomeOrRecents(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static isWhiteListPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 351
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->sCleanWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private killedReason(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .registers 5
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .line 388
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "KillProc"

    aput-object v2, v0, v1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "OutOfMemoryStandard"

    aput-object v2, v0, v1

    .line 388
    const-string v1, "#%s n:%s(%d) u:%d pss:%d r:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private memoryThresholdJudgment()V
    .registers 8

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mLastCleanByPressure:J

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 251
    .local v0, "startTime":J
    iget-boolean v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->sListFlag:Z

    if-eqz v2, :cond_17

    .line 252
    iget-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->sFirstKillList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/am/MemoryStandardProcessControl;->updataProcessList(Ljava/util/List;)V

    .line 253
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->sListFlag:Z

    goto :goto_1f

    .line 255
    :cond_17
    iget-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->sSecondKillList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/am/MemoryStandardProcessControl;->updataProcessList(Ljava/util/List;)V

    .line 256
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->sListFlag:Z

    .line 258
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 259
    .local v2, "nowTime":J
    sget-boolean v4, Lcom/android/server/am/MemoryStandardProcessControl;->DEBUG:Z

    if-eqz v4, :cond_48

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Run time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms so far"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MemoryStandardProcessControl"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_48
    invoke-direct {p0}, Lcom/android/server/am/MemoryStandardProcessControl;->checkProcessList()V

    .line 263
    return-void
.end method

.method private registerCloudObserver(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/android/server/am/MemoryStandardProcessControl$1;

    iget-object v1, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mHandler:Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/MemoryStandardProcessControl$1;-><init>(Lcom/android/server/am/MemoryStandardProcessControl;Landroid/os/Handler;Landroid/content/Context;)V

    .line 132
    .local v0, "observer":Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 133
    const-string v2, "cloud_memory_standard_enable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 132
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 135
    return-void
.end method

.method private updataProcessList(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 267
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 270
    :cond_9
    invoke-direct {p0}, Lcom/android/server/am/MemoryStandardProcessControl;->getLocationActiveUids()Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "locationActiveUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-boolean v1, Lcom/android/server/am/MemoryStandardProcessControl;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 272
    const-string v1, "MemoryStandardProcessControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_29
    iget-object v1, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mAMS:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 276
    iget-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    .line 277
    .local v2, "N":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_39
    if-ltz v3, :cond_c5

    .line 278
    iget-object v4, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 279
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 280
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    const/16 v7, 0xc8

    if-le v6, v7, :cond_c1

    invoke-static {v5}, Lcom/android/server/am/MemoryStandardProcessControl;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c1

    invoke-static {v5}, Lcom/android/server/am/MemoryStandardProcessControl;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c1

    .line 281
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v6

    if-nez v6, :cond_c1

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v6

    if-nez v6, :cond_c1

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-eqz v6, :cond_c1

    iget-boolean v6, v4, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v6, :cond_c1

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 282
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 283
    goto :goto_c1

    .line 285
    :cond_86
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v6

    .line 286
    .local v6, "appPss":J
    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/MemoryStandardProcessControl;->isOutOfStandard(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 287
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 288
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_9b
    const-string v8, "MemoryStandardProcessControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exceeding the standard, processName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ; pid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "appPss":J
    :cond_c1
    :goto_c1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_39

    .line 293
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_2c .. :try_end_c6} :catchall_ca

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 294
    return-void

    .line 293
    :catchall_ca
    move-exception v2

    :try_start_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 138
    iget-boolean v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->isInit:Z

    if-eqz v0, :cond_5

    return-void

    .line 139
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mEnable:Z

    if-nez v0, :cond_a

    return-void

    .line 141
    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/MemoryStandardProcessControl;->dependencyCheck()Z

    move-result v0

    if-nez v0, :cond_14

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mEnable:Z

    .line 143
    return-void

    .line 145
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 146
    new-instance v0, Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;

    iget-object v1, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;-><init>(Lcom/android/server/am/MemoryStandardProcessControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mHandler:Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;

    .line 147
    iput-object p2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 148
    sget-object v0, Lcom/android/server/am/MemoryStandardProcessControl;->PROCESS_MANAGER_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mPMS:Ljava/lang/Object;

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/am/MemoryStandardProcessControl;->initPssThresholdMap(Landroid/content/Context;)V

    .line 150
    const-string v0, "MemoryStandardProcessControl"

    const-string/jumbo v1, "init success"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->isInit:Z

    .line 152
    return-void
.end method

.method public isEnable()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mEnable:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/MemoryStandardProcessControl;->isInit:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public reportMemPressure(I)V
    .registers 8
    .param p1, "pressureState"    # I

    .line 237
    const/4 v0, 0x3

    if-ne p1, v0, :cond_23

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 239
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mLastCleanByPressure:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    .line 240
    sget-boolean v2, Lcom/android/server/am/MemoryStandardProcessControl;->DEBUG:Z

    if-eqz v2, :cond_1d

    .line 241
    const-string v2, "MemoryStandardProcessControl"

    const-string/jumbo v3, "try to clean for MEM_PRESSURE_HIGH."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl;->mHandler:Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/MemoryStandardProcessControl$MyHandler;->sendEmptyMessage(I)Z

    .line 246
    .end local v0    # "now":J
    :cond_23
    return-void
.end method
