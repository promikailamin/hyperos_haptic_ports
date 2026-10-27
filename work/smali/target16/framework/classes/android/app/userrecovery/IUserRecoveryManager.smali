.class public interface abstract Landroid/app/userrecovery/IUserRecoveryManager;
.super Ljava/lang/Object;
.source "IUserRecoveryManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/userrecovery/IUserRecoveryManager$Stub;,
        Landroid/app/userrecovery/IUserRecoveryManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.userrecovery.IUserRecoveryManager"


# virtual methods
.method public abstract blacklist createRecoverySession(I)Landroid/app/userrecovery/IUserRecoverySession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestRart(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startRecovery(I)Landroid/app/userrecovery/RecoveryChallenge;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
