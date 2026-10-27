.class public Lorg/mipay/android/manager/MipayManagerFactory;
.super Ljava/lang/Object;
.source "MipayManagerFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMipayManager(Landroid/content/Context;I)Lorg/mipay/android/manager/IMipayManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authType"    # I

    .line 10
    invoke-static {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->getInstance(Landroid/content/Context;)Lorg/mipay/android/manager/IMipayManager;

    move-result-object v0

    return-object v0
.end method
