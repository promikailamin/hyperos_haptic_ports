.class public interface abstract Lcom/xiaomi/freeform/MiuiFreeformStub;
.super Ljava/lang/Object;
.source "MiuiFreeformStub.java"


# direct methods
.method public static blacklist getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;
    .registers 1

    .line 31
    const-class v0, Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/freeform/MiuiFreeformStub;

    return-object v0
.end method


# virtual methods
.method public varargs abstract blacklist callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public blacklist checkReadyForDispatch(ILandroid/hardware/SensorEvent;)Z
    .registers 4
    .param p1, "sensorType"    # I
    .param p2, "event"    # Landroid/hardware/SensorEvent;

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public abstract blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;
.end method

.method public abstract blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;
.end method

.method public abstract blacklist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZ)Landroid/app/ActivityOptions;
.end method

.method public abstract blacklist getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
.end method

.method public abstract blacklist getFixedRotationAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getHeight(Landroid/content/res/Resources;I)I
.end method

.method public abstract blacklist getListAboutNoNeedInFreeform()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
.end method

.method public abstract blacklist getNavBarPosition()I
.end method

.method public abstract blacklist getRotationFromDisplayApp()Ljava/util/List;
.end method

.method public abstract blacklist getSensorDisableList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V
.end method

.method public abstract blacklist getSurfaceViewBackgroundVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/res/Resources;IZLjava/lang/String;)V
.end method

.method public abstract blacklist getWidth(Landroid/content/res/Resources;I)I
.end method

.method public abstract blacklist getWindowVisibleDisplayFrame(Landroid/view/Window;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist getsResumedActivityName()Ljava/lang/String;
.end method

.method public abstract blacklist hasSmallFreeformFeature()Z
.end method

.method public abstract blacklist interceptedForFreeForm(Landroid/view/View;)Z
.end method

.method public varargs abstract blacklist invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract blacklist isInSplitMode(Landroid/content/Context;)Z
.end method

.method public abstract blacklist isInstanceOfMiuiDecorCaptionView(Lcom/android/internal/widget/DecorCaptionView;)Z
.end method

.method public abstract blacklist isPrevent(Landroid/view/View;ILandroid/content/ComponentName;I)Z
.end method

.method public abstract blacklist needSplitInFreeform(Landroid/content/Context;)Z
.end method

.method public abstract blacklist shouldReportChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z
.end method

.method public abstract blacklist startSmallFreeformFromNotification(Landroid/content/Context;)I
.end method

.method public abstract blacklist supportDecorCaption(Lcom/android/internal/policy/PhoneWindow;)Z
.end method

.method public abstract blacklist supportFreeform()Z
.end method

.method public abstract blacklist updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
.end method

.method public abstract blacklist updateCaptionColor(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/policy/PhoneWindow;)V
.end method

.method public abstract blacklist updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V
.end method
