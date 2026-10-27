.class public abstract Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;
.super Ljava/lang/Object;
.source "IFAAFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/face/IFAAFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticatorCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationError(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 70
    return-void
.end method

.method public blacklist onAuthenticationFailed(I)V
    .registers 2
    .param p1, "errCode"    # I

    .line 88
    return-void
.end method

.method public blacklist onAuthenticationStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 76
    return-void
.end method

.method public blacklist onAuthenticationSucceeded()V
    .registers 1

    .line 82
    return-void
.end method
