.class public Lcom/xiaomi/freeform/MiuiFreeformImpl;
.super Ljava/lang/Object;
.source "MiuiFreeformImpl.java"

# interfaces
.implements Lcom/xiaomi/freeform/MiuiFreeformStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs blacklist callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p3, "method"    # Ljava/lang/String;
    .param p5, "values"    # [Ljava/lang/Object;
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

    .line 119
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2, p3, p4, p5}, Landroid/util/MiuiMultiWindowUtils;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist checkReadyForDispatch(ILandroid/hardware/SensorEvent;)Z
    .registers 4
    .param p1, "sensorType"    # I
    .param p2, "event"    # Landroid/hardware/SensorEvent;

    .line 170
    invoke-static {p1, p2}, Landroid/util/MiuiMultiWindowAdapter;->checkReadyForDispatch(ILandroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "freeformPkg"    # Ljava/lang/String;
    .param p3, "noCheck"    # Z
    .param p4, "launchBoundsLeft"    # I
    .param p5, "launchBoundsTop"    # I

    .line 145
    invoke-static {p1, p2, p3, p4, p5}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "freeformPkg"    # Ljava/lang/String;
    .param p3, "noCheck"    # Z
    .param p4, "isMiniFreeformMode"    # Z

    .line 140
    invoke-static {p1, p2, p3, p4}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZ)Landroid/app/ActivityOptions;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "freeformPkg"    # Ljava/lang/String;
    .param p3, "noCheck"    # Z
    .param p4, "isMiniFreeformMode"    # Z
    .param p5, "isDesktopModeActive"    # Z

    .line 150
    invoke-static {p1, p2, p3, p4, p5}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 58
    invoke-static {p1, p2}, Landroid/util/MiuiMultiWindowAdapter;->getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 59
    return-void
.end method

.method public blacklist getFixedRotationAppList()Ljava/util/List;
    .registers 2

    .line 45
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getFixedRotationAppListInSystem()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHeight(Landroid/content/res/Resources;I)I
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "cachedAppWidthCompat"    # I

    .line 70
    invoke-static {p1, p2}, Landroid/util/MiuiMultiWindowAdapter;->getWidth(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method public blacklist getListAboutNoNeedInFreeform()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getFreeformVideoWhiteListInSystem()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 78
    invoke-static {p1, p2}, Landroid/util/MiuiMultiWindowAdapter;->getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 79
    return-void
.end method

.method public blacklist getNavBarPosition()I
    .registers 2

    .line 123
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getNavBarPosition()I

    move-result v0

    return v0
.end method

.method public blacklist getRotationFromDisplayApp()Ljava/util/List;
    .registers 2

    .line 110
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getRotationFromDisplayAppInSystem()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSensorDisableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->getSensorDisableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .line 62
    invoke-static {p1, p2}, Landroid/util/MiuiMultiWindowAdapter;->getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V

    .line 63
    return-void
.end method

.method public blacklist getSurfaceViewBackgroundVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/res/Resources;IZLjava/lang/String;)V
    .registers 8
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "backgroundControl"    # Landroid/view/SurfaceControl;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "subLayer"    # I
    .param p6, "disableBackgroundLayer"    # Z
    .param p7, "className"    # Ljava/lang/String;

    .line 84
    invoke-static/range {p1 .. p7}, Landroid/util/MiuiMultiWindowAdapter;->getSurfaceViewBackgroundVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/res/Resources;IZLjava/lang/String;)V

    .line 85
    return-void
.end method

