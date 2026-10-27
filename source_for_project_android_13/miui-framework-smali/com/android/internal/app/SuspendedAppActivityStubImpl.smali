.class public Lcom/android/internal/app/SuspendedAppActivityStubImpl;
.super Ljava/lang/Object;
.source "SuspendedAppActivityStubImpl.java"

# interfaces
.implements Lcom/android/internal/app/SuspendedAppActivityStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist ensureJumpToAppTimer(Landroid/content/pm/SuspendDialogInfo;)Z
    .registers 3
    .param p1, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;

    .line 18
    invoke-static {p1}, Lcom/android/internal/app/SuspendedAppActivityInjector;->ensureJumpToAppTimer(Landroid/content/pm/SuspendDialogInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist getTimerTargetIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "suspendingPackage"    # Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/android/internal/app/SuspendedAppActivityInjector;->getTimerTargetIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
