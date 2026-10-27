.class public Lcom/android/server/am/OomAdjusterImpl;
.super Lcom/android/server/am/OomAdjuster;
.source "OomAdjusterImpl.java"


# static fields
.field public static final ADJ_SLOT_VALUES:[I

.field public static final PROC_STATE_SLOTS:[I


# instance fields
.field public final mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;

.field public final mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;

.field public final mComputeHostConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;

.field public final mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

.field public final mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

.field public final mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;

.field public final mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmComputeHostConsumer(Lcom/android/server/am/OomAdjusterImpl;)Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAdjSlotIfNecessary(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterImpl;->updateAdjSlotIfNecessary(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProcStateSlotIfNecessary(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterImpl;->updateProcStateSlotIfNecessary(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smforEachConnectionLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/util/function/BiConsumer;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjusterImpl;->forEachConnectionLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smunimportantConnectionLSP(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OomAdjusterImpl;->unimportantConnectionLSP(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    .line 175
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/server/am/OomAdjusterImpl;->ADJ_SLOT_VALUES:[I

    const/16 v0, 0x15

    .line 213
    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/server/am/OomAdjusterImpl;->PROC_STATE_SLOTS:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x3e8
        -0x384
        -0x320
        -0x2bc
        0x0
        0x32
        0x64
        0xc8
        0xe1
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e9
    .end array-data

    :array_3c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/OomAdjuster$Injector;Lcom/android/server/am/OomAdjuster$Callback;)V
    .registers 8

    .line 612
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/OomAdjuster$Injector;Lcom/android/server/am/OomAdjuster$Callback;)V

    .line 512
    new-instance p1, Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;-><init>(Lcom/android/server/am/OomAdjusterImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;

    .line 550
    new-instance p1, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;-><init>(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/OomAdjusterImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    .line 583
    new-instance p1, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;-><init>(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/OomAdjusterImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;

    .line 606
    new-instance p1, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;-><init>(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/OomAdjusterImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;

    .line 615
    new-instance p1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    sget-object p3, Lcom/android/server/am/OomAdjusterImpl;->PROC_STATE_SLOTS:[I

    array-length p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4, p3}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterImpl;II)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    .line 617
    new-instance p1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    sget-object p3, Lcom/android/server/am/OomAdjusterImpl;->ADJ_SLOT_VALUES:[I

    array-length p3, p3

    const/4 p4, 0x1

    invoke-direct {p1, p0, p4, p3}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterImpl;II)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    .line 619
    new-instance p1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;-><init>(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/OomAdjusterImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    return-void
.end method

.method public static adjToSlot(I)I
    .registers 3

    .line 200
    sget-object v0, Lcom/android/server/am/OomAdjusterImpl;->ADJ_SLOT_VALUES:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-lt p0, v1, :cond_1b

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    if-gt p0, v1, :cond_1b

    .line 202
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_15

    return p0

    :cond_15
    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :goto_18
    add-int/lit8 p0, p0, -0x1

    return p0

    .line 210
    :cond_1b
    array-length p0, v0

    goto :goto_18
.end method

.method public static allowSkipForBindScheduleLikeTopApp(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 3

    const/high16 v0, 0x80000

    .line 1003
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getScheduleLikeTopApp()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public static forEachClientConnectionLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/util/function/BiConsumer;)V
    .registers 10

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->numberOfRunningServices()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_4e

    .line 1032
    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getRunningServiceAt(I)Lcom/android/server/am/psc/ServiceRecordInternal;

    move-result-object v2

    .line 1033
    invoke-virtual {v2}, Lcom/android/server/am/psc/ServiceRecordInternal;->getConnectionsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_16
    if-ltz v3, :cond_4b

    .line 1035
    invoke-virtual {v2, v3}, Lcom/android/server/am/psc/ServiceRecordInternal;->getConnectionAt(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1036
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_22
    if-ltz v5, :cond_48

    .line 1037
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/psc/ConnectionRecordInternal;

    .line 1039
    iget-boolean v7, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz v7, :cond_39

    invoke-virtual {v6}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getAttributedClient()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v7

    if-eqz v7, :cond_39

    .line 1040
    invoke-virtual {v6}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getAttributedClient()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v7

    goto :goto_3d

    .line 1042
    :cond_39
    invoke-virtual {v6}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getClient()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v7

    :goto_3d
    if-eqz v7, :cond_45

    if-ne v7, p0, :cond_42

    goto :goto_45

    .line 1045
    :cond_42
    invoke-interface {p1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    :goto_45
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    :cond_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1050
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getProviders()Lcom/android/server/am/psc/ProcessProviderRecordInternal;

    move-result-object p0

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->numberOfProviders()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_58
    if-ltz v0, :cond_77

    .line 1052
    invoke-virtual {p0, v0}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->getProviderAt(I)Lcom/android/server/am/psc/ContentProviderRecordInternal;

    move-result-object v1

    .line 1053
    invoke-virtual {v1}, Lcom/android/server/am/psc/ContentProviderRecordInternal;->numberOfConnections()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_64
    if-ltz v2, :cond_74

    .line 1054
    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ContentProviderRecordInternal;->getConnectionsAt(I)Lcom/android/server/am/psc/ContentProviderConnectionInternal;

    move-result-object v3

    .line 1055
    invoke-interface {v3}, Lcom/android/server/am/psc/ContentProviderConnectionInternal;->getClient()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_64

    :cond_74
    add-int/lit8 v0, v0, -0x1

    goto :goto_58

    :cond_77
    return-void
.end method

.method public static forEachConnectionLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/util/function/BiConsumer;)V
    .registers 7

    .line 948
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->numberOfConnections()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_46

    .line 950
    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionAt(I)Lcom/android/server/am/psc/ConnectionRecordInternal;

    move-result-object v2

    const/4 v3, 0x2

    .line 951
    invoke-virtual {v2, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 952
    invoke-virtual {v2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getService()Lcom/android/server/am/psc/ServiceRecordInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/psc/ServiceRecordInternal;->getIsolationHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v3

    goto :goto_28

    .line 953
    :cond_20
    invoke-virtual {v2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getService()Lcom/android/server/am/psc/ServiceRecordInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/psc/ServiceRecordInternal;->getHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v3

    :goto_28
    if-eqz v3, :cond_43

    if-eq v3, p0, :cond_43

    .line 954
    invoke-static {v2, v3}, Lcom/android/server/am/OomAdjusterImpl;->isSandboxAttributedConnection(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_43

    .line 959
    :cond_33
    invoke-static {v3}, Lcom/android/server/am/OomAdjusterImpl;->isHighPriorityProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-static {v2, v3}, Lcom/android/server/am/OomAdjusterImpl;->allowSkipForBindScheduleLikeTopApp(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_43

    .line 962
    :cond_40
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    :goto_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 965
    :cond_46
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->numberOfSdkSandboxConnections()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4c
    if-ltz v1, :cond_72

    .line 966
    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getSdkSandboxConnectionAt(I)Lcom/android/server/am/psc/ConnectionRecordInternal;

    move-result-object v2

    .line 967
    invoke-virtual {v2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getService()Lcom/android/server/am/psc/ServiceRecordInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/psc/ServiceRecordInternal;->getHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v3

    if-eqz v3, :cond_6f

    if-ne v3, p0, :cond_5f

    goto :goto_6f

    .line 971
    :cond_5f
    invoke-static {v3}, Lcom/android/server/am/OomAdjusterImpl;->isHighPriorityProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-static {v2, v3}, Lcom/android/server/am/OomAdjusterImpl;->allowSkipForBindScheduleLikeTopApp(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v4

    if-eqz v4, :cond_6c

    goto :goto_6f

    .line 974
    :cond_6c
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    :goto_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    .line 977
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getProviders()Lcom/android/server/am/psc/ProcessProviderRecordInternal;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->numberOfProviderConnections()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7c
    if-ltz v1, :cond_9b

    .line 979
    invoke-virtual {v0, v1}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->getProviderConnectionAt(I)Lcom/android/server/am/psc/ContentProviderConnectionInternal;

    move-result-object v2

    .line 980
    invoke-interface {v2}, Lcom/android/server/am/psc/ContentProviderConnectionInternal;->getProvider()Lcom/android/server/am/psc/ContentProviderRecordInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/psc/ContentProviderRecordInternal;->getHostProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v3

    if-eqz v3, :cond_98

    if-eq v3, p0, :cond_98

    .line 981
    invoke-static {v3}, Lcom/android/server/am/OomAdjusterImpl;->isHighPriorityProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v4

    if-eqz v4, :cond_95

    goto :goto_98

    .line 984
    :cond_95
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_98
    :goto_98
    add-int/lit8 v1, v1, -0x1

    goto :goto_7c

    :cond_9b
    return-void
.end method

.method public static isHighPriorityProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 5

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v0

    const/16 v1, -0x384

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_12

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v0

    if-gez v0, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    .line 1015
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v1

    if-gtz v1, :cond_28

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurrentSchedulingGroup()I

    move-result v1

    if-lez v1, :cond_28

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p0

    const/4 v1, 0x2

    if-gt p0, v1, :cond_28

    move p0, v3

    goto :goto_29

    :cond_28
    move p0, v2

    :goto_29
    if-nez v0, :cond_2f

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    return v2

    :cond_2f
    :goto_2f
    return v3
.end method

.method public static isSandboxAttributedConnection(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 2

    .line 1008
    iget-boolean p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getAttributedClient()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static processStateToSlot(I)I
    .registers 2

    if-ltz p0, :cond_7

    const/16 v0, 0x13

    if-gt p0, v0, :cond_7

    return p0

    .line 241
    :cond_7
    sget-object p0, Lcom/android/server/am/OomAdjusterImpl;->PROC_STATE_SLOTS:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static unimportantConnectionLSP(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final collectAndMarkReachableProcessesLSP(Ljava/util/ArrayList;)V
    .registers 5

    .line 871
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;->init(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 872
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 873
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 874
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;

    invoke-static {v1, v2}, Lcom/android/server/am/OomAdjusterImpl;->forEachConnectionLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/util/function/BiConsumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public collectReachableProcessesLSP(Ljava/util/ArrayList;)V
    .registers 5

    .line 858
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterImpl;->collectAndMarkReachableProcessesLSP(Ljava/util/ArrayList;)V

    .line 859
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, p0, :cond_17

    .line 860
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 861
    invoke-virtual {v2, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setReachable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public final computeConnectionsLSP()V
    .registers 3

    .line 757
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_18

    .line 759
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    iput-object v0, v1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 760
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)V

    .line 761
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    goto :goto_6

    .line 765
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    :goto_1e
    if-eqz v0, :cond_30

    .line 767
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    iput-object v0, v1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 768
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)V

    .line 769
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    goto :goto_1e

    :cond_30
    return-void
.end method

.method public final computeOomAdjIgnoringReachablesLSP(Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)Z
    .registers 8

    .line 930
    iget-object v1, p1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 931
    iget-object v2, p1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 932
    iget-wide v4, p1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mNow:J

    const/4 v3, 0x0

    move-object v0, p0

    .line 934
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjusterImpl;->computeOomAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;ZJ)V

    .line 936
    iget-object p0, v0, Lcom/android/server/am/OomAdjusterImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->init(Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)V

    .line 937
    iget-object p0, v0, Lcom/android/server/am/OomAdjusterImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-static {v1, p0}, Lcom/android/server/am/OomAdjusterImpl;->forEachClientConnectionLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/util/function/BiConsumer;)V

    .line 938
    iget-object p0, v0, Lcom/android/server/am/OomAdjusterImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    iget-boolean p0, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return p0
.end method

.method public final computeOomAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;ZJ)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v10, p4

    .line 1126
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->clearCurCpuTimeReasons()V

    .line 1127
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->clearCurImplicitCpuTimeReasons()V

    const-wide v3, 0x7fffffffffffffffL

    .line 1131
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setFollowupUpdateUptimeMs(J)V

    .line 1133
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isProcessRunning()Z

    move-result v3

    const/16 v12, 0x13

    const/4 v13, 0x0

    if-nez v3, :cond_40

    .line 1134
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSeq(I)V

    .line 1135
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurrentSchedulingGroup(I)V

    .line 1136
    invoke-virtual {v1, v12}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurProcState(I)V

    .line 1137
    invoke-virtual {v1, v12}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(I)V

    const/16 v0, 0x3e7

    .line 1138
    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurAdj(I)V

    .line 1139
    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    .line 1140
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSeq()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCompletedAdjSeq(I)V

    .line 1141
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurCapability(I)V

    return-void

    .line 1145
    :cond_40
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTypeCode(I)V

    const/4 v14, 0x0

    .line 1146
    invoke-virtual {v1, v14}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSource(Ljava/lang/Object;)V

    .line 1147
    invoke-virtual {v1, v14}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTarget(Ljava/lang/Object;)V

    .line 1150
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getUidRecord()Lcom/android/server/am/psc/UidRecordInternal;

    move-result-object v3

    const/4 v15, 0x1

    if-eqz v3, :cond_59

    .line 1151
    invoke-virtual {v3}, Lcom/android/server/am/psc/UidRecordInternal;->isCurAllowListed()Z

    move-result v3

    if-eqz v3, :cond_59

    move v3, v15

    goto :goto_5a

    :cond_59
    move v3, v13

    :goto_5a
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v13, v5, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setShouldNotFreeze(ZZII)Z

    .line 1154
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1155
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getApplicationUid()I

    move-result v4

    if-ne v3, v4, :cond_6c

    move v9, v15

    goto :goto_6d

    :cond_6c
    move v9, v13

    .line 1158
    :goto_6d
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessServiceRecord;

    .line 1160
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v4

    const/4 v6, 0x5

    const/4 v7, 0x3

    const-string v8, "ActivityManager"

    if-gtz v4, :cond_118

    if-eqz v9, :cond_93

    .line 1164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Making fixed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_93
    const-string v3, "fixed"

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    .line 1167
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSeq(I)V

    .line 1168
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    .line 1169
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasForegroundActivities(Z)V

    .line 1170
    invoke-virtual {v1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurrentSchedulingGroup(I)V

    const/16 v3, 0x1ff

    .line 1171
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurCapability(I)V

    .line 1172
    invoke-virtual {v1, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->addCurCpuTimeReasons(I)V

    .line 1173
    invoke-virtual {v1, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->addCurImplicitCpuTimeReasons(I)V

    .line 1174
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurProcState(I)V

    .line 1179
    invoke-virtual {v1, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSystemNoUi(Z)V

    if-ne v1, v2, :cond_ca

    .line 1181
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSystemNoUi(Z)V

    .line 1182
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurrentSchedulingGroup(I)V

    .line 1183
    const-string/jumbo v2, "pers-top-activity"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    goto :goto_e3

    .line 1184
    :cond_ca
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasTopUi()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1186
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSystemNoUi(Z)V

    .line 1187
    const-string/jumbo v2, "pers-top-ui"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    goto :goto_e3

    .line 1188
    :cond_da
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasVisibleActivities()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 1189
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSystemNoUi(Z)V

    .line 1191
    :cond_e3
    :goto_e3
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isSystemNoUi()Z

    move-result v2

    if-nez v2, :cond_102

    .line 1192
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isScreenOnOrAnimatingLocked(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 1194
    invoke-virtual {v1, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurProcState(I)V

    .line 1195
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurrentSchedulingGroup(I)V

    goto :goto_102

    .line 1196
    :cond_f6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isVisibleDozeUiProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 1198
    invoke-virtual {v1, v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurProcState(I)V

    .line 1199
    invoke-virtual {v1, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurrentSchedulingGroup(I)V

    .line 1202
    :cond_102
    :goto_102
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(I)V

    .line 1203
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getMaxAdj()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurAdj(I)V

    .line 1204
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSeq()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCompletedAdjSeq(I)V

    return-void

    .line 1208
    :cond_118
    invoke-virtual {v1, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setSystemNoUi(Z)V

    .line 1210
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    const/16 v17, 0x10

    const/4 v12, 0x4

    if-ne v1, v2, :cond_157

    if-ne v4, v5, :cond_157

    .line 1223
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->useTopSchedGroupForTopProcess()Z

    move-result v18

    if-eqz v18, :cond_132

    .line 1225
    const-string/jumbo v5, "top-activity"

    invoke-virtual {v1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    move v5, v7

    goto :goto_138

    .line 1230
    :cond_132
    const-string v5, "intermediate-top-activity"

    invoke-virtual {v1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    const/4 v5, 0x2

    :goto_138
    if-eqz v9, :cond_14e

    .line 1235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    move v7, v5

    move v5, v13

    move/from16 v21, v5

    move/from16 v20, v15

    const/4 v6, 0x2

    goto/16 :goto_25b

    .line 1237
    :cond_157
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isRunningRemoteAnimation()Z

    move-result v5

    if-eqz v5, :cond_183

    .line 1240
    const-string/jumbo v5, "running-remote-anim"

    invoke-virtual {v1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_179

    .line 1243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making running remote anim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_179
    const/16 v5, 0x64

    move v6, v4

    move/from16 v20, v13

    move/from16 v21, v20

    const/4 v7, 0x3

    goto/16 :goto_25b

    .line 1245
    :cond_183
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->hasActiveInstrumentation()Z

    move-result v5

    if-eqz v5, :cond_1ad

    .line 1249
    const-string v5, "instrumentation"

    invoke-virtual {v1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_1a4

    .line 1253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making instrumentation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a4
    move v6, v12

    move v5, v13

    move/from16 v20, v5

    move/from16 v21, v17

    const/4 v7, 0x2

    goto/16 :goto_25b

    .line 1255
    :cond_1ad
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isReceivingBroadcast(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v5

    if-eqz v5, :cond_1e0

    .line 1262
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReceivers()Lcom/android/server/am/psc/ProcessReceiverRecordInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->getBroadcastReceiverSchedGroup()I

    move-result v5

    .line 1267
    const-string v6, "broadcast"

    invoke-virtual {v1, v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_1d6

    .line 1270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making broadcast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d6
    const/16 v6, 0xb

    move v7, v5

    move v5, v13

    move/from16 v20, v5

    :goto_1dc
    move/from16 v21, v20

    goto/16 :goto_25b

    .line 1272
    :cond_1e0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasExecutingServices()Z

    move-result v5

    if-eqz v5, :cond_213

    .line 1276
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isExecServicesFg()Z

    move-result v5

    if-eqz v5, :cond_1ee

    const/4 v5, 0x2

    goto :goto_1ef

    :cond_1ee
    move v5, v13

    .line 1277
    :goto_1ef
    const-string v6, "exec-service"

    invoke-virtual {v1, v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_20a

    .line 1280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making exec-service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20a
    move v7, v5

    move v5, v13

    move/from16 v20, v5

    move/from16 v21, v20

    const/16 v6, 0xa

    goto :goto_25b

    :cond_213
    if-ne v1, v2, :cond_237

    .line 1285
    const-string/jumbo v5, "top-sleeping"

    invoke-virtual {v1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_231

    .line 1288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making top (sleeping): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_231
    move v6, v4

    move v5, v13

    move v7, v5

    move/from16 v20, v7

    goto :goto_1dc

    .line 1296
    :cond_237
    const-string v5, "cch-empty"

    invoke-virtual {v1, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_252

    .line 1298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making empty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_252
    const/16 v5, 0x3e9

    move v7, v13

    move/from16 v20, v7

    move/from16 v21, v20

    const/16 v6, 0x13

    :goto_25b
    if-ne v1, v2, :cond_261

    move-object v2, v8

    move v8, v4

    move v4, v15

    goto :goto_264

    :cond_261
    move-object v2, v8

    move v8, v4

    move v4, v13

    :goto_264
    if-nez v4, :cond_29f

    .line 1304
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasActivities()Z

    move-result v22

    if-eqz v22, :cond_29f

    .line 1305
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mTmpOomAdjWindowCalculator:Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;

    move-object/from16 p2, v3

    move v3, v5

    move/from16 v18, v15

    move/from16 v5, v20

    const/4 v14, 0x2

    const/16 v19, 0x3

    move-object v15, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster$OomAdjWindowCalculator;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/psc/ProcessRecordInternal;IZZIIIZ)V

    move-object v1, v2

    .line 1309
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedAdj()I

    move-result v5

    .line 1310
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedForegroundActivities()Z

    move-result v4

    .line 1311
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasVisibleActivities()Z

    move-result v20

    .line 1312
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedProcState()I

    move-result v6

    .line 1313
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedSchedGroup()I

    move-result v2

    .line 1314
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedAdjType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    move/from16 v7, v20

    :goto_29c
    move v3, v6

    move v6, v4

    goto :goto_2ae

    :cond_29f
    move-object/from16 p2, v3

    move v3, v5

    move/from16 v18, v15

    move/from16 v5, v20

    const/4 v14, 0x2

    const/16 v19, 0x3

    move-object v15, v2

    move v2, v7

    move v7, v5

    move v5, v3

    goto :goto_29c

    :goto_2ae
    const/16 v4, 0x12

    if-le v3, v4, :cond_2d4

    .line 1317
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasRecentTasks()Z

    move-result v8

    if-eqz v8, :cond_2d4

    .line 1319
    const-string v3, "cch-rec"

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_2d3

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Raise procstate to cached recent: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d3
    move v3, v4

    .line 1327
    :cond_2d4
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v4

    .line 1328
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v8

    move-object/from16 v13, p2

    if-eqz v4, :cond_2e9

    .line 1330
    invoke-virtual {v13, v10, v11}, Lcom/android/server/am/ProcessServiceRecord;->areAllShortForegroundServicesProcstateTimedOut(J)Z

    move-result v20

    if-nez v20, :cond_2e9

    move/from16 v20, v18

    goto :goto_2eb

    :cond_2e9
    const/16 v20, 0x0

    :goto_2eb
    const/16 v14, 0xc8

    if-gt v5, v14, :cond_2f8

    if-le v3, v12, :cond_2f2

    goto :goto_2f8

    :cond_2f2
    move/from16 v16, v2

    move v8, v3

    const/16 v20, 0x0

    goto :goto_351

    :cond_2f8
    :goto_2f8
    if-eqz v4, :cond_304

    if-eqz v8, :cond_304

    .line 1344
    const-string v4, "fg-service"

    move/from16 v16, v12

    move v8, v14

    move/from16 v20, v17

    goto :goto_320

    :cond_304
    if-eqz v20, :cond_30f

    .line 1360
    const-string v4, "fg-service-short"

    const/16 v8, 0xe2

    move/from16 v16, v12

    :goto_30c
    const/16 v20, 0x0

    goto :goto_320

    .line 1362
    :cond_30f
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasOverlayUi()Z

    move-result v4

    if-eqz v4, :cond_31b

    .line 1365
    const-string v4, "has-overlay-ui"

    move v8, v14

    const/16 v16, 0x6

    goto :goto_30c

    :cond_31b
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    goto :goto_30c

    :goto_320
    if-eqz v4, :cond_34e

    .line 1371
    invoke-virtual {v1, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_348

    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_348
    move v5, v8

    move/from16 v8, v16

    const/16 v16, 0x2

    goto :goto_351

    :cond_34e
    move/from16 v16, v2

    move v8, v3

    .line 1384
    :goto_351
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_3ae

    const/16 v2, 0x32

    if-le v5, v2, :cond_3ae

    .line 1385
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastTopTime()J

    move-result-wide v3

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v24, v13

    iget-wide v12, v2, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v3, v12

    cmp-long v2, v3, v10

    if-gtz v2, :cond_371

    .line 1386
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_3b0

    .line 1387
    :cond_371
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_37f

    .line 1389
    const-string v2, "fg-service-act"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    const/16 v23, 0x32

    goto :goto_388

    .line 1394
    :cond_37f
    const-string v2, "fg-service-short-act"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    const/16 v2, 0x33

    move/from16 v23, v2

    :goto_388
    if-eqz v9, :cond_39e

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :cond_39e
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastTopTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v2, v4

    move-wide v4, v10

    .line 1399
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/psc/ProcessRecordInternal;JJ)V

    move/from16 v5, v23

    goto :goto_3b0

    :cond_3ae
    move-object/from16 v24, v13

    .line 1407
    :cond_3b0
    :goto_3b0
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v2

    if-eqz v2, :cond_3f9

    const/16 v10, 0x34

    if-le v5, v10, :cond_3f9

    .line 1409
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastTopTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v4, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v2, v11

    cmp-long v2, v2, p4

    if-gtz v2, :cond_3ce

    .line 1411
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_3f9

    .line 1417
    :cond_3ce
    const-string/jumbo v2, "top-ej-act"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_3ea

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg for EJ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :cond_3ea
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastTopTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v2, v4

    move-wide/from16 v4, p4

    .line 1421
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/psc/ProcessRecordInternal;JJ)V

    move v5, v10

    :cond_3f9
    const/16 v10, 0x8

    if-gt v5, v14, :cond_3ff

    if-le v8, v10, :cond_42a

    .line 1428
    :cond_3ff
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42a

    .line 1434
    const-string v2, "force-imp"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSource(Ljava/lang/Object;)V

    if-eqz v9, :cond_427

    .line 1438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to force imp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_427
    move v8, v10

    const/4 v5, 0x2

    goto :goto_42d

    :cond_42a
    move v14, v5

    move/from16 v5, v16

    .line 1443
    :goto_42d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isHeavyWeightProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v2

    if-eqz v2, :cond_475

    const/16 v2, 0x190

    if-le v14, v2, :cond_454

    .line 1448
    const-string v3, "heavy"

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_452

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to heavy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_452
    move v14, v2

    const/4 v5, 0x0

    :cond_454
    const/16 v2, 0xd

    if-le v8, v2, :cond_475

    .line 1455
    const-string v2, "heavy"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_473

    .line 1457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to heavy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_473
    const/16 v8, 0xd

    .line 1462
    :cond_475
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isHomeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v2

    if-eqz v2, :cond_4be

    const/16 v2, 0x258

    if-le v14, v2, :cond_49d

    .line 1468
    const-string v2, "home"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_49a

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to home: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49a
    const/16 v14, 0x258

    const/4 v5, 0x0

    :cond_49d
    const/16 v2, 0xe

    if-le v8, v2, :cond_4be

    .line 1475
    const-string v2, "home"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_4bc

    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to home: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4bc
    const/16 v8, 0xe

    .line 1481
    :cond_4be
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isPreviousProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v2

    const/16 v11, 0x2bc

    const/16 v12, 0xf

    if-eqz v2, :cond_558

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasActivities()Z

    move-result v2

    if-eqz v2, :cond_558

    if-lt v8, v12, :cond_501

    .line 1488
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v2

    if-ne v2, v12, :cond_501

    .line 1489
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastStateTime()J

    move-result-wide v2

    sget-wide v25, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v2, v2, v25

    cmp-long v2, v2, p4

    if-gtz v2, :cond_501

    .line 1492
    const-string/jumbo v2, "previous-expired"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_4fe

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expire prev adj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4fe
    move v8, v12

    const/4 v13, 0x0

    goto :goto_559

    :cond_501
    if-le v14, v11, :cond_522

    .line 1500
    const-string/jumbo v2, "previous"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_51f

    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to prev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51f
    move v14, v11

    const/4 v13, 0x0

    goto :goto_523

    :cond_522
    move v13, v5

    :goto_523
    if-le v8, v12, :cond_542

    .line 1507
    const-string/jumbo v2, "previous"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_541

    .line 1509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to prev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_541
    move v8, v12

    .line 1513
    :cond_542
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getSetProcState()I

    move-result v2

    if-ne v2, v12, :cond_54d

    .line 1514
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastStateTime()J

    move-result-wide v2

    goto :goto_54f

    :cond_54d
    move-wide/from16 v2, p4

    .line 1518
    :goto_54f
    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long/2addr v2, v4

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/psc/ProcessRecordInternal;JJ)V

    goto :goto_559

    :cond_558
    move v13, v5

    .line 1523
    :goto_559
    invoke-virtual {v1, v14}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    .line 1524
    invoke-virtual {v1, v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(I)V

    const/4 v2, 0x0

    .line 1526
    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasStartedServices(Z)V

    .line 1527
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSeq(I)V

    .line 1529
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isBackupProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v2

    if-eqz v2, :cond_5b5

    const/16 v2, 0x12c

    if-le v14, v2, :cond_594

    if-le v8, v10, :cond_575

    goto :goto_576

    :cond_575
    move v10, v8

    .line 1537
    :goto_576
    const-string v2, "backup"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_591

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_591
    const/16 v14, 0x12c

    move v8, v10

    :cond_594
    const/16 v2, 0x9

    if-le v8, v2, :cond_5b5

    .line 1544
    const-string v2, "backup"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_5b3

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b3
    const/16 v8, 0x9

    :cond_5b5
    const/4 v2, 0x0

    .line 1551
    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 1553
    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setScheduleLikeTopApp(Z)V

    .line 1555
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v27, v8

    move v8, v2

    move/from16 v2, v27

    :goto_5c7
    const/16 v10, 0x1f4

    if-ltz v8, :cond_5d5

    if-gtz v14, :cond_5d2

    if-eqz v13, :cond_5d2

    const/4 v3, 0x2

    if-le v2, v3, :cond_5d5

    :cond_5d2
    move-object/from16 v3, v24

    goto :goto_5db

    :cond_5d5
    move/from16 v25, v13

    move-object/from16 v13, v24

    goto/16 :goto_6d5

    .line 1560
    :goto_5db
    invoke-virtual {v3, v8}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v16

    .line 1561
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/ServiceRecordInternal;->isStartRequested()Z

    move-result v4

    if-eqz v4, :cond_68c

    move/from16 v4, v18

    .line 1562
    invoke-virtual {v1, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasStartedServices(Z)V

    const/16 v4, 0xa

    if-le v2, v4, :cond_60d

    .line 1565
    const-string/jumbo v2, "started-services"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_60a

    .line 1567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise procstate to started service: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60a
    move/from16 v22, v4

    goto :goto_60f

    :cond_60d
    move/from16 v22, v2

    .line 1571
    :goto_60f
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/ServiceRecordInternal;->isKeepWarming()Z

    move-result v2

    if-nez v2, :cond_630

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasShownUi()Z

    move-result v2

    if-eqz v2, :cond_630

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isHomeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v2

    if-nez v2, :cond_630

    if-le v14, v10, :cond_628

    .line 1577
    const-string v2, "cch-started-ui-services"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    :cond_628
    move/from16 v23, v4

    move/from16 v25, v13

    move/from16 v2, v22

    :goto_62e
    move-object v13, v3

    goto :goto_691

    .line 1580
    :cond_630
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/ServiceRecordInternal;->isKeepWarming()Z

    move-result v2

    if-nez v2, :cond_64b

    .line 1581
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastActivity()J

    move-result-wide v24

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long v24, v24, v4

    cmp-long v2, p4, v24

    if-gez v2, :cond_645

    goto :goto_64b

    :cond_645
    move/from16 v25, v13

    const/16 v23, 0xa

    move-object v13, v3

    goto :goto_682

    .line 1587
    :cond_64b
    :goto_64b
    iget-boolean v2, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-nez v2, :cond_645

    if-le v14, v10, :cond_645

    .line 1589
    const-string/jumbo v2, "started-services"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_66d

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to started service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :cond_66d
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastActivity()J

    move-result-wide v4

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v25, v13

    iget-wide v12, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v4, v12

    move-object v13, v3

    move-wide v2, v4

    const/16 v23, 0xa

    move-wide/from16 v4, p4

    .line 1594
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/psc/ProcessRecordInternal;JJ)V

    move v14, v10

    :goto_682
    if-le v14, v10, :cond_689

    .line 1602
    const-string v2, "cch-started-services"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    :cond_689
    move/from16 v2, v22

    goto :goto_691

    :cond_68c
    move/from16 v25, v13

    const/16 v23, 0xa

    goto :goto_62e

    .line 1607
    :goto_691
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/ServiceRecordInternal;->isForeground()Z

    move-result v3

    if-eqz v3, :cond_6c9

    .line 1608
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/ServiceRecordInternal;->getForegroundServiceType()I

    move-result v3

    .line 1609
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/psc/ServiceRecordInternal;->isFgsAllowedWiu_forCapabilities()Z

    move-result v4

    if-eqz v4, :cond_6c9

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_6a7

    const/4 v4, 0x1

    goto :goto_6a8

    :cond_6a7
    const/4 v4, 0x0

    :goto_6a8
    or-int v4, v20, v4

    or-int/lit8 v5, v4, 0x40

    const/4 v10, 0x1

    .line 1620
    invoke-virtual {v1, v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedCompatChange(I)Z

    move-result v12

    if-eqz v12, :cond_6c6

    and-int/lit8 v4, v3, 0x40

    if-eqz v4, :cond_6b9

    const/4 v4, 0x2

    goto :goto_6ba

    :cond_6b9
    const/4 v4, 0x0

    :goto_6ba
    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6c1

    const/4 v3, 0x4

    goto :goto_6c2

    :cond_6c1
    const/4 v3, 0x0

    :goto_6c2
    or-int/2addr v3, v4

    :goto_6c3
    move/from16 v20, v3

    goto :goto_6c9

    :cond_6c6
    or-int/lit8 v3, v4, 0x46

    goto :goto_6c3

    :cond_6c9
    :goto_6c9
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v24, v13

    move/from16 v13, v25

    const/16 v12, 0xf

    const/16 v18, 0x1

    goto/16 :goto_5c7

    .line 1637
    :goto_6d5
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getProviders()Lcom/android/server/am/psc/ProcessProviderRecordInternal;

    move-result-object v8

    .line 1638
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->numberOfProviders()I

    move-result v3

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    move v12, v2

    move v2, v14

    move/from16 v5, v25

    :goto_6e5
    if-ltz v3, :cond_744

    if-gtz v2, :cond_6ef

    if-eqz v5, :cond_6ef

    const/4 v14, 0x2

    if-le v12, v14, :cond_744

    goto :goto_6f0

    :cond_6ef
    const/4 v14, 0x2

    .line 1643
    :goto_6f0
    invoke-virtual {v8, v3}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->getProviderAt(I)Lcom/android/server/am/psc/ContentProviderRecordInternal;

    move-result-object v4

    .line 1647
    invoke-virtual {v4}, Lcom/android/server/am/psc/ContentProviderRecordInternal;->hasExternalProcessHandles()Z

    move-result v16

    if-eqz v16, :cond_740

    if-lez v2, :cond_722

    const/4 v14, 0x0

    .line 1650
    invoke-virtual {v1, v14}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(I)V

    .line 1652
    const-string v2, "ext-provider"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    .line 1653
    iget-object v2, v4, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTarget(Ljava/lang/Object;)V

    if-eqz v9, :cond_720

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to external provider: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_720
    const/4 v2, 0x0

    const/4 v5, 0x2

    :cond_722
    const/4 v4, 0x6

    if-le v12, v4, :cond_741

    .line 1661
    invoke-virtual {v1, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(I)V

    if-eqz v9, :cond_73e

    .line 1663
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to external provider: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v15, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73e
    move v12, v4

    goto :goto_741

    :cond_740
    const/4 v4, 0x6

    :cond_741
    :goto_741
    add-int/lit8 v3, v3, -0x1

    goto :goto_6e5

    .line 1670
    :cond_744
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->getLastProviderTime()J

    move-result-wide v3

    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v14, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v3, v10

    cmp-long v3, v3, p4

    if-lez v3, :cond_7b6

    const/16 v10, 0x2bc

    if-le v2, v10, :cond_784

    .line 1674
    const-string/jumbo v2, "recent-provider"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_771

    .line 1676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to recent provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_771
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->getLastProviderTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v2, v4

    move-wide/from16 v4, p4

    .line 1679
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/psc/ProcessRecordInternal;JJ)V

    move v11, v10

    const/4 v10, 0x0

    :goto_781
    const/16 v14, 0xf

    goto :goto_787

    :cond_784
    move v11, v2

    move v10, v5

    goto :goto_781

    :goto_787
    if-le v12, v14, :cond_7b9

    .line 1684
    const-string/jumbo v2, "recent-provider"

    invoke-virtual {v1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    if-eqz v9, :cond_7a5

    .line 1686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to recent provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    :cond_7a5
    invoke-virtual {v8}, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->getLastProviderTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v2, v4

    move-wide/from16 v4, p4

    .line 1689
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/psc/ProcessRecordInternal;JJ)V

    move v5, v10

    move v2, v11

    move v12, v14

    :cond_7b6
    :goto_7b6
    const/16 v3, 0x13

    goto :goto_7bc

    :cond_7b9
    move v5, v10

    move v2, v11

    goto :goto_7b6

    :goto_7bc
    if-lt v12, v3, :cond_7cd

    .line 1695
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v3

    if-eqz v3, :cond_7d0

    .line 1698
    const-string v3, "cch-client-act"

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    const/16 v17, 0x11

    :goto_7cb
    move/from16 v12, v17

    :cond_7cd
    const/16 v3, 0x1f4

    goto :goto_7dc

    .line 1699
    :cond_7d0
    invoke-virtual {v13}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result v3

    if-eqz v3, :cond_7cd

    .line 1703
    const-string v3, "cch-as-act"

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    goto :goto_7cb

    :goto_7dc
    if-ne v2, v3, :cond_84f

    if-eqz p3, :cond_847

    .line 1709
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v4, v4, 0x3

    if-le v3, v4, :cond_7ea

    const/4 v3, 0x1

    goto :goto_7eb

    :cond_7ea
    const/4 v3, 0x0

    :goto_7eb
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setServiceB(Z)V

    .line 1710
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 1711
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isServiceB()Z

    move-result v3

    if-nez v3, :cond_843

    .line 1716
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v3

    if-eqz v3, :cond_80b

    .line 1717
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastPss()J

    move-result-wide v3

    goto :goto_80f

    :cond_80b
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastRss()J

    move-result-wide v3

    .line 1725
    :goto_80f
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v8}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v8

    if-eqz v8, :cond_81c

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_821

    .line 1726
    :cond_81c
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    float-to-double v8, v8

    .line 1727
    :goto_821
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1728
    invoke-virtual {v10}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v10, v8

    .line 1730
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->isLastMemoryLevelNormal()Z

    move-result v8

    if-nez v8, :cond_83c

    long-to-double v3, v3

    cmpl-double v3, v3, v10

    if-ltz v3, :cond_83c

    const/4 v10, 0x1

    .line 1731
    invoke-virtual {v1, v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->setServiceHighRam(Z)V

    .line 1732
    invoke-virtual {v1, v10}, Lcom/android/server/am/psc/ProcessRecordInternal;->setServiceB(Z)V

    goto :goto_847

    :cond_83c
    const/4 v10, 0x1

    .line 1735
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v3, v10

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_847

    :cond_843
    const/4 v14, 0x0

    .line 1739
    invoke-virtual {v1, v14}, Lcom/android/server/am/psc/ProcessRecordInternal;->setServiceHighRam(Z)V

    .line 1742
    :cond_847
    :goto_847
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isServiceB()Z

    move-result v3

    if-eqz v3, :cond_84f

    const/16 v2, 0x320

    .line 1748
    :cond_84f
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_857

    or-int v21, v21, v20

    .line 1752
    :cond_857
    invoke-virtual {v0, v1, v12}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/psc/ProcessRecordInternal;I)I

    move-result v3

    or-int v3, v21, v3

    .line 1753
    invoke-static {v1, v6}, Lcom/android/server/am/OomAdjuster;->getCpuCapability(Lcom/android/server/am/psc/ProcessRecordInternal;Z)I

    move-result v4

    or-int/2addr v3, v4

    .line 1754
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->getImplicitCpuCapability(Lcom/android/server/am/psc/ProcessRecordInternal;I)I

    move-result v4

    or-int/2addr v3, v4

    const/4 v4, 0x5

    if-le v12, v4, :cond_86c

    and-int/lit8 v3, v3, -0x11

    .line 1761
    :cond_86c
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isPendingFinishAttach()Z

    move-result v4

    if-eqz v4, :cond_882

    .line 1766
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    .line 1767
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSeq(I)V

    .line 1768
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getAdjSeq()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCompletedAdjSeq(I)V

    return-void

    .line 1777
    :cond_882
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurCapability(I)V

    .line 1778
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->updateLastInvisibleTime(Z)V

    .line 1779
    invoke-virtual {v1, v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->setHasForegroundActivities(Z)V

    .line 1780
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCompletedAdjSeq(I)V

    .line 1782
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;II)I

    move-result v2

    .line 1783
    invoke-virtual {v0, v1, v12}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 1784
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    return-void
.end method

.method public computeProviderHostOomAdjLSP(Lcom/android/server/am/psc/ContentProviderConnectionInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Z)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 2243
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isPendingFinishAttach()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_12

    return v6

    :cond_12
    if-ne v3, v2, :cond_15

    return v6

    .line 2253
    :cond_15
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v5

    .line 2254
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawProcState()I

    move-result v7

    .line 2256
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v8

    .line 2257
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawProcState()I

    move-result v9

    .line 2258
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurrentSchedulingGroup()I

    move-result v10

    .line 2259
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v11

    .line 2266
    iget-object v12, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v12, v12, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 2267
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getApplicationUid()I

    move-result v13

    const/4 v14, 0x1

    if-ne v12, v13, :cond_3a

    move v12, v14

    goto :goto_3b

    :cond_3a
    move v12, v6

    .line 2272
    :goto_3b
    invoke-virtual {v0, v3}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/psc/ProcessRecordInternal;)I

    move-result v13

    or-int/2addr v13, v11

    .line 2273
    invoke-static {v2, v3, v1}, Lcom/android/server/am/OomAdjuster;->getCpuCapabilitiesFromClient(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/OomAdjusterImpl$Connection;)I

    move-result v15

    or-int/2addr v13, v15

    const/16 v15, 0x10

    if-lt v7, v15, :cond_4b

    const/16 v7, 0x13

    .line 2280
    :cond_4b
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result v15

    if-eqz v15, :cond_60

    .line 2283
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeReason()I

    move-result v15

    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeReason()I

    move-result v16

    or-int v15, v15, v16

    iget v6, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 2282
    invoke-virtual {v2, v14, v4, v15, v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->setShouldNotFreeze(ZZII)Z

    :cond_60
    const/4 v6, 0x4

    const/4 v15, 0x3

    if-nez v4, :cond_81

    .line 2294
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCurBoundByNonBgRestrictedApp()Z

    move-result v17

    if-nez v17, :cond_7d

    .line 2295
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCurBoundByNonBgRestrictedApp()Z

    move-result v17

    if-nez v17, :cond_7d

    if-le v7, v15, :cond_7d

    if-ne v7, v6, :cond_7b

    .line 2298
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->isBackgroundRestricted()Z

    move-result v17

    if-nez v17, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 v15, 0x0

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v15, v14

    .line 2294
    :goto_7e
    invoke-virtual {v2, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 2302
    :cond_81
    const-string/jumbo v15, "provider"

    if-le v8, v5, :cond_c0

    .line 2303
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasShownUi()Z

    move-result v18

    if-eqz v18, :cond_9e

    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjuster;->isHomeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v18

    if-nez v18, :cond_9e

    move/from16 v18, v14

    const/16 v14, 0xc8

    if-le v5, v14, :cond_9c

    .line 2305
    const-string v5, "cch-ui-provider"

    move v14, v8

    goto :goto_ae

    :cond_9c
    :goto_9c
    const/4 v14, 0x0

    goto :goto_a1

    :cond_9e
    move/from16 v18, v14

    goto :goto_9c

    .line 2307
    :goto_a1
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2308
    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(IZ)Z

    move-result v14

    if-eqz v14, :cond_ac

    return v18

    :cond_ac
    move v14, v5

    move-object v5, v15

    .line 2315
    :goto_ae
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v19

    if-eqz v19, :cond_bd

    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v19

    if-nez v19, :cond_bd

    if-eqz v4, :cond_bd

    return v18

    :cond_bd
    :goto_bd
    move-object/from16 v19, v5

    goto :goto_c5

    :cond_c0
    move/from16 v18, v14

    const/4 v5, 0x0

    move v14, v8

    goto :goto_bd

    :goto_c5
    const/4 v5, 0x2

    if-gt v7, v6, :cond_d3

    if-nez v19, :cond_cb

    goto :goto_cd

    :cond_cb
    move-object/from16 v15, v19

    :goto_cd
    if-ne v7, v5, :cond_d1

    const/4 v7, 0x3

    goto :goto_d5

    :cond_d1
    const/4 v7, 0x5

    goto :goto_d5

    :cond_d3
    move-object/from16 v15, v19

    :goto_d5
    if-nez v4, :cond_dc

    .line 2333
    iget v6, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-interface {v1, v7, v6}, Lcom/android/server/am/psc/ContentProviderConnectionInternal;->trackProcState(II)V

    :cond_dc
    if-le v9, v7, :cond_e7

    .line 2337
    invoke-virtual {v2, v7, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(IZ)Z

    move-result v6

    if-eqz v6, :cond_e5

    return v18

    :cond_e5
    move v6, v7

    goto :goto_e8

    :cond_e7
    move v6, v9

    .line 2342
    :goto_e8
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurrentSchedulingGroup()I

    move-result v5

    if-le v5, v10, :cond_f0

    const/4 v5, 0x2

    goto :goto_f1

    :cond_f0
    move v5, v10

    :goto_f1
    if-eqz v15, :cond_148

    if-nez v4, :cond_148

    .line 2346
    invoke-virtual {v2, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    move/from16 v1, v18

    .line 2347
    invoke-virtual {v2, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTypeCode(I)V

    .line 2348
    invoke-virtual/range {p2 .. p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSource(Ljava/lang/Object;)V

    .line 2349
    invoke-virtual {v2, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSourceProcState(I)V

    .line 2350
    invoke-interface/range {p1 .. p1}, Lcom/android/server/am/psc/ContentProviderConnectionInternal;->getProvider()Lcom/android/server/am/psc/ContentProviderRecordInternal;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/psc/ContentProviderRecordInternal;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTarget(Ljava/lang/Object;)V

    if-eqz v12, :cond_148

    .line 2352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise to "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", due to "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " adj="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " procState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2355
    invoke-static {v6}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2352
    const-string v3, "ActivityManager"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_148
    const/4 v1, 0x5

    if-le v6, v1, :cond_14d

    and-int/lit8 v13, v13, -0x11

    :cond_14d
    if-eqz v4, :cond_161

    if-lt v14, v8, :cond_155

    if-lt v6, v9, :cond_155

    if-le v5, v10, :cond_158

    :cond_155
    const/16 v18, 0x1

    goto :goto_160

    :cond_158
    if-eq v13, v11, :cond_161

    and-int v1, v13, v11

    if-ne v1, v11, :cond_161

    const/16 v18, 0x1

    :goto_160
    return v18

    :cond_161
    if-ge v14, v8, :cond_167

    .line 2386
    invoke-virtual {v0, v2, v14, v5}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;II)I

    move-result v5

    :cond_167
    if-ge v6, v9, :cond_16c

    .line 2389
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    :cond_16c
    if-le v5, v10, :cond_171

    .line 2392
    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 2394
    :cond_171
    invoke-virtual {v2, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurCapability(I)V

    const/16 v16, 0x0

    return v16
.end method

.method public computeServiceHostOomAdjLSP(Lcom/android/server/am/psc/ConnectionRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;JZ)Z
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    .line 1791
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isPendingFinishAttach()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_12

    return v6

    .line 1798
    :cond_12
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v5

    .line 1799
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawProcState()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v7, v8, :cond_20

    move v10, v9

    goto :goto_21

    :cond_20
    move v10, v6

    .line 1803
    :goto_21
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v11

    .line 1804
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawProcState()I

    move-result v12

    .line 1805
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurrentSchedulingGroup()I

    move-result v13

    .line 1806
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v14

    .line 1813
    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v15, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1814
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getApplicationUid()I

    move-result v8

    if-ne v15, v8, :cond_3d

    move v8, v9

    goto :goto_3e

    :cond_3d
    move v8, v6

    :goto_3e
    const/4 v15, 0x3

    const/4 v6, 0x4

    if-nez v4, :cond_5f

    .line 1817
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCurBoundByNonBgRestrictedApp()Z

    move-result v16

    if-nez v16, :cond_5b

    .line 1818
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCurBoundByNonBgRestrictedApp()Z

    move-result v16

    if-nez v16, :cond_5b

    if-le v7, v15, :cond_5b

    if-ne v7, v6, :cond_59

    .line 1821
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->isBackgroundRestricted()Z

    move-result v16

    if-nez v16, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v15, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v15, v9

    .line 1817
    :goto_5c
    invoke-virtual {v2, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 1824
    :cond_5f
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreeze()Z

    move-result v15

    if-eqz v15, :cond_77

    .line 1827
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeReason()I

    move-result v15

    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeReason()I

    move-result v17

    or-int v15, v15, v17

    move/from16 v17, v6

    iget v6, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1826
    invoke-virtual {v2, v9, v4, v15, v6}, Lcom/android/server/am/psc/ProcessRecordInternal;->setShouldNotFreeze(ZZII)Z

    goto :goto_79

    :cond_77
    move/from16 v17, v6

    .line 1842
    :goto_79
    invoke-virtual {v0, v3}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/psc/ProcessRecordInternal;)I

    move-result v6

    or-int/2addr v6, v14

    .line 1844
    invoke-static {v2, v3, v1}, Lcom/android/server/am/OomAdjuster;->getCpuCapabilitiesFromClient(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/OomAdjusterImpl$Connection;)I

    move-result v15

    or-int/2addr v6, v15

    const/16 v15, 0x20

    .line 1846
    invoke-virtual {v1, v15}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(I)Z

    move-result v18

    move/from16 v19, v15

    const-string/jumbo v15, "service"

    const/16 v22, 0x40

    if-eqz v18, :cond_357

    const/16 v18, 0x8

    const/16 v9, 0x1000

    .line 1847
    invoke-virtual {v1, v9}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v23

    if-eqz v23, :cond_a2

    .line 1848
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v23

    or-int v6, v6, v23

    .line 1856
    :cond_a2
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v23

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_b7

    const/4 v9, 0x5

    if-gt v7, v9, :cond_b5

    const/high16 v9, 0x20000

    .line 1860
    invoke-virtual {v1, v9}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v9

    if-eqz v9, :cond_b7

    :cond_b5
    or-int/lit8 v6, v6, 0x8

    .line 1867
    :cond_b7
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v9

    and-int/lit8 v9, v9, 0x20

    move/from16 v19, v6

    const/4 v6, 0x6

    if-eqz v9, :cond_d3

    if-gt v7, v6, :cond_d3

    move v9, v7

    const-wide v6, 0x100000000L

    .line 1871
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result v6

    if-eqz v6, :cond_d4

    or-int/lit8 v6, v19, 0x20

    goto :goto_d6

    :cond_d3
    move v9, v7

    :cond_d4
    move/from16 v6, v19

    .line 1879
    :goto_d6
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_e4

    .line 1881
    iget-boolean v7, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->isSdkSandbox:Z

    if-eqz v7, :cond_e4

    or-int/lit8 v6, v6, 0x40

    :cond_e4
    const/16 v7, 0x10

    if-lt v9, v7, :cond_ea

    const/16 v9, 0x13

    .line 1893
    :cond_ea
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v19

    const-string v7, "cch-bound-ui-services"

    const/16 v24, 0x0

    if-eqz v19, :cond_147

    move/from16 v19, v6

    const/16 v6, 0x384

    if-ge v5, v6, :cond_10b

    .line 1897
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeReason()I

    move-result v6

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v25, v7

    iget v7, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move/from16 v26, v8

    const/4 v8, 0x1

    .line 1896
    invoke-virtual {v2, v8, v4, v6, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->setShouldNotFreeze(ZZII)Z

    goto :goto_10f

    :cond_10b
    move-object/from16 v25, v7

    move/from16 v26, v8

    .line 1910
    :goto_10f
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasShownUi()Z

    move-result v6

    if-eqz v6, :cond_12d

    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjuster;->isHomeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v6

    if-nez v6, :cond_12d

    if-le v11, v5, :cond_11f

    move-object/from16 v24, v25

    .line 1919
    :cond_11f
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v5

    if-eqz v5, :cond_12a

    if-eqz v4, :cond_12a

    const/16 v20, 0x1

    return v20

    :cond_12a
    move v5, v11

    move v9, v12

    goto :goto_14d

    .line 1927
    :cond_12d
    invoke-virtual {v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getService()Lcom/android/server/am/psc/ServiceRecordInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/psc/ServiceRecordInternal;->getLastActivity()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v27, v6

    iget-wide v6, v8, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long v6, v27, v6

    cmp-long v6, p4, v6

    if-ltz v6, :cond_14d

    if-le v11, v5, :cond_145

    .line 1935
    const-string v24, "cch-bound-services"

    :cond_145
    move v5, v11

    goto :goto_14d

    :cond_147
    move/from16 v19, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    :cond_14d
    :goto_14d
    if-le v11, v5, :cond_22a

    .line 1946
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasShownUi()Z

    move-result v6

    if-eqz v6, :cond_16c

    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjuster;->isHomeProcess(Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v6

    if-nez v6, :cond_16c

    const/16 v6, 0x1f4

    if-le v5, v6, :cond_16c

    const/16 v6, 0x384

    if-lt v11, v6, :cond_22a

    move v6, v11

    move v5, v12

    move v7, v13

    move-object/from16 p4, v25

    :goto_168
    const/16 p5, 0x0

    goto/16 :goto_231

    :cond_16c
    const/16 v6, 0x48

    .line 1954
    invoke-virtual {v1, v6}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_188

    const/16 v6, -0x2bc

    if-lt v5, v6, :cond_17a

    goto/16 :goto_1de

    :cond_17a
    if-nez v4, :cond_182

    .line 1964
    iget v7, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->trackProcState(II)V

    :cond_182
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v21, 0x1

    goto/16 :goto_1fb

    :cond_188
    const/16 v6, 0x100

    .line 1968
    invoke-virtual {v1, v6}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v6

    const/16 v8, 0xc8

    if-eqz v6, :cond_19e

    if-gt v5, v8, :cond_19e

    const/16 v6, 0xfa

    if-lt v11, v6, :cond_1a0

    :goto_198
    move v8, v12

    move v7, v13

    const/16 v21, 0x0

    goto/16 :goto_1fb

    :cond_19e
    const/16 v6, 0x64

    :cond_1a0
    const/high16 v7, 0x10000

    .line 1972
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v21

    if-eqz v21, :cond_1b8

    move/from16 v7, v17

    .line 1973
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(I)Z

    move-result v21

    if-eqz v21, :cond_1b8

    if-ge v5, v8, :cond_1b8

    if-lt v11, v8, :cond_1b7

    const/16 v6, 0xc9

    goto :goto_198

    :cond_1b7
    move v6, v8

    :cond_1b8
    const/high16 v7, 0x10000

    .line 1979
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_1ce

    const/4 v7, 0x4

    .line 1980
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v21

    if-eqz v21, :cond_1ce

    if-ge v5, v8, :cond_1ce

    const/16 v6, 0xe3

    if-lt v11, v6, :cond_1ce

    goto :goto_198

    :cond_1ce
    const/high16 v7, 0x40000000    # 2.0f

    .line 1987
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_1dc

    if-ge v5, v8, :cond_1dc

    move v6, v8

    if-lt v11, v8, :cond_1dc

    goto :goto_198

    :cond_1dc
    if-lt v5, v8, :cond_1e0

    :goto_1de
    move v6, v5

    goto :goto_198

    :cond_1e0
    const/high16 v7, 0x10000000

    .line 1993
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_1f0

    const/16 v7, 0x64

    if-gt v5, v7, :cond_1f2

    if-le v11, v7, :cond_1f2

    move v6, v7

    goto :goto_198

    :cond_1f0
    const/16 v7, 0x64

    :cond_1f2
    if-le v11, v7, :cond_1f9

    .line 2000
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_198

    :cond_1f9
    move v6, v11

    goto :goto_198

    .line 2006
    :goto_1fb
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v25

    if-nez v25, :cond_20c

    .line 2007
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isCached()Z

    move-result v25

    if-eqz v25, :cond_20c

    if-eqz v4, :cond_20c

    const/16 v20, 0x1

    return v20

    :cond_20c
    const/16 v20, 0x1

    if-ne v6, v5, :cond_218

    move/from16 v25, v5

    .line 2013
    iget-boolean v5, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-eqz v5, :cond_218

    add-int/lit8 v6, v25, 0x1

    :cond_218
    if-le v11, v6, :cond_223

    .line 2020
    invoke-virtual {v2, v6, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(IZ)Z

    move v5, v8

    move-object/from16 p4, v15

    move/from16 p5, v21

    goto :goto_231

    :cond_223
    move v5, v8

    move v6, v11

    move/from16 p5, v21

    move-object/from16 p4, v24

    goto :goto_231

    :cond_22a
    move v6, v11

    move v5, v12

    move v7, v13

    move-object/from16 p4, v24

    goto/16 :goto_168

    :goto_231
    const v8, 0x800004

    .line 2027
    invoke-virtual {v1, v8}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(I)Z

    move-result v8

    move/from16 v21, v8

    if-eqz v21, :cond_29e

    .line 2032
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurrentSchedulingGroup()I

    move-result v8

    if-le v8, v7, :cond_252

    move/from16 v7, v22

    .line 2034
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v18

    if-eqz v18, :cond_24e

    move/from16 v24, v8

    :goto_24c
    const/4 v7, 0x2

    goto :goto_255

    :cond_24e
    const/4 v7, 0x2

    const/16 v24, 0x2

    goto :goto_255

    :cond_252
    move/from16 v24, v7

    goto :goto_24c

    :goto_255
    if-ge v9, v7, :cond_27c

    const/high16 v7, 0x10000000

    .line 2045
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_261

    const/4 v9, 0x4

    goto :goto_29c

    :cond_261
    const/high16 v7, 0x4000000

    .line 2047
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_26b

    :goto_269
    const/4 v9, 0x5

    goto :goto_29c

    .line 2049
    :cond_26b
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result v7

    if-eqz v7, :cond_27a

    const/high16 v7, 0x2000000

    .line 2050
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_27a

    goto :goto_269

    :cond_27a
    const/4 v9, 0x6

    goto :goto_29c

    :cond_27c
    if-ne v9, v7, :cond_29c

    const/4 v8, 0x0

    .line 2060
    invoke-virtual {v3, v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCachedCompatChange(I)Z

    move-result v7

    if-eqz v7, :cond_297

    const/16 v7, 0x1000

    .line 2063
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_295

    .line 2065
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v7

    :goto_291
    or-int v7, v19, v7

    move/from16 v19, v7

    :cond_295
    const/4 v9, 0x3

    goto :goto_29c

    .line 2071
    :cond_297
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurCapability()I

    move-result v7

    goto :goto_291

    :cond_29c
    :goto_29c
    move v7, v9

    goto :goto_2b3

    :cond_29e
    move/from16 v24, v7

    const/high16 v7, 0x800000

    .line 2074
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_2af

    move/from16 v7, v18

    if-ge v9, v7, :cond_29c

    const/16 v7, 0x8

    goto :goto_2b3

    :cond_2af
    const/4 v7, 0x7

    if-ge v9, v7, :cond_29c

    const/4 v7, 0x7

    :goto_2b3
    const/high16 v8, 0x80000

    .line 2086
    invoke-virtual {v1, v8}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_2cb

    if-eqz v10, :cond_2cb

    if-eqz v4, :cond_2c4

    const/4 v8, 0x3

    if-ge v13, v8, :cond_2c9

    const/4 v9, 0x1

    return v9

    :cond_2c4
    const/4 v8, 0x3

    const/4 v9, 0x1

    .line 2094
    invoke-virtual {v2, v9}, Lcom/android/server/am/psc/ProcessRecordInternal;->setScheduleLikeTopApp(Z)V

    :cond_2c9
    move/from16 v24, v8

    :cond_2cb
    if-nez p5, :cond_2d4

    if-nez v4, :cond_2d4

    .line 2099
    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v1, v7, v8}, Lcom/android/server/am/psc/ConnectionRecordInternal;->trackProcState(II)V

    :cond_2d4
    if-le v5, v7, :cond_2e9

    .line 2104
    invoke-virtual {v2, v7, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawProcState(IZ)Z

    move-result v5

    if-eqz v5, :cond_2de

    const/4 v9, 0x1

    return v9

    :cond_2de
    const/4 v9, 0x1

    if-nez p4, :cond_2e5

    move v5, v7

    move-object v8, v15

    :goto_2e3
    const/4 v10, 0x7

    goto :goto_2ed

    :cond_2e5
    move-object/from16 v8, p4

    move v5, v7

    goto :goto_2e3

    :cond_2e9
    const/4 v9, 0x1

    move-object/from16 v8, p4

    goto :goto_2e3

    :goto_2ed
    if-ge v5, v10, :cond_2fc

    const/high16 v10, 0x20000000

    .line 2113
    invoke-virtual {v1, v10}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_2fc

    if-nez v4, :cond_2fc

    .line 2114
    invoke-virtual {v2, v9}, Lcom/android/server/am/psc/ProcessRecordInternal;->setPendingUiClean(Z)V

    :cond_2fc
    if-eqz v8, :cond_352

    if-nez v4, :cond_352

    .line 2117
    invoke-virtual {v2, v8}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    const/4 v9, 0x2

    .line 2118
    invoke-virtual {v2, v9}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTypeCode(I)V

    .line 2119
    invoke-virtual/range {p2 .. p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSource(Ljava/lang/Object;)V

    .line 2120
    invoke-virtual {v2, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSourceProcState(I)V

    .line 2121
    invoke-virtual {v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getService()Lcom/android/server/am/psc/ServiceRecordInternal;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v2, v9}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTarget(Ljava/lang/Object;)V

    if-eqz v26, :cond_352

    .line 2123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raise to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", due to "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " adj="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " procState="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2123
    const-string v8, "ActivityManager"

    invoke-virtual {v0, v8, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_352
    move v3, v6

    move/from16 v6, v19

    const/4 v8, 0x1

    goto :goto_373

    :cond_357
    move v9, v7

    move/from16 v26, v8

    const/16 v3, 0x384

    if-ge v5, v3, :cond_36d

    .line 2141
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->shouldNotFreezeReason()I

    move-result v3

    const/16 v18, 0x8

    or-int/lit8 v3, v3, 0x8

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v8, 0x1

    .line 2140
    invoke-virtual {v2, v8, v4, v3, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setShouldNotFreeze(ZZII)Z

    goto :goto_36e

    :cond_36d
    const/4 v8, 0x1

    :goto_36e
    move v7, v9

    move v3, v11

    move v5, v12

    move/from16 v24, v13

    :goto_373
    const/high16 v9, 0x8000000

    .line 2153
    invoke-virtual {v1, v9}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v9

    if-eqz v9, :cond_391

    if-nez v4, :cond_384

    .line 2155
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getServices()Lcom/android/server/am/psc/ProcessServiceRecordInternal;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->setTreatLikeActivity(Z)V

    :cond_384
    const/16 v8, 0x10

    if-gt v7, v8, :cond_391

    if-le v5, v8, :cond_391

    .line 2162
    const-string v5, "cch-as-act"

    invoke-virtual {v2, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    move v9, v8

    goto :goto_392

    :cond_391
    move v9, v5

    .line 2165
    :goto_392
    invoke-virtual {v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getActivity()Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object v5

    const/16 v7, 0x80

    .line 2166
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_3fc

    if-eqz v5, :cond_3fc

    if-lez v3, :cond_3fc

    .line 2168
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v7

    if-eqz v7, :cond_3fc

    const/4 v8, 0x0

    .line 2170
    invoke-virtual {v2, v8, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurRawAdj(IZ)Z

    move-result v3

    if-eqz v3, :cond_3b2

    const/16 v20, 0x1

    return v20

    :cond_3b2
    const/4 v7, 0x4

    const/16 v20, 0x1

    .line 2173
    invoke-virtual {v1, v7}, Lcom/android/server/am/psc/ConnectionRecordInternal;->notHasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3c8

    const/16 v3, 0x40

    .line 2174
    invoke-virtual {v1, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3c6

    move/from16 v24, v7

    goto :goto_3c8

    :cond_3c6
    const/16 v24, 0x2

    :cond_3c8
    :goto_3c8
    if-nez v4, :cond_3f8

    .line 2182
    invoke-virtual {v2, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjType(Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 2183
    invoke-virtual {v2, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTypeCode(I)V

    .line 2184
    invoke-virtual {v2, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSource(Ljava/lang/Object;)V

    .line 2185
    invoke-virtual {v2, v9}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjSourceProcState(I)V

    .line 2186
    invoke-virtual {v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getService()Lcom/android/server/am/psc/ServiceRecordInternal;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setAdjTarget(Ljava/lang/Object;)V

    if-eqz v26, :cond_3f8

    .line 2188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to service w/activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f8
    move v3, v8

    :goto_3f9
    move/from16 v1, v24

    goto :goto_400

    :cond_3fc
    const/4 v8, 0x0

    const/16 v20, 0x1

    goto :goto_3f9

    .line 2195
    :goto_400
    invoke-virtual {v0, v2, v9}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/psc/ProcessRecordInternal;I)I

    move-result v5

    or-int/2addr v5, v6

    const/4 v6, 0x5

    if-le v9, v6, :cond_40a

    and-int/lit8 v5, v5, -0x11

    :cond_40a
    if-lt v3, v11, :cond_413

    if-lt v9, v12, :cond_413

    if-le v1, v13, :cond_411

    goto :goto_413

    :cond_411
    move v6, v8

    goto :goto_415

    :cond_413
    :goto_413
    move/from16 v6, v20

    :goto_415
    if-eq v5, v14, :cond_41c

    and-int v7, v5, v14

    if-ne v7, v14, :cond_41c

    goto :goto_41e

    :cond_41c
    move/from16 v20, v6

    :goto_41e
    if-eqz v4, :cond_421

    return v20

    :cond_421
    if-ge v3, v11, :cond_427

    .line 2226
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;II)I

    move-result v1

    :cond_427
    if-ge v9, v12, :cond_42c

    .line 2229
    invoke-virtual {v0, v2, v9}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    :cond_42c
    if-le v1, v13, :cond_431

    .line 2232
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 2234
    :cond_431
    invoke-virtual {v2, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCurCapability(I)V

    return v20
.end method

.method public final fullUpdateLSP(I)V
    .registers 16

    .line 707
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->getTopProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v1

    .line 708
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v2

    .line 709
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v8

    .line 710
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v10, v2, v4

    .line 712
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v0, 0x0

    .line 714
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 715
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 718
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->reset()V

    .line 719
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->reset()V

    .line 721
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v6

    .line 722
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_38
    if-ltz v7, :cond_5f

    .line 723
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 724
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->resetCachedInfo()V

    .line 725
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getUidRecord()Lcom/android/server/am/psc/UidRecordInternal;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 730
    invoke-virtual {v4}, Lcom/android/server/am/psc/UidRecordInternal;->reset()V

    :cond_4c
    move-wide v4, v2

    const/4 v3, 0x1

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    .line 734
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjusterImpl;->computeOomAdjLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;ZJ)V

    move-object v0, v1

    move-object v1, v2

    .line 738
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v2, v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    add-int/lit8 v7, v7, -0x1

    move-wide v2, v4

    goto :goto_38

    :cond_5f
    move-wide v4, v2

    .line 743
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->reset()V

    .line 744
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v4, 0x3e9

    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->update(Lcom/android/server/am/psc/ProcessRecordInternal;JIILcom/android/server/am/psc/ActiveUidsInternal;Z)V

    move-wide v12, v2

    move v3, v5

    move-wide v4, v12

    .line 745
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterImpl;->computeConnectionsLSP()V

    .line 747
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    move-wide v5, v4

    .line 748
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    move-wide v7, v8

    move-wide v9, v10

    const/4 v11, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    return-void
.end method

.method public final initReachableStatesLSP(Ljava/util/ArrayList;ILcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)V
    .registers 7

    .line 910
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_1a

    .line 911
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 912
    iput-object v1, p3, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 913
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjusterImpl;->computeOomAdjIgnoringReachablesLSP(Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)Z

    .line 917
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1a
    return-void
.end method

.method public onProcessEndLocked(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 4

    .line 636
    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    .line 637
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterImpl;->unlinkProcessRecordFromList(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    :cond_10
    return-void
.end method

.method public onProcessOomAdjChanged(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 650
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterImpl;->updateAdjSlotIfNecessary(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    return-void
.end method

.method public onProcessStateChanged(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 3

    .line 645
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterImpl;->updateProcStateSlotIfNecessary(Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    return-void
.end method

.method public final partialUpdateLSP(ILandroid/util/ArraySet;)V
    .registers 19

    move-object/from16 v0, p0

    .line 779
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->getTopProcess()Lcom/android/server/am/psc/ProcessRecordInternal;

    move-result-object v2

    .line 780
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v3

    .line 781
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v9

    .line 782
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v11, v3, v5

    .line 784
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 785
    invoke-virtual {v7}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 786
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    const/16 v5, 0x3e9

    const/4 v8, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->update(Lcom/android/server/am/psc/ProcessRecordInternal;JIILcom/android/server/am/psc/ActiveUidsInternal;Z)V

    move-object v2, v7

    .line 788
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 790
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 791
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_39
    if-ge v8, v6, :cond_4f

    move-object/from16 v13, p2

    .line 794
    invoke-virtual {v13, v8}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 795
    invoke-virtual {v14}, Lcom/android/server/am/psc/ProcessRecordInternal;->resetCachedInfo()V

    .line 796
    invoke-virtual {v14, v5}, Lcom/android/server/am/psc/ProcessRecordInternal;->setReachable(Z)V

    .line 797
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_4f
    move-object/from16 v13, p2

    .line 802
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjusterImpl;->collectAndMarkReachableProcessesLSP(Ljava/util/ArrayList;)V

    .line 808
    iget-object v6, v0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v6}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->reset()V

    .line 809
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v6

    iget-object v8, v0, Lcom/android/server/am/OomAdjusterImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    invoke-virtual {v0, v1, v6, v8}, Lcom/android/server/am/OomAdjusterImpl;->initReachableStatesLSP(Ljava/util/ArrayList;ILcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)V

    .line 813
    iget-object v6, v0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v6}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->reset()V

    .line 815
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl;->computeConnectionsLSP()V

    .line 818
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    move v13, v8

    :goto_70
    if-ge v8, v6, :cond_8d

    .line 819
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 820
    invoke-virtual {v14, v7}, Lcom/android/server/am/psc/ProcessRecordInternal;->setReachable(Z)V

    .line 821
    iget v15, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCompletedAdjSeq(I)V

    .line 822
    invoke-virtual {v14}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v14

    const/16 v15, 0x3e9

    if-ge v14, v15, :cond_89

    goto :goto_8a

    :cond_89
    move v13, v5

    :goto_8a
    add-int/lit8 v8, v8, 0x1

    goto :goto_70

    :cond_8d
    if-eqz v13, :cond_98

    .line 838
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    .line 842
    :cond_98
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    :goto_9c
    if-ge v7, v1, :cond_b9

    .line 843
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v6

    .line 844
    invoke-virtual {v6}, Lcom/android/server/am/psc/UidRecordInternal;->reset()V

    .line 845
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_aa
    if-ltz v8, :cond_b6

    .line 846
    invoke-virtual {v6, v8}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    .line 847
    invoke-virtual {v0, v13}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_aa

    :cond_b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_9c

    :cond_b9
    const/4 v1, 0x0

    move-wide v5, v9

    move-wide v7, v11

    move v9, v1

    move/from16 v1, p1

    .line 851
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    return-void
.end method

.method public performUpdateOomAdjLSP(I)V
    .registers 5

    .line 667
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->getTopProcessState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 669
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 671
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 672
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterImpl;->fullUpdateLSP(I)V

    .line 676
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 4

    .line 682
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjusterImpl;->performUpdateOomAdjPendingTargetsLocked(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public performUpdateOomAdjPendingTargetsLocked(I)V
    .registers 6

    .line 690
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 691
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 692
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 695
    :try_start_17
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/OomAdjusterImpl;->partialUpdateLSP(ILandroid/util/ArraySet;)V

    .line 696
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 697
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 699
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_29
    move-exception p0

    .line 696
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public resetInternal()V
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->reset()V

    .line 630
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->reset()V

    return-void
.end method

.method public unlinkProcessRecordFromList(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    .line 623
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public final updateAdjSlotIfNecessary(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 4

    .line 654
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v0

    if-eq v0, p2, :cond_b

    .line 655
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    :cond_b
    return-void
.end method

.method public final updateProcStateSlotIfNecessary(Lcom/android/server/am/psc/ProcessRecordInternal;I)V
    .registers 4

    .line 660
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    if-eq v0, p2, :cond_b

    .line 661
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/psc/ProcessRecordInternal;)V

    :cond_b
    return-void
.end method
