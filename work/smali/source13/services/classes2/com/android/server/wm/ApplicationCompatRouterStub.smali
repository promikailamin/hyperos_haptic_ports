.class public Lcom/android/server/wm/ApplicationCompatRouterStub;
.super Ljava/lang/Object;
.source "ApplicationCompatRouterStub.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    classPath = "/system_ext/framework/miui-appcompat.jar"
    internal = true
    manifestName = "com.android.server.wm.ApplicationCompatRouterStubManifest$$"
.end annotation


# static fields
.field public static final CONTINUITY_RELAUNCH_BY_BLOCK_LIST:I = 0x6

.field public static final CONTINUITY_RESTART_BY_BLOCK_LIST:I = 0x7

.field public static final DISPLAY_CHANGE_ABILITY_FORCE_RESIZEABLE:I = 0x2

.field public static final DISPLAY_CHANGE_ABILITY_INTERACTABLE_IMMEDIATELY:I = 0x4

.field public static final DISPLAY_CHANGE_ABILITY_RESIZEABLE:I = 0x1

.field public static final DISPLAY_CHANGE_ABILITY_UNDEFINED:I = 0x0

.field public static final DISPLAY_CHANGE_ABILITY_UNRESIZEABLE:I = 0x3

.field public static final EXCLUDE_BY_META_DATA:I = 0x5

.field public static final FORCED_RESIZEABLE_BY_ALLOW_LIST:I = 0x3

.field public static final FORCED_RESIZEABLE_BY_USER_SETTING:I = 0x1

.field public static final FORCED_UNRESIZEABLE_BY_BLOCK_LIST:I = 0x4

.field public static final FORCED_UNRESIZEABLE_BY_USER_SETTING:I = 0x2

.field public static final MIUI_DISPLAY_DEVICE_TYPE_MAIN:I = 0x0

.field public static final MIUI_DISPLAY_DEVICE_TYPE_SUB:I = 0x5

.field public static final NONE:I


# instance fields
.field public mConfigDisplayID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/wm/ApplicationCompatRouterStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubRegistry;->init(Ljava/lang/Class;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ApplicationCompatRouterStub;->mConfigDisplayID:I

    return-void
.end method

.method public static get()Lcom/android/server/wm/ApplicationCompatRouterStub;
    .registers 1

    .line 52
    const-class v0, Lcom/android/server/wm/ApplicationCompatRouterStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ApplicationCompatRouterStub;

    return-object v0
.end method


# virtual methods
.method getConfigDisplayID()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/android/server/wm/ApplicationCompatRouterStub;->mConfigDisplayID:I

    return v0
.end method

.method public getDisplayChangeAbility(Lcom/android/server/wm/Task;)I
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method getMetaDataBoolean(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method getMetaDataBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method getMetaDataFloat(Landroid/content/ComponentName;Ljava/lang/String;)F
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method getMetaDataFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method hasMetaData(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2
    .param p1, "activityTaskManagerService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    return-void
.end method

.method setConfigDisplayID(I)V
    .registers 2
    .param p1, "configDisplayID"    # I

    .line 56
    return-void
.end method
