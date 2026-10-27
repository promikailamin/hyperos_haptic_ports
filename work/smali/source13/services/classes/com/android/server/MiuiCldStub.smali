.class public interface abstract Lcom/android/server/MiuiCldStub;
.super Ljava/lang/Object;
.source "MiuiCldStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/MiuiCldStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/MiuiCldStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiCldStub;

    return-object v0
.end method


# virtual methods
.method public getCldFragLevel()I
    .registers 2

    .line 18
    const/4 v0, -0x1

    return v0
.end method

.method public abstract initCldListener(Landroid/os/IVold;Landroid/content/Context;)V
.end method

.method public triggerCld()I
    .registers 2

    .line 15
    const/4 v0, -0x1

    return v0
.end method
