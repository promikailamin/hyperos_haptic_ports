.class public interface abstract Lmiui/window/MiuiEmbeddingWindowStub;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindowStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;,
        Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;
    }
.end annotation


# static fields
.field public static final blacklist ENABLED:Z

.field public static final blacklist IS_FOLD:Z

.field public static final blacklist IS_TABLET:Z

.field public static final blacklist RESULT_IS_NEED_EVENT_MAPPING:Ljava/lang/String; = "RESULT_IS_NEED_EVENT_MAPPING"

.field public static final blacklist RESULT_MAPPING_HOT_REGION:Ljava/lang/String; = "RESULT_MAPPING_HOT_REGION"

.field public static final blacklist RESULT_MID_REGION:Ljava/lang/String; = "RESULT_MID_REGION"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    sput-boolean v0, Lmiui/window/MiuiEmbeddingWindowStub;->IS_FOLD:Z

    .line 38
    const-string v0, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tablet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/window/MiuiEmbeddingWindowStub;->IS_TABLET:Z

    .line 39
    const-string v0, "ro.config.miui_activity_embedding_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/window/MiuiEmbeddingWindowStub;->ENABLED:Z

    return-void
.end method

.method public static blacklist get()Lmiui/window/MiuiEmbeddingWindowStub;
    .registers 1

    .line 86
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist adaptGetRawXForEmbeddingScaleIfNeeded(FLmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;)F
    .registers 3
    .param p1, "rawX"    # F
    .param p2, "parameter"    # Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    .line 115
    return p1
.end method

.method public blacklist adaptGetRawYForEmbeddingScaleIfNeeded(FLmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;)F
    .registers 3
    .param p1, "rawY"    # F
    .param p2, "parameter"    # Lmiui/window/MiuiEmbeddingWindowStub$EmbeddingScaleParameter;

    .line 117
    return p1
.end method

.method public blacklist adaptImeForEmbeddingScaleIfNeeded(Landroid/app/Activity;Landroid/view/InsetsState;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "state"    # Landroid/view/InsetsState;

    .line 113
    return-void
.end method

.method public blacklist collectAllActivityLifecycleCallbacks(Landroid/app/Application;[Ljava/lang/Object;Landroid/app/Application;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p1, "curApp"    # Landroid/app/Application;
    .param p2, "curAppCallback"    # [Ljava/lang/Object;
    .param p3, "initApp"    # Landroid/app/Application;
    .param p4, "initAppCallback"    # [Ljava/lang/Object;

    .line 125
    return-object p2
.end method

.method public blacklist enable()Z
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmbeddedApps()Ljava/util/Map;
    .registers 2

    .line 97
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getEmbeddingPortraitBounds()Landroid/graphics/Rect;
    .registers 2

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initSystemRules()V
    .registers 1

    .line 91
    return-void
.end method

.method public blacklist isAppNeedRelaunch(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDisableSensor(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEmbeddingEnabledForPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 120
    return-object p3
.end method

.method public blacklist onStartActivityResult(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "bOptions"    # Landroid/os/Bundle;

    .line 122
    return-void
.end method

.method public blacklist onWindowFocusChanged(Landroid/app/Activity;Z)Z
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "hasFocus"    # Z

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist overrideDisplayRotation(Landroid/view/DisplayInfo;)Z
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sandboxDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Resources;)Z
    .registers 4
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setEmbeddedEnable(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setEmbeddingHomePage(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldReportConfigChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "currentConfig"    # Landroid/content/res/Configuration;

    .line 111
    const/4 v0, 0x0

    return v0
.end method
