.class public interface abstract Lcom/android/server/wm/MiuiOrientationStub;
.super Ljava/lang/Object;
.source "MiuiOrientationStub.java"


# static fields
.field public static final ADAPT_CUTOUT_UNAVAILABLE:I = -0x1

.field public static final DUMP_ORIENTATION_CMD:Ljava/lang/String; = "miuiorientationlandscape"

.field public static final IS_FOLD:Z

.field public static final IS_TABLET:Z

.field public static final METADATA_SCREEN_INNER_ORIENTAION:Ljava/lang/String; = "miui.screenInnerOrientation"

.field public static final METADATA_SCREEN_ORIENTAION:Ljava/lang/String; = "miui.screenOrientation"

.field public static final MODE_FULL_LANDSCAPE:I = 0x1

.field public static final MODE_SIZE_COMPAT_LANDSCAPE:I = 0x2

.field public static final MODE_UNSPECIFIED:I = -0x1

.field public static final OPTIONS_ORIENTATION_IGNORE_APP:I = 0x2

.field public static final OPTIONS_ORIENTATION_IGNORE_SENSOR:I = 0x1

.field public static final OPTIONS_ORIENTATION_INVALID:I = -0x1

.field public static final RELAUNCH_MODE_FORCE_RELAUNCH:I = 0x1

.field public static final RELAUNCH_MODE_NOT_RELAUNCH:I = 0x2

.field public static final RELAUNCH_MODE_RELAUNCH_INTERACTIVE:I = 0x4

.field public static final SHOW_ROTATION_SUGGESTIONS_DEFAULT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    sput-boolean v1, Lcom/android/server/wm/MiuiOrientationStub;->IS_FOLD:Z

    .line 31
    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_TABLET:Z

    return-void
.end method

.method public static get()Lcom/android/server/wm/MiuiOrientationStub;
    .registers 1

    .line 38
    const-class v0, Lcom/android/server/wm/MiuiOrientationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiOrientationStub;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    .line 128
    return-void
.end method

.method public getOrientationMode(Lcom/android/server/wm/ActivityRecord;I)I
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "orientation"    # I

    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method public getRelaunchMode(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationOptions(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getShowRotationSuggestion()I
    .registers 2

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public getUserRotationFromSettings(Z)I
    .registers 3
    .param p1, "isFolded"    # Z

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getUserRotationModeFromSettings(Z)I
    .registers 3
    .param p1, "isFolded"    # Z

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnoreRequestedOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isInOuterEnableList(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isLandEnableForPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedAccSensor()Z
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedRotateCameraInFullScreen(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedSetDisplayCutout(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 103
    const/4 v0, -0x1

    return v0
.end method

.method public isNeedUpdateConfig(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isOuterEnable()Z
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isProvisioned()Z
    .registers 2

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public retrieveScreenOrientation(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 68
    return-void
.end method

.method public setEmbeddedFullRuleData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    .local p1, "fullRules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    return-void
.end method

.method public setUserRotationLockedForSettings(IIZ)V
    .registers 4
    .param p1, "userRotationMode"    # I
    .param p2, "userRotation"    # I
    .param p3, "isFolded"    # Z

    .line 92
    return-void
.end method

.method public showToastWhenLandscapeIfNeed(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 71
    return-void
.end method

.method public update3appCameraWhenResume(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 84
    return-void
.end method

.method public update3appCameraWhenRotateOrFold(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "rotation"    # I
    .param p3, "isRotated"    # Z
    .param p4, "isFoldChanged"    # Z

    .line 88
    return-void
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 118
    return-void
.end method

.method public updateOrientationForCamera(Lcom/android/server/wm/WindowContainer;I)Z
    .registers 4
    .param p1, "orientationSource"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "orientation"    # I

    .line 123
    const/4 v0, 0x0

    return v0
.end method
