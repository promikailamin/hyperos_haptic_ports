.class public abstract Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;
.super Lorg/ifaa/android/manager/face/IFAAFaceManager;
.source "IFAAFaceManagerV2.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManager;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist authenticate(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
.end method

.method public abstract blacklist cancel(Ljava/lang/String;)I
.end method

.method public abstract blacklist enroll(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 14
    const/4 v0, 0x2

    return v0
.end method

.method public abstract blacklist invokeCommand(Landroid/content/Context;[B)[B
.end method

.method public abstract blacklist upgrade(Ljava/lang/String;)V
.end method
