.class public abstract Landroid/hardware/hdmi/HdmiClient;
.super Ljava/lang/Object;
.source "HdmiClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "HdmiClient"

.field private static final blacklist UNKNOWN_VENDOR_ID:I = 0xffffff


# instance fields
.field private greylist-max-o mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final greylist-max-o mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 34
    return-void
.end method

.method private static blacklist getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 4

    .line 84
    new-instance v0, Landroid/hardware/hdmi/HdmiClient$1;

    invoke-direct {v0, p1, p2, p0}, Landroid/hardware/hdmi/HdmiClient$1;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;I)V

    return-object v0
.end method

.method private static greylist-max-o getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .registers 2

    .line 197
    new-instance v0, Landroid/hardware/hdmi/HdmiClient$2;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiClient$2;-><init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 103
    :catch_7
    move-exception v0

    .line 104
    const-string v1, "HdmiClient"

    const-string v2, "getActiveSource threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract greylist-max-o getDeviceType()I
.end method

.method public whitelist selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)V
    .registers 5

    .line 65
    if-eqz p3, :cond_1f

    .line 68
    if-eqz p2, :cond_17

    .line 72
    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 73
    invoke-static {p1, p2, p3}, Landroid/hardware/hdmi/HdmiClient;->getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p2

    .line 72
    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 76
    goto :goto_16

    .line 74
    :catch_e
    move-exception p1

    .line 75
    const-string p2, "HdmiClient"

    const-string p3, "failed to select device: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :goto_16
    return-void

    .line 69
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sendKeyEvent(IZ)V
    .registers 5

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendKeyEvent(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 120
    goto :goto_12

    .line 118
    :catch_a
    move-exception p1

    .line 119
    const-string p2, "HdmiClient"

    const-string v0, "sendKeyEvent threw exception "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_12
    return-void
.end method

.method public whitelist sendVendorCommand(I[BZ)V
    .registers 6

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->sendVendorCommand(II[BZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 157
    goto :goto_12

    .line 155
    :catch_a
    move-exception p1

    .line 156
    const-string p2, "HdmiClient"

    const-string p3, "failed to send vendor command: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :goto_12
    return-void
.end method

.method public blacklist sendVolumeKeyEvent(IZ)V
    .registers 5

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendVolumeKeyEvent(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 139
    nop

    .line 140
    return-void

    .line 136
    :catch_b
    move-exception p1

    .line 137
    const-string p2, "HdmiClient"

    const-string v0, "sendVolumeKeyEvent threw exception "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .registers 3

    .line 169
    const v0, 0xffffff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/hdmi/HdmiClient;->setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;I)V

    .line 170
    return-void
.end method

.method public whitelist setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;I)V
    .registers 4

    .line 180
    if-eqz p1, :cond_23

    .line 183
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    if-nez v0, :cond_1b

    .line 187
    :try_start_6
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object p1

    .line 188
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 189
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 192
    goto :goto_1a

    .line 190
    :catch_12
    move-exception p1

    .line 191
    const-string p2, "HdmiClient"

    const-string v0, "failed to set vendor command listener: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :goto_1a
    return-void

    .line 184
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "listener was already set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
