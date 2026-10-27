.class public abstract Landroid/content/pm/verify/developer/DeveloperVerifierService;
.super Landroid/app/Service;
.source "DeveloperVerifierService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 100
    if-eqz p1, :cond_15

    const-string v0, "android.content.pm.action.VERIFY_DEVELOPER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_15

    .line 103
    :cond_f
    new-instance p1, Landroid/content/pm/verify/developer/DeveloperVerifierService$1;

    invoke-direct {p1, p0}, Landroid/content/pm/verify/developer/DeveloperVerifierService$1;-><init>(Landroid/content/pm/verify/developer/DeveloperVerifierService;)V

    return-object p1

    .line 101
    :cond_15
    :goto_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract whitelist onPackageNameAvailable(Ljava/lang/String;)V
.end method

.method public abstract whitelist onVerificationCancelled(Ljava/lang/String;)V
.end method

.method public abstract whitelist onVerificationRequired(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V
.end method

.method public abstract whitelist onVerificationRetry(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V
.end method

.method public abstract whitelist onVerificationTimeout(I)V
.end method
