.class Lorg/mipay/android/manager/MipayManagerImpl$2;
.super Ljava/lang/Object;
.source "MipayManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mipay/android/manager/MipayManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 102
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetmService()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    .line 103
    return-void

    .line 105
    :cond_7
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied, unlink the service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetmService()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetmDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 107
    return-void
.end method
