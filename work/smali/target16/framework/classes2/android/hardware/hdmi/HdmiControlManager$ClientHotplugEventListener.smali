.class final Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;
.super Ljava/lang/Object;
.source "HdmiControlManager.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientHotplugEventListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiControlManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1244
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager;Landroid/hardware/hdmi/HdmiControlManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;-><init>(Landroid/hardware/hdmi/HdmiControlManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .registers 6

    .line 1248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    :try_start_5
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-static {v0}, Landroid/hardware/hdmi/HdmiControlManager;->-$$Nest$fgetmService(Landroid/hardware/hdmi/HdmiControlManager;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_66

    .line 1253
    nop

    .line 1254
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find port info, not updating connected status. Hotplug event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HdmiControlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return-void

    .line 1260
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1261
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_64

    .line 1262
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_65

    .line 1263
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager$ClientHotplugEventListener;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    .line 1264
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 1265
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result p1

    goto :goto_60

    .line 1266
    :cond_5d
    const p1, 0xffff

    .line 1263
    :goto_60
    invoke-static {v0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->-$$Nest$msetLocalPhysicalAddress(Landroid/hardware/hdmi/HdmiControlManager;I)V

    goto :goto_65

    .line 1270
    :cond_64
    goto :goto_33

    .line 1271
    :cond_65
    :goto_65
    return-void

    .line 1251
    :catch_66
    move-exception p1

    .line 1252
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
