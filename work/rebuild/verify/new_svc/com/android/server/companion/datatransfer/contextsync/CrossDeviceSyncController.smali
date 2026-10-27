.class public Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;
.super Ljava/lang/Object;
.source "CrossDeviceSyncController.java"


# instance fields
.field public final mBlocklist:Ljava/util/Set;

.field public final mCallFacilitators:Ljava/util/List;

.field public final mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

.field public final mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

.field public final mConnectedAssociations:Ljava/util/List;

.field public mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

.field public final mContext:Landroid/content/Context;

.field public mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

.field public final mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlocklist(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallManager(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedAssociations(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhoneAccountManager(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInCallServiceCallbackRef(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->clearInProgressCalls(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateFacilitatorMessage(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)[B
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createFacilitatorMessage()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misAssociationBlockedLocal(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mprocessCallCreateRequests(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallCreateRequests(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisAssociationBlocked(Landroid/companion/AssociationInfo;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    .line 102
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 104
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V

    invoke-virtual {p2, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(Landroid/companion/IOnTransportsChangedListener;)V

    .line 198
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V

    const v1, 0x63678883

    invoke-virtual {p2, v1, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 246
    new-instance p2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    invoke-direct {p2, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 247
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;-><init>(Landroid/content/Context;Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    return-void
.end method

.method public static createCallControlMessage(Ljava/lang/String;I)[B
    .registers 11

    .line 681
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10500000001L

    const/4 v3, 0x1

    .line 682
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10b00000004L

    .line 683
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x20b00000002L

    .line 684
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000002L

    .line 685
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10900000001L

    .line 686
    invoke-virtual {v0, v7, v8, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10e00000002L

    .line 687
    invoke-virtual {v0, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 688
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 689
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 690
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 691
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 12

    .line 697
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10500000001L

    const/4 v3, 0x1

    .line 698
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10b00000004L

    .line 699
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x20b00000002L

    .line 700
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000001L

    .line 701
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10900000001L

    .line 702
    invoke-virtual {v0, v7, v8, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10900000002L

    .line 703
    invoke-virtual {v0, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p0, 0x10b00000003L

    .line 704
    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p0

    .line 705
    invoke-virtual {v0, v7, v8, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 706
    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 707
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 708
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 709
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 710
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static createEmptyMessage()[B
    .registers 4

    .line 715
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10500000001L

    const/4 v3, 0x1

    .line 716
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 717
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static isAssociationBlocked(Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 260
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static processCallControlRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;
    .registers 4

    .line 544
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    invoke-direct {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;-><init>()V

    .line 546
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    .line 547
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_31

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field in ControlAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    const-string v2, "CrossDeviceSyncController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_31
    const-wide v1, 0x10e00000002L

    .line 553
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    .line 552
    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->setControl(I)V

    goto :goto_5

    :cond_3e
    const-wide v1, 0x10900000001L

    .line 549
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->setId(Ljava/lang/String;)V

    goto :goto_5

    :cond_4b
    return-object v0
.end method

.method public static processCallCreateRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;
    .registers 5

    .line 515
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    invoke-direct {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;-><init>()V

    .line 517
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_62

    .line 518
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_55

    const/4 v2, 0x2

    if-eq v1, v2, :cond_48

    const/4 v2, 0x3

    if-eq v1, v2, :cond_34

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field in CreateAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    const-string v2, "CrossDeviceSyncController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_34
    const-wide v1, 0x10b00000003L

    .line 527
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 529
    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->setFacilitator(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;)V

    .line 530
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_5

    :cond_48
    const-wide v1, 0x10900000002L

    .line 524
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->setAddress(Ljava/lang/String;)V

    goto :goto_5

    :cond_55
    const-wide v1, 0x10900000001L

    .line 520
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->setId(Ljava/lang/String;)V

    goto :goto_5

    :cond_62
    return-object v0
.end method

.method public static processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;
    .registers 4

    .line 567
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-direct {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>()V

    .line 569
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5b

    .line 570
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_41

    const/4 v2, 0x3

    if-eq v1, v2, :cond_34

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled field in Facilitator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    const-string v2, "CrossDeviceSyncController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_34
    const-wide v1, 0x10900000003L

    .line 579
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->setExtendedIdentifier(Ljava/lang/String;)V

    goto :goto_5

    :cond_41
    const-wide v1, 0x10900000002L

    .line 575
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->setIdentifier(Ljava/lang/String;)V

    goto :goto_5

    :cond_4e
    const-wide v1, 0x10900000001L

    .line 572
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->setName(Ljava/lang/String;)V

    goto :goto_5

    :cond_5b
    return-object v0
.end method


# virtual methods
.method public addSelfOwnedCallId(Ljava/lang/String;)V
    .registers 2

    .line 428
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->addSelfOwnedCallId(Ljava/lang/String;)V

    return-void
.end method

.method public final clearInProgressCalls(I)V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->clearCallIdsForAssociationId(I)Ljava/util/Set;

    move-result-object p1

    .line 253
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    if-eqz p0, :cond_17

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->cleanUpCallIds(Ljava/util/Set;)V

    :cond_17
    return-void
.end method

.method public createCallUpdateMessage(Ljava/util/Collection;I)[B
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;",
            ">;I)[B"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 639
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v2, 0x10500000001L

    const/4 v4, 0x1

    .line 640
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000004L

    .line 641
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 642
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide v10, 0x10900000001L

    if-eqz v5, :cond_e1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 643
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->isCallPlacedByContextSync()Z

    move-result v12

    if-nez v12, :cond_1d

    iget-object v12, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->isExternallyOwned(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_41

    goto :goto_1d

    :cond_41
    const-wide v12, 0x20b00000001L

    .line 647
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 648
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v10, v11, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v14, 0x10b00000002L

    .line 649
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 651
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getUserId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAdminBlocked(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getReadableCallerId(Z)Ljava/lang/String;

    move-result-object v6

    .line 650
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10c00000002L

    .line 652
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getCallingAppIcon()[B

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v6, 0x10b00000003L

    .line 653
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 654
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getCallingAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 655
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getCallingAppPackageName()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x10900000002L

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 657
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getSerializedPhoneAccountHandle()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x10900000003L

    .line 656
    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 658
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 659
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10e00000003L

    .line 660
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getStatus()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10e00000005L

    .line 661
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getDirection()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 662
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getControls()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide v7, 0x20e00000004L

    .line 663
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_c3

    .line 665
    :cond_dc
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_1d

    .line 667
    :cond_e1
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    const-wide v5, 0x20b00000003L

    .line 668
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 669
    invoke-virtual {v4}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 670
    invoke-virtual {v4}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 672
    invoke-virtual {v4}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getExtendedIdentifier()Ljava/lang/String;

    move-result-object v4

    const-wide v12, 0x10900000003L

    .line 671
    invoke-virtual {v1, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 673
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_e7

    .line 675
    :cond_11f
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 676
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final createFacilitatorMessage()[B
    .registers 3

    .line 722
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final isAdminBlocked(I)Z
    .registers 3

    .line 345
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 346
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public final isAssociationBlockedLocal(I)Z
    .registers 2

    .line 319
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onBootCompleted()V
    .registers 4

    .line 266
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_48

    .line 270
    :cond_9
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->onBootCompleted()V

    .line 272
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_48

    .line 273
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_48

    .line 274
    const-string/jumbo v1, "tel"

    .line 275
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 277
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 280
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    .line 282
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    :goto_48
    return-void
.end method

.method public final processCallCreateRequests(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .registers 7

    .line 291
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->getCallCreateRequests()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 292
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 293
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    .line 294
    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->getFacilitator()Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 295
    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 297
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->addSelfOwnedCallId(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\D+"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 299
    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 301
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 302
    const-string v3, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    const-string v3, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v1, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_7f

    .line 308
    :cond_78
    const-string v0, "CrossDeviceSyncController"

    const-string v1, "Non-system facilitated calls are not supported yet"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_7f
    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_83
    return-void
.end method

.method public processCallDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    new-instance p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-direct {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    .line 592
    :goto_5
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_cf

    .line 593
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const-wide v2, 0x10900000001L

    const/4 v4, 0x1

    if-eq v0, v4, :cond_c6

    const-string v5, "CrossDeviceSyncController"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v0, v7, :cond_66

    if-eq v0, v6, :cond_59

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3f

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled field in Telecom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3f
    const-wide v0, 0x10e00000005L

    .line 624
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setDirection(I)V

    goto :goto_5

    :cond_4c
    const-wide v0, 0x20e00000004L

    .line 627
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->addControl(I)V

    goto :goto_5

    :cond_59
    const-wide v0, 0x10e00000003L

    .line 621
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setStatus(I)V

    goto :goto_5

    :cond_66
    const-wide v8, 0x10b00000002L

    .line 598
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    .line 599
    :goto_6f
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    if-eq v0, v1, :cond_c1

    .line 600
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    if-eq v0, v4, :cond_b9

    if-eq v0, v7, :cond_ac

    if-eq v0, v6, :cond_98

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled field in Origin:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_98
    const-wide v10, 0x10b00000003L

    .line 608
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    .line 610
    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setFacilitator(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;)V

    .line 611
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_6f

    :cond_ac
    const-wide v10, 0x10c00000002L

    .line 602
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setAppIcon([B)V

    goto :goto_6f

    .line 605
    :cond_b9
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setCallerId(Ljava/lang/String;)V

    goto :goto_6f

    .line 618
    :cond_c1
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_5

    .line 595
    :cond_c6
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setId(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_cf
    return-object p0
.end method

.method public processTelecomDataFromSync([B)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;
    .registers 15

    .line 440
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    invoke-direct {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;-><init>()V

    .line 441
    new-instance v1, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoInputStream;-><init>([B)V

    const/4 p1, -0x1

    move v2, p1

    .line 444
    :goto_c
    :try_start_c
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, p1, :cond_139

    .line 445
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_13a
    .catch Landroid/util/proto/ProtoParseException; {:try_start_c .. :try_end_16} :catch_13a

    const-string v4, "CrossDeviceSyncController"

    const/4 v5, 0x1

    if-eq v3, v5, :cond_11a

    const/4 v6, 0x4

    if-eq v3, v6, :cond_37

    .line 502
    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled field in ContextSyncMessage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_37
    if-ne v2, v5, :cond_104

    const-wide v6, 0x10b00000004L

    .line 452
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 453
    :goto_42
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, p1, :cond_ff

    .line 454
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    if-ne v3, v5, :cond_62

    const-wide v8, 0x20b00000001L

    .line 455
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->addCall(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;)V

    .line 457
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_42

    .line 458
    :cond_62
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_c6

    const-wide v9, 0x20b00000002L

    .line 459
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v9

    .line 460
    :goto_72
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, p1, :cond_c1

    .line 461
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    if-eq v3, v5, :cond_ad

    if-eq v3, v8, :cond_99

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unhandled field in Request:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_99
    const-wide v11, 0x10b00000002L

    .line 470
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v11

    .line 473
    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallControlRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    move-result-object v3

    .line 472
    invoke-virtual {v0, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->addCallControlRequest(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;)V

    .line 474
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_72

    :cond_ad
    const-wide v11, 0x10b00000001L

    .line 463
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v11

    .line 466
    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallCreateRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    move-result-object v3

    .line 465
    invoke-virtual {v0, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->addCallCreateRequest(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;)V

    .line 467
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_72

    .line 483
    :cond_c1
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_42

    .line 484
    :cond_c6
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_e5

    const-wide v8, 0x20b00000003L

    .line 485
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    .line 487
    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v3

    .line 488
    invoke-virtual {v3, v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->setIsTel(Z)V

    .line 489
    invoke-virtual {v0, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->addFacilitator(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;)V

    .line 490
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_42

    .line 492
    :cond_e5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled field in Telecom:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 496
    :cond_ff
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_c

    .line 498
    :cond_104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot process unsupported version "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_11a
    const-wide v2, 0x10500000001L

    .line 447
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing context sync message version "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_137} :catch_13a
    .catch Landroid/util/proto/ProtoParseException; {:try_start_1e .. :try_end_137} :catch_13a

    goto/16 :goto_c

    :cond_139
    return-object v0

    :catch_13a
    move-exception p0

    .line 507
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_4a

    .line 326
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    .line 327
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 328
    invoke-static {v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 329
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    .line 332
    invoke-virtual {p1, v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    goto :goto_11

    .line 334
    :cond_3b
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_49
    return-void

    :cond_4a
    if-ne p2, v1, :cond_54

    .line 338
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    return-void

    .line 340
    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot register callback of unknown type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrossDeviceSyncController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeSelfOwnedCallId(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 434
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->removeSelfOwnedCallId(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public syncMessageToAllDevicesForUserId(I[B)V
    .registers 7

    .line 408
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 409
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 410
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_b

    invoke-static {v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 411
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 414
    :cond_2f
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 415
    const-string p0, "CrossDeviceSyncController"

    const-string p1, "No eligible devices to sync to"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 419
    :cond_3d
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 420
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    const v0, 0x63678883

    .line 419
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)Landroid/util/SparseArray;

    return-void
.end method

.method public syncMessageToDevice(I[B)V
    .registers 4

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 398
    const-string p0, "CrossDeviceSyncController"

    const-string p1, "Cannot sync to requested device; connection is blocked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 402
    :cond_e
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    const v0, 0x63678883

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)Landroid/util/SparseArray;

    return-void
.end method

.method public syncToAllDevicesForUserId(ILjava/util/Collection;)V
    .registers 7

    .line 356
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 358
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_b

    invoke-static {v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 359
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 362
    :cond_2f
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 363
    const-string p0, "CrossDeviceSyncController"

    const-string p1, "No eligible devices to sync to"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 367
    :cond_3d
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 368
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    move-result-object p0

    .line 369
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;

    invoke-direct {p2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    const p2, 0x63678883

    .line 367
    invoke-virtual {v1, p2, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)Landroid/util/SparseArray;

    return-void
.end method

.method public syncToSingleDevice(Landroid/companion/AssociationInfo;Ljava/util/Collection;)V
    .registers 5

    .line 380
    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 381
    const-string p0, "CrossDeviceSyncController"

    const-string p1, "Cannot sync to requested device; connection is blocked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 385
    :cond_e
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 386
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    move-result-object p0

    .line 387
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    const p2, 0x63678883

    .line 385
    invoke-virtual {v0, p2, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)Landroid/util/SparseArray;

    return-void
.end method
