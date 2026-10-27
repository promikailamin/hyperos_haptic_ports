.class public interface abstract Landroid/content/pm/verify/developer/IDeveloperVerifierService;
.super Ljava/lang/Object;
.source "IDeveloperVerifierService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/developer/IDeveloperVerifierService$Stub;,
        Landroid/content/pm/verify/developer/IDeveloperVerifierService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.pm.verify.developer.IDeveloperVerifierService"


# virtual methods
.method public abstract blacklist onPackageNameAvailable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVerificationCancelled(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVerificationRequired(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVerificationRetry(Landroid/content/pm/verify/developer/DeveloperVerificationSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVerificationTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
