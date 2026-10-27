.class Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$2;
.super Ljava/lang/Object;
.source "IFAAFaceManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 117
    const-string v0, "IFAAFaceManagerImplV2"

    :try_start_2
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfgetmDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    .line 120
    goto :goto_22

    .line 118
    :catch_b
    move-exception v1

    .line 119
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkToDeath fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_22
    invoke-static {p2}, Lorg/ifaa/android/manager/IIFAAService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/ifaa/android/manager/IIFAAService;

    move-result-object v1

    invoke-static {v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfputmService(Lorg/ifaa/android/manager/IIFAAService;)V

    .line 125
    :try_start_29
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfgetmService()Lorg/ifaa/android/manager/IIFAAService;

    move-result-object v1

    invoke-interface {v1}, Lorg/ifaa/android/manager/IIFAAService;->faceGetCellinfo()I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31

    .line 128
    goto :goto_48

    .line 126
    :catch_31
    move-exception v1

    .line 127
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call ci info fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_48
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 133
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 134
    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "re-bind to IFAA service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sfgetmConn()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->-$$Nest$sminitService()V

    .line 138
    :cond_1f
    return-void
.end method
