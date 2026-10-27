.class Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$1;
.super Ljava/lang/Object;
.source "IFAAFaceManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 105
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfgetmService()Lorg/ifaa/android/manager/IIFAAService;

    move-result-object v0

    if-nez v0, :cond_7

    .line 106
    return-void

    .line 108
    :cond_7
    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "binderDied, unlink service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfgetmService()Lorg/ifaa/android/manager/IIFAAService;

    move-result-object v0

    invoke-interface {v0}, Lorg/ifaa/android/manager/IIFAAService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfgetmDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 110
    return-void
.end method
