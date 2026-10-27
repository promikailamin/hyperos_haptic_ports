.class public interface abstract Lcom/android/server/MountServiceIdlerStub;
.super Ljava/lang/Object;
.source "MountServiceIdlerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/MountServiceIdlerStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/MountServiceIdlerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountServiceIdlerStub;

    return-object v0
.end method


# virtual methods
.method public abstract internalScheduleIdlePass(Landroid/content/Context;ILandroid/content/ComponentName;)Z
.end method

.method public abstract runIdleMaint(Landroid/content/Context;ILandroid/content/ComponentName;)Z
.end method
