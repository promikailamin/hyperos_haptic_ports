.class public interface abstract Lcom/android/server/wm/FixedOrizationScaleStub;
.super Ljava/lang/Object;
.source "FixedOrizationScaleStub.java"


# direct methods
.method public static newInstance()Lcom/android/server/wm/FixedOrizationScaleStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/wm/FixedOrizationScaleStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FixedOrizationScaleStub;

    return-object v0
.end method


# virtual methods
.method public adaptCompatConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "resolvedConfig"    # Landroid/content/res/Configuration;
    .param p3, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 19
    return-void
.end method

.method public getCompatConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)Landroid/content/res/Configuration;
    .registers 3
    .param p1, "globalConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "dp"    # Lcom/android/server/wm/DisplayContent;

    .line 26
    return-object p1
.end method

.method public getCurrentFixedOrizationScale(F)F
    .registers 2
    .param p1, "currentScale"    # F

    .line 22
    return p1
.end method

.method public getScaledBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 33
    return-object p1
.end method

.method public updateScale(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "Configuration"    # Landroid/content/res/Configuration;

    .line 30
    return-void
.end method
