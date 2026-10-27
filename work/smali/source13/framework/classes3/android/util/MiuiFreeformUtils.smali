.class public Landroid/util/MiuiFreeformUtils;
.super Ljava/lang/Object;
.source "MiuiFreeformUtils.java"


# static fields
.field private static blacklist imp:Lcom/xiaomi/freeform/MiuiFreeformStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v0

    sput-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p2, "method"    # Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 95
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist checkReadyForDispatch(ILandroid/hardware/SensorEvent;)Z
    .registers 3
    .param p0, "sensorType"    # I
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 136
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->checkReadyForDispatch(ILandroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "launchBoundsLeft"    # I
    .param p4, "launchBoundsTop"    # I

    .line 122
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "isMiniFreeformMode"    # Z

    .line 117
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZ)Landroid/app/ActivityOptions;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "isMiniFreeformMode"    # Z
    .param p4, "isDesktopModeActive"    # Z

    .line 128
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "metrics"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 45
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 46
    return-void
.end method

.method public static blacklist getFixedRotationAppList()Ljava/util/List;
    .registers 2

    .line 33
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getFixedRotationAppList()Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, "fixedRotationAppList":Ljava/util/List;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static blacklist getHeight(Landroid/content/res/Resources;I)I
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "cachedAppWidthCompat"    # I

    .line 55
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHeight(Landroid/content/res/Resources;I)I

    move-result v0

    .line 56
    .local v0, "height":I
    if-eqz v0, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    move v1, p1

    :goto_b
    return v1
.end method

.method public static blacklist getListAboutNoNeedInFreeform()Ljava/util/List;
    .registers 2

    .line 28
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getListAboutNoNeedInFreeform()Ljava/util/List;

    move-result-object v0

    .line 29
    .local v0, "noNeedInFreeformList":Ljava/util/List;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static blacklist getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 62
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 63
    return-void
.end method

.method public static blacklist getNavBarPosition()I
    .registers 1

    .line 99
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getNavBarPosition()I

    move-result v0

    return v0
.end method

.method public static blacklist getRotationFromDisplayApp()Ljava/util/List;
    .registers 2

    .line 86
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getRotationFromDisplayApp()Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "rotationFromDisplayApp":Ljava/util/List;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static blacklist getSensorDisableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getSensorDisableList()Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static blacklist getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 48
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V

    .line 49
    return-void
.end method

.method public static blacklist getSurfaceViewBackgroundVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/res/Resources;IZLjava/lang/String;)V
    .registers 15
    .param p0, "surfaceView"    # Landroid/view/SurfaceView;
    .param p1, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "backgroundControl"    # Landroid/view/SurfaceControl;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "subLayer"    # I
    .param p5, "disableBackgroundLayer"    # Z
    .param p6, "className"    # Ljava/lang/String;

    .line 67
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getSurfaceViewBackgroundVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/res/Resources;IZLjava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist getWidth(Landroid/content/res/Resources;I)I
    .registers 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "cachedAppWidthCompat"    # I

    .line 51
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 52
    .local v0, "width":I
    if-eqz v0, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    move v1, p1

    :goto_b
    return v1
.end method

.method public static blacklist getWindowVisibleDisplayFrame(Landroid/view/Window;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/ComponentName;)V
    .registers 5
    .param p0, "phoneWindow"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 73
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getWindowVisibleDisplayFrame(Landroid/view/Window;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/ComponentName;)V

    .line 74
    return-void
.end method

.method public static blacklist getsResumedActivityName()Ljava/lang/String;
    .registers 1

    .line 82
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getsResumedActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist hasSmallFreeformFeature()Z
    .registers 1

    .line 59
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->hasSmallFreeformFeature()Z

    move-result v0

    return v0
.end method

.method public static blacklist interceptedForFreeForm(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 140
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->interceptedForFreeForm(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 90
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isInSplitMode(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 144
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isInSplitMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isInstanceOfMiuiDecorCaptionView(Lcom/android/internal/widget/DecorCaptionView;)Z
    .registers 2
    .param p0, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 79
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isInstanceOfMiuiDecorCaptionView(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isPrevent(Landroid/view/View;ILandroid/content/ComponentName;I)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "windowMode"    # I

    .line 70
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPrevent(Landroid/view/View;ILandroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist needSplitInFreeform(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->needSplitInFreeform(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist shouldReportChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "publicDiff"    # I

    .line 148
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->shouldReportChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist startSmallFreeformFromNotification(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->startSmallFreeformFromNotification(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static blacklist supportDecorCaption(Lcom/android/internal/policy/PhoneWindow;)Z
    .registers 2
    .param p0, "window"    # Lcom/android/internal/policy/PhoneWindow;

    .line 132
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->supportDecorCaption(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v0

    return v0
.end method

.method public static blacklist supportFreeform()Z
    .registers 1

    .line 108
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->supportFreeform()Z

    move-result v0

    return v0
.end method

.method public static blacklist updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 42
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 43
    return-void
.end method

.method public static blacklist updateCaptionColor(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/policy/PhoneWindow;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;
    .param p2, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 76
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->updateCaptionColor(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/policy/PhoneWindow;)V

    .line 77
    return-void
.end method

.method public static blacklist updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V
    .registers 4
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "application"    # Landroid/app/Application;

    .line 39
    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V

    .line 40
    return-void
.end method
