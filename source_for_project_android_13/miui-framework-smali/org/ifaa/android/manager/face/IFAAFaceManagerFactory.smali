.class public Lorg/ifaa/android/manager/face/IFAAFaceManagerFactory;
.super Ljava/lang/Object;
.source "IFAAFaceManagerFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getIFAAFaceManager(Landroid/content/Context;)Lorg/ifaa/android/manager/face/IFAAFaceManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    invoke-static {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->getInstance(Landroid/content/Context;)Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;

    move-result-object v0

    return-object v0
.end method
