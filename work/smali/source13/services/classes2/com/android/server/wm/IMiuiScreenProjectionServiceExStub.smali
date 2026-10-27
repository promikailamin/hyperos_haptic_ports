.class public interface abstract Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;
.super Ljava/lang/Object;
.source "IMiuiScreenProjectionServiceExStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IMiuiScreenProjectionServiceExStub;

    return-object v0
.end method


# virtual methods
.method public abstract onCastActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract setAlertWindowTitle(Landroid/view/WindowManager$LayoutParams;)V
.end method
