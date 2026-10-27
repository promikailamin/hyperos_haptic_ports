.class final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NativeWrapperImpl11"
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field private mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

.field private final mLock:Ljava/lang/Object;

.field private mPhysicalAddress:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mLock:Ljava/lang/Object;

    .line 834
    const v0, 0xffff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;-><init>()V

    return-void
.end method


# virtual methods
.method connectToHal()Z
    .registers 6

    .line 843
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->getService(Z)Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_18
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_8} :catch_18

    .line 845
    const-wide/16 v3, 0x161

    :try_start_a
    invoke-interface {v2, p0, v3, v4}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_d} :catch_18

    .line 848
    goto :goto_16

    .line 846
    :catch_e
    move-exception v2

    .line 847
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_f
    const-string v3, "Couldn\'t link to death : "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18
    .catch Ljava/util/NoSuchElementException; {:try_start_f .. :try_end_16} :catch_18

    .line 852
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_16
    nop

    .line 853
    return v0

    .line 849
    :catch_18
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Couldn\'t connect to cec@1.1"

    invoke-static {v3, v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 851
    return v1
.end method

.method public nativeAddLogicalAddress(I)I
    .registers 5
    .param p1, "logicalAddress"    # I

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->addLogicalAddress_1_1(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 909
    :catch_7
    move-exception v0

    .line 910
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to add a logical address : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 911
    const/4 v1, 0x2

    return v1
.end method

.method public nativeClearLogicalAddress()V
    .registers 4

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->clearLogicalAddress()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 921
    goto :goto_f

    .line 919
    :catch_6
    move-exception v0

    .line 920
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to clear logical address : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 922
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public nativeEnableAudioReturnChannel(IZ)V
    .registers 6
    .param p1, "port"    # I
    .param p2, "flag"    # Z

    .line 999
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0, p1, p2}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->enableAudioReturnChannel(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1002
    goto :goto_f

    .line 1000
    :catch_6
    move-exception v0

    .line 1001
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to enable/disable ARC : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1003
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public nativeGetPhysicalAddress()I
    .registers 4

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0, p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V

    .line 928
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    .line 929
    :catch_8
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get physical address : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 931
    const v1, 0xffff

    return v1
.end method

.method public nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 14

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 959
    invoke-interface {v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->getPortInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 960
    .local v0, "hdmiPortInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    .line 961
    .local v1, "hdmiPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    const/4 v2, 0x0

    .line 962
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 963
    .local v4, "portInfo":Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;
    new-instance v12, Landroid/hardware/hdmi/HdmiPortInfo;

    iget v6, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    iget v7, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    iget-short v8, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    iget-boolean v9, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    const/4 v10, 0x0

    iget-boolean v11, v4, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    aput-object v12, v1, v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_35

    .line 969
    nop

    .end local v4    # "portInfo":Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;
    add-int/lit8 v2, v2, 0x1

    .line 970
    goto :goto_11

    .line 971
    :cond_34
    return-object v1

    .line 972
    .end local v0    # "hdmiPortInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;>;"
    .end local v1    # "hdmiPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    .end local v2    # "i":I
    :catch_35
    move-exception v0

    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get port information : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 974
    const/4 v1, 0x0

    return-object v1
.end method

.method public nativeGetVendorId()I
    .registers 4

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->getVendorId()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 949
    :catch_7
    move-exception v0

    .line 950
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get vendor id : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 951
    const/4 v1, 0x1

    return v1
.end method

.method public nativeGetVersion()I
    .registers 4

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->getCecVersion()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 939
    :catch_7
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get cec version : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 941
    const/4 v1, 0x1

    return v1
.end method

.method public nativeInit()Ljava/lang/String;
    .registers 2

    .line 838
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->connectToHal()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public nativeIsConnected(I)Z
    .registers 6
    .param p1, "port"    # I

    .line 1008
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->isConnected(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1009
    :catch_7
    move-exception v0

    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Failed to get connection info : "

    invoke-static {v3, v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 1011
    return v1
.end method

.method public nativeSendCecCommand(II[B)I
    .registers 11
    .param p1, "srcAddress"    # I
    .param p2, "dstAddress"    # I
    .param p3, "body"    # [B

    .line 889
    new-instance v0, Landroid/hardware/tv/cec/V1_1/CecMessage;

    invoke-direct {v0}, Landroid/hardware/tv/cec/V1_1/CecMessage;-><init>()V

    .line 891
    .local v0, "message":Landroid/hardware/tv/cec/V1_1/CecMessage;
    iput p1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->initiator:I

    .line 892
    iput p2, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->destination:I

    .line 893
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    .line 894
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_24

    aget-byte v4, p3, v3

    .line 895
    .local v4, "b":B
    iget-object v5, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 898
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v1, v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->sendMessage_1_1(Landroid/hardware/tv/cec/V1_1/CecMessage;)I

    move-result v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2a} :catch_2b

    return v1

    .line 899
    :catch_2b
    move-exception v1

    .line 900
    .local v1, "e":Landroid/os/RemoteException;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to send CEC message : "

    invoke-static {v3, v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 901
    const/4 v2, 0x3

    return v2
.end method

.method public nativeSetLanguage(Ljava/lang/String;)V
    .registers 5
    .param p1, "language"    # Ljava/lang/String;

    .line 990
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->setLanguage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 993
    goto :goto_f

    .line 991
    :catch_6
    move-exception v0

    .line 992
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to set language : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 994
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public nativeSetOption(IZ)V
    .registers 6
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-interface {v0, p1, p2}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->setOption(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 984
    goto :goto_f

    .line 982
    :catch_6
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to set option : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 985
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public onValues(IS)V
    .registers 5
    .param p1, "result"    # I
    .param p2, "addr"    # S

    .line 858
    if-nez p1, :cond_15

    .line 859
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_5
    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1}, Ljava/lang/Short;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I

    .line 861
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1

    .line 863
    :cond_15
    :goto_15
    return-void
.end method

.method public serviceDied(J)V
    .registers 5
    .param p1, "cookie"    # J

    .line 867
    const-wide/16 v0, 0x161

    cmp-long v0, p1, v0

    if-nez v0, :cond_2f

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service died cookie : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; reconnecting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->connectToHal()Z

    .line 871
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    if-eqz v0, :cond_2f

    .line 872
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    .line 875
    :cond_2f
    return-void
.end method

.method public setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 879
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 881
    :try_start_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;

    invoke-direct {v1, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    invoke-interface {v0, v1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->setCallback_1_1(Landroid/hardware/tv/cec/V1_1/IHdmiCecCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 884
    goto :goto_16

    .line 882
    :catch_d
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Couldn\'t initialise tv.cec callback : "

    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 885
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
