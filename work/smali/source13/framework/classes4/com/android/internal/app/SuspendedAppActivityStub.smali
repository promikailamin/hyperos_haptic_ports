.class public interface abstract Lcom/android/internal/app/SuspendedAppActivityStub;
.super Ljava/lang/Object;
.source "SuspendedAppActivityStub.java"


# direct methods
.method public static blacklist newInstance()Lcom/android/internal/app/SuspendedAppActivityStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/internal/app/SuspendedAppActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SuspendedAppActivityStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist ensureJumpToAppTimer(Landroid/content/pm/SuspendDialogInfo;)Z
.end method

.method public abstract blacklist getTimerTargetIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method
