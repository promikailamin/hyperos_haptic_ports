.class public final Landroid/companion/AssociationInfo$Builder;
.super Ljava/lang/Object;
.source "AssociationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mDeviceId:Landroid/companion/DeviceId;

.field private blacklist mDeviceMacAddress:Landroid/net/MacAddress;

.field private blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mId:I

.field private blacklist mLastTimeConnectedMs:J

.field private blacklist mMetadata:Landroid/os/PersistableBundle;

.field private blacklist mNotifyOnDeviceNearby:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPackagesToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPending:Z

.field private blacklist mRevoked:Z

.field private blacklist mSelfManaged:Z

.field private blacklist mSystemDataSyncFlags:I

.field private blacklist mTimeApprovedMs:J

.field private blacklist mTransportFlags:I

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .registers 6

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 606
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 612
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mMetadata:Landroid/os/PersistableBundle;

    .line 617
    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    .line 618
    iput p2, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    .line 619
    iput-object p3, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/companion/AssociationInfo;)V
    .registers 7

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 606
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 612
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mMetadata:Landroid/os/PersistableBundle;

    .line 653
    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    .line 654
    iput p2, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    .line 655
    iput-object p3, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 656
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 657
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 658
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    .line 659
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 660
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    .line 661
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    .line 662
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    .line 663
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    .line 664
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 665
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 666
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I

    move-result p1

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 667
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTransportFlags(Landroid/companion/AssociationInfo;)I

    move-result p1

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mTransportFlags:I

    .line 668
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceIcon(Landroid/companion/AssociationInfo;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 669
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceId(Landroid/companion/AssociationInfo;)Landroid/companion/DeviceId;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    .line 670
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPackagesToNotify(Landroid/companion/AssociationInfo;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mPackagesToNotify:Ljava/util/List;

    .line 671
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmMetadata(Landroid/companion/AssociationInfo;)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mMetadata:Landroid/os/PersistableBundle;

    .line 672
    return-void
.end method

.method public constructor blacklist <init>(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 606
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 612
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mMetadata:Landroid/os/PersistableBundle;

    .line 625
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmId(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    .line 626
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmUserId(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    .line 627
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPackageName(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 628
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 629
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 630
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    .line 631
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 632
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    .line 633
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    .line 634
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    .line 635
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    .line 636
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 637
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 638
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 639
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTransportFlags(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mTransportFlags:I

    .line 640
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceIcon(Landroid/companion/AssociationInfo;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 641
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceId(Landroid/companion/AssociationInfo;)Landroid/companion/DeviceId;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    .line 642
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPackagesToNotify(Landroid/companion/AssociationInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mPackagesToNotify:Ljava/util/List;

    .line 643
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmMetadata(Landroid/companion/AssociationInfo;)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mMetadata:Landroid/os/PersistableBundle;

    .line 644
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/AssociationInfo;
    .registers 26

    .line 827
    move-object/from16 v0, p0

    iget v1, v0, Landroid/companion/AssociationInfo$Builder;->mId:I

    if-lez v1, :cond_6b

    .line 830
    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-nez v1, :cond_17

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    goto :goto_17

    .line 831
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC address and the display name must NOT be null at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_17
    :goto_17
    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mMetadata:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_63

    .line 837
    new-instance v2, Landroid/companion/AssociationInfo;

    iget v3, v0, Landroid/companion/AssociationInfo$Builder;->mId:I

    iget v4, v0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    iget-object v5, v0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v7, v0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    iget-object v9, v0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-boolean v10, v0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    iget-boolean v11, v0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    iget-boolean v12, v0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    iget-boolean v13, v0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    iget-wide v14, v0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    move-object/from16 v16, v2

    iget-wide v1, v0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    move-wide/from16 v17, v1

    iget v1, v0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    iget v2, v0, Landroid/companion/AssociationInfo$Builder;->mTransportFlags:I

    move/from16 v19, v1

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mPackagesToNotify:Ljava/util/List;

    iget-object v0, v0, Landroid/companion/AssociationInfo$Builder;->mMetadata:Landroid/os/PersistableBundle;

    const/16 v24, 0x0

    move/from16 v22, v19

    move/from16 v19, v2

    move-object/from16 v2, v16

    move-wide/from16 v16, v17

    move/from16 v18, v22

    move-object/from16 v23, v0

    move-object/from16 v22, v1

    invoke-direct/range {v2 .. v24}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJIILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;Ljava/util/List;Landroid/os/PersistableBundle;Landroid/companion/AssociationInfo-IA;)V

    move-object/from16 v16, v2

    return-object v16

    .line 835
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Association metadata cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Association ID should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAssociatedDevice(Landroid/companion/AssociatedDevice;)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 710
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 711
    return-object p0
.end method

.method public blacklist setDeviceIcon(Landroid/graphics/drawable/Icon;)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 799
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 800
    return-object p0
.end method

.method public blacklist setDeviceId(Landroid/companion/DeviceId;)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 678
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    .line 679
    return-object p0
.end method

.method public blacklist setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 686
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 687
    return-object p0
.end method

.method public blacklist setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 702
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    .line 703
    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 694
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 695
    return-object p0
.end method

.method public blacklist setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;
    .registers 6

    .line 766
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 771
    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 772
    return-object p0

    .line 767
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lastTimeConnectedMs must not be negative! (Given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMetadata(Landroid/os/PersistableBundle;)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 819
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mMetadata:Landroid/os/PersistableBundle;

    .line 820
    return-object p0
.end method

.method public blacklist setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 727
    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    .line 728
    return-object p0
.end method

.method public blacklist setPackagesToNotify(Ljava/util/List;)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/companion/AssociationInfo$Builder;"
        }
    .end annotation

    .line 809
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mPackagesToNotify:Ljava/util/List;

    .line 810
    return-object p0
.end method

.method public blacklist setPending(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 744
    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    .line 745
    return-object p0
.end method

.method public blacklist setRevoked(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 736
    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    .line 737
    return-object p0
.end method

.method public blacklist setSelfManaged(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 718
    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    .line 719
    return-object p0
.end method

.method public blacklist setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 779
    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 780
    return-object p0
.end method

.method public blacklist setTimeApproved(J)Landroid/companion/AssociationInfo$Builder;
    .registers 6

    .line 753
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 757
    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 758
    return-object p0

    .line 754
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeApprovedMs must be positive. Was given ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setTransportFlags(I)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    .line 789
    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mTransportFlags:I

    .line 790
    return-object p0
.end method