.method public blacklist getWidth(Landroid/content/res/Resources;I)I
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "cachedAppWidthCompat"    # I

    .line 66
    invoke-static {p1, p2}, Landroid/util/MiuiMultiWindowAdapter;->getWidth(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method public blacklist getWindowVisibleDisplayFrame(Landroid/view/Window;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "phoneWindow"    # Landroid/view/Window;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .param p4, "componentName"    # Landroid/content/ComponentName;

    .line 92
    invoke-static {p1, p2, p3, p4}, Landroid/util/MiuiMultiWindowAdapter;->getWindowVisibleDisplayFrame(Landroid/view/Window;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/ComponentName;)V

    .line 93
    return-void
.end method

.method public blacklist getsResumedActivityName()Ljava/lang/String;
    .registers 2

    .line 106
    const-string v0, ""

    return-object v0
.end method

.method public blacklist hasSmallFreeformFeature()Z
    .registers 2

    .line 74
    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->hasSmallFreeformFeature()Z

    move-result v0

    return v0
.end method

.method public blacklist interceptedForFreeForm(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 174
    invoke-static {p1}, Landroid/util/MiuiMultiWindowAdapter;->interceptedForFreeForm(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .line 114
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isInSplitMode(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 178
    invoke-static {p1}, Landroid/util/MiuiMultiWindowAdapter;->isInSplitMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist isInstanceOfMiuiDecorCaptionView(Lcom/android/internal/widget/DecorCaptionView;)Z
    .registers 3
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 100
    if-eqz p1, :cond_8

    instance-of v0, p1, Lcom/android/internal/widget/MiuiDecorCaptionView;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isPrevent(Landroid/view/View;ILandroid/content/ComponentName;I)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "compName"    # Landroid/content/ComponentName;
    .param p4, "windowMode"    # I

    .line 88
    invoke-static {p1, p2, p3, p4}, Landroid/util/MiuiMultiWindowAdapter;->isPrevent(Landroid/view/View;ILandroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public blacklist needSplitInFreeform(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 194
    .local v0, "configuration":Landroid/content/res/Configuration;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    .local v1, "displaySize":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 196
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 197
    .local v2, "configSize":Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/util/MiuiMultiWindowUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3d

    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 198
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_3d

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 199
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    if-gt v3, v4, :cond_3d

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 200
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v3, v5

    if-gt v3, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    .line 197
    :goto_3e
    return v4
.end method

.method public blacklist shouldReportChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;
    .param p4, "publicDiff"    # I

    .line 182
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_b

    .line 183
    return v1

    .line 185
    :cond_b
    iget-object v0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 186
    return v2

    .line 188
    :cond_15
    and-int/lit16 v0, p4, 0x400

    if-eqz v0, :cond_2d

    .line 189
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2d

    move v1, v2

    goto :goto_2e

    :cond_2d
    nop

    .line 188
    :goto_2e
    return v1
.end method

.method public blacklist startSmallFreeformFromNotification(Landroid/content/Context;)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-static {p1}, Landroid/util/MiuiMultiWindowUtils;->startSmallFreeformFromNotification(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist supportDecorCaption(Lcom/android/internal/policy/PhoneWindow;)Z
    .registers 5
    .param p1, "window"    # Lcom/android/internal/policy/PhoneWindow;

    .line 154
    const/4 v0, 0x1

    .line 155
    .local v0, "supportDecorCaption":Z
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_5e

    .line 157
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "com.eg.android.AlipayGphone/com.alipay.mobile.quinox.SchemeLauncherActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 160
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "com.tencent.mobileqq/cooperation.qwallet.plugin.QWalletToolFragmentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "com.google.android.marvin.talkback/com.google.android.accessibility.switchaccesslegacy.setupwizard.activity.SetupWizardActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 164
    :cond_5d
    const/4 v0, 0x0

    .line 166
    :cond_5e
    return v0
.end method

.method public blacklist supportFreeform()Z
    .registers 2

    .line 131
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->supportFreeform()Z

    move-result v0

    return v0
.end method

.method public blacklist updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "application"    # Landroid/app/Application;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 54
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowAdapter;->updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 55
    return-void
.end method

.method public blacklist updateCaptionColor(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/policy/PhoneWindow;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/DecorCaptionView;
    .param p3, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 96
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowAdapter;->updateCaptionColor(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/policy/PhoneWindow;)V

    .line 97
    return-void
.end method

.method public blacklist updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "application"    # Landroid/app/Application;

    .line 50
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowAdapter;->updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V

    .line 51
    return-void
.end method
