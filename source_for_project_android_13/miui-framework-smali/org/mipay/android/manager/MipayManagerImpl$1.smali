.class Lorg/mipay/android/manager/MipayManagerImpl$1;
.super Ljava/lang/Thread;
.source "MipayManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "tidaIntent":Landroid/content/Intent;
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetmPackName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetmTidaActName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetmipayconn()Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 64
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot bind service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetmTidaActName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_3d
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tida client calling joinThreadPool"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_4c
    invoke-static {}, Landroid/os/Binder;->joinThreadPool()V

    .line 68
    return-void
.end method
