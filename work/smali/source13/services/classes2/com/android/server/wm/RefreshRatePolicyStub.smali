.class public interface abstract Lcom/android/server/wm/RefreshRatePolicyStub;
.super Ljava/lang/Object;
.source "RefreshRatePolicyStub.java"


# static fields
.field public static final INVALID_SCENE:I = -0x1


# direct methods
.method public static getInstance()Lcom/android/server/wm/RefreshRatePolicyStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/wm/RefreshRatePolicyStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RefreshRatePolicyStub;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 20
    return-void
.end method

.method public getSceneRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 15
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public onSystemReady()V
    .registers 1

    .line 18
    return-void
.end method
