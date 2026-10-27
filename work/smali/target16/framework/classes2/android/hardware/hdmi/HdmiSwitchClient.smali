.class public Landroid/hardware/hdmi/HdmiSwitchClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiSwitchClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HdmiSwitchClient"


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 47
    return-void
.end method

.method private static blacklist getCallbackWrapper(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 2

    .line 50
    new-instance v0, Landroid/hardware/hdmi/HdmiSwitchClient$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiSwitchClient$1;-><init>(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getDeviceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 175
    :catch_7
    move-exception v0

    .line 176
    const-string v1, "TAG"

    const-string v2, "Failed to call getDeviceList():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .registers 2

    .line 60
    const/4 v0, 0x6

    return v0
.end method

.method public whitelist getPortInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 195
    :catch_7
    move-exception v0

    .line 196
    const-string v1, "TAG"

    const-string v2, "Failed to call getPortInfo():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist selectDevice(ILandroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .registers 4

    .line 72
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiSwitchClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 78
    nop

    .line 79
    return-void

    .line 75
    :catch_e
    move-exception p1

    .line 76
    const-string p2, "HdmiSwitchClient"

    const-string v0, "failed to select device: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    new-instance v1, Landroid/hardware/hdmi/HdmiSwitchClient$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/hardware/hdmi/HdmiSwitchClient$2;-><init>(Landroid/hardware/hdmi/HdmiSwitchClient;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_f

    .line 128
    nop

    .line 129
    return-void

    .line 125
    :catch_f
    move-exception p1

    .line 126
    const-string p2, "HdmiSwitchClient"

    const-string p3, "failed to select device: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist selectPort(ILandroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 92
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiSwitchClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 98
    nop

    .line 99
    return-void

    .line 95
    :catch_e
    move-exception p1

    .line 96
    const-string p2, "HdmiSwitchClient"

    const-string v0, "failed to select port: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist selectPort(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 143
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :try_start_3
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    new-instance v1, Landroid/hardware/hdmi/HdmiSwitchClient$3;

    invoke-direct {v1, p0, p2, p3}, Landroid/hardware/hdmi/HdmiSwitchClient$3;-><init>(Landroid/hardware/hdmi/HdmiSwitchClient;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_f

    .line 157
    nop

    .line 158
    return-void

    .line 154
    :catch_f
    move-exception p1

    .line 155
    const-string p2, "HdmiSwitchClient"

    const-string p3, "failed to select port: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
