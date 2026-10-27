.class public interface abstract Lcom/android/server/wm/AppRTWmsStub;
.super Ljava/lang/Object;
.source "AppRTWmsStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/AppRTWmsStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/AppRTWmsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppRTWmsStub;

    return-object v0
.end method


# virtual methods
.method public abstract getTAG()Ljava/lang/String;
.end method

.method public abstract isAppResolutionTunerSupport()Z
.end method

.method public abstract isDebug()Z
.end method

.method public abstract setAppResolutionTunerSupport(Z)V
.end method

.method public abstract setWindowScaleByWL(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;Landroid/view/WindowManager$LayoutParams;II)V
.end method

.method public abstract updateResolutionTunerConfig(Ljava/lang/String;)Z
.end method
