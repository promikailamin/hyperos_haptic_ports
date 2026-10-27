.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final greylist-max-o ANY_WINDOW_ID:I = -0x2

.field private static final greylist-max-o BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final greylist-max-o BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final greylist-max-o BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field private static final greylist-max-o BOOLEAN_PROPERTY_PICTURE_IN_PICTURE:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0xa

.field public static final greylist-max-o PICTURE_IN_PICTURE_ACTION_REPLACER_WINDOW_ID:I = -0x3

.field public static final whitelist TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final whitelist TYPE_APPLICATION:I = 0x1

.field public static final whitelist TYPE_INPUT_METHOD:I = 0x2

.field public static final whitelist TYPE_MAGNIFICATION_OVERLAY:I = 0x6

.field public static final whitelist TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final whitelist TYPE_SYSTEM:I = 0x3

.field public static final blacklist UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final greylist-max-o UNDEFINED_WINDOW_ID:I = -0x1

.field private static greylist-max-o sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnchorId:J

.field private greylist-max-o mBooleanProperties:I

.field private greylist-max-o mChildIds:Landroid/util/LongArray;

.field private greylist-max-o mConnectionId:I

.field private blacklist mDisplayId:I

.field private blacklist mGlobalScale:F

.field private greylist-max-o mId:I

.field private greylist-max-o mLayer:I

.field private greylist-max-o mParentId:I

.field private blacklist mRegionInScreen:Landroid/graphics/Region;

.field private blacklist mTaskId:I

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private blacklist mTransformMatrix:[F

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 113
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 952
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 120
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 121
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 123
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 124
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 125
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 126
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 130
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    .line 131
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    .line 133
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 135
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 141
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 120
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 121
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 123
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 124
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 125
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 126
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 130
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    .line 131
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    .line 133
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 135
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 150
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 151
    return-void
.end method

.method private greylist-max-o clear()V
    .registers 5

    .line 826
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 827
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 828
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 829
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 830
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 831
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 832
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 833
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 835
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 836
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 838
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    .line 839
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 841
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 842
    return-void
.end method

.method private greylist-max-o getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .line 851
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist init(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 702
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 703
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 704
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 705
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 706
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 707
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 708
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 709
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 710
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 711
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 713
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    .line 714
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    .line 717
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 718
    :cond_3a
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    if-lez v0, :cond_56

    .line 719
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_51

    .line 720
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    goto :goto_56

    .line 722
    :cond_51
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    .line 726
    :cond_56
    :goto_56
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 727
    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 737
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    .line 742
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 745
    .local v0, "childCount":I
    if-lez v0, :cond_6c

    .line 746
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_5c

    .line 747
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1, v0}, Landroid/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 749
    :cond_5c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5d
    if-ge v1, v0, :cond_6c

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 751
    .local v2, "childId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 749
    .end local v2    # "childId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 755
    .end local v1    # "i":I
    :cond_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 756
    return-void
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    .line 579
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 580
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v0, :cond_10

    .line 581
    new-instance v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    move-object v0, v1

    .line 583
    :cond_10
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_17

    .line 584
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 586
    :cond_17
    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 601
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 602
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 603
    return-object v0
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .line 863
    if-eqz p2, :cond_8

    .line 864
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    goto :goto_e

    .line 866
    :cond_8
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 868
    :goto_e
    return-void
.end method

.method public static blacklist setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2
    .param p0, "counter"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 613
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_6

    .line 614
    sput-object p0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 616
    :cond_6
    return-void
.end method

.method public static greylist-max-o typeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 874
    packed-switch p0, :pswitch_data_30

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 891
    :pswitch_1d
    const-string v0, "TYPE_MAGNIFICATION_OVERLAY"

    return-object v0

    .line 888
    :pswitch_20
    const-string v0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object v0

    .line 885
    :pswitch_23
    const-string v0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object v0

    .line 882
    :pswitch_26
    const-string v0, "TYPE_SYSTEM"

    return-object v0

    .line 879
    :pswitch_29
    const-string v0, "TYPE_INPUT_METHOD"

    return-object v0

    .line 876
    :pswitch_2c
    const-string v0, "TYPE_APPLICATION"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o addChild(I)V
    .registers 5
    .param p1, "childId"    # I

    .line 542
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_b

    .line 543
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 545
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 546
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I
    .registers 5
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 910
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v1, :cond_7f

    .line 913
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    if-ne v0, v1, :cond_77

    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "changes":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 918
    or-int/lit8 v0, v0, 0x4

    .line 920
    :cond_19
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 921
    or-int/lit8 v0, v0, 0x8

    .line 923
    :cond_25
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    if-eq v1, v2, :cond_2d

    .line 924
    or-int/lit8 v0, v0, 0x10

    .line 926
    :cond_2d
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 927
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_3a

    .line 928
    or-int/lit8 v0, v0, 0x20

    .line 930
    :cond_3a
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 931
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_47

    .line 932
    or-int/lit8 v0, v0, 0x40

    .line 934
    :cond_47
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 935
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_54

    .line 936
    or-int/lit16 v0, v0, 0x80

    .line 938
    :cond_54
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 939
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_62

    .line 940
    or-int/lit16 v0, v0, 0x400

    .line 942
    :cond_62
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v1, v2, :cond_6a

    .line 943
    or-int/lit16 v0, v0, 0x100

    .line 945
    :cond_6a
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 946
    or-int/lit16 v0, v0, 0x200

    .line 949
    :cond_76
    return v0

    .line 914
    .end local v0    # "changes":I
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not same window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 765
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 766
    return v0

    .line 768
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 769
    return v1

    .line 771
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 772
    return v1

    .line 774
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 775
    .local v2, "other":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v4, v2, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0
.end method

.method public whitelist getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11

    .line 302
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_25

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_12

    goto :goto_25

    .line 308
    :cond_12
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 309
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 305
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 432
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 433
    return-void
.end method

.method public whitelist getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5
    .param p1, "index"    # I

    .line 523
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_1b

    .line 526
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 527
    const/4 v0, 0x0

    return-object v0

    .line 529
    :cond_b
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 530
    .local v0, "childId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 531
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    return-object v2

    .line 524
    .end local v0    # "childId":I
    .end local v1    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getChildCount()I
    .registers 2

    .line 513
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 566
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    return v0
.end method

.method public blacklist getGlobalScale()F
    .registers 2

    .line 257
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 357
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public whitelist getLayer()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return v0
.end method

.method public whitelist getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 4

    .line 333
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_a

    goto :goto_17

    .line 336
    :cond_a
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 337
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1

    .line 334
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRegionInScreen(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 411
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 412
    return-void
.end method

.method public whitelist getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 227
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRoot(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11
    .param p1, "prefetchingStrategy"    # I

    .line 241
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 242
    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_7
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 245
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v7, p1

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 379
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    return v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTransformMatrix()[F
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 760
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public whitelist isAccessibilityFocused()Z
    .registers 2

    .line 493
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 451
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFocused()Z
    .registers 2

    .line 473
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isInPictureInPictureMode()Z
    .registers 2

    .line 324
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist recycle()V
    .registers 2

    .line 629
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    .line 630
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 631
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_f

    .line 632
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 634
    :cond_f
    return-void
.end method

.method public blacklist refresh()Z
    .registers 6

    .line 646
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v2, :cond_b

    goto :goto_22

    .line 649
    :cond_b
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 650
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 652
    .local v2, "refreshedInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v2, :cond_1b

    .line 653
    return v1

    .line 655
    :cond_1b
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 656
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 657
    return v4

    .line 647
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local v2    # "refreshedInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_22
    :goto_22
    return v1
.end method

.method public greylist-max-o setAccessibilityFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .line 504
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 505
    return-void
.end method

.method public greylist-max-o setActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 464
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 465
    return-void
.end method

.method public greylist-max-o setAnchorId(J)V
    .registers 3
    .param p1, "anchorId"    # J

    .line 293
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 294
    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .line 402
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 403
    return-void
.end method

.method public blacklist setDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 556
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 557
    return-void
.end method

.method public greylist-max-o setFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .line 484
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 485
    return-void
.end method

.method public blacklist setGlobalScale(F)V
    .registers 2
    .param p1, "globalScale"    # F

    .line 266
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    .line 267
    return-void
.end method

.method public greylist-max-o setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 368
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 369
    return-void
.end method

.method public greylist-max-o setLayer(I)V
    .registers 2
    .param p1, "layer"    # I

    .line 218
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 219
    return-void
.end method

.method public greylist-max-o setParentId(I)V
    .registers 2
    .param p1, "parentId"    # I

    .line 348
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 349
    return-void
.end method

.method public greylist-max-o setPictureInPicture(Z)V
    .registers 3
    .param p1, "pictureInPicture"    # Z

    .line 315
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 316
    return-void
.end method

.method public blacklist setRegionInScreen(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .line 422
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 423
    return-void
.end method

.method public blacklist setTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 390
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 391
    return-void
.end method

.method public greylist-max-o setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 171
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 172
    return-void
.end method

.method public blacklist setTransformMatrix([F)V
    .registers 5
    .param p1, "transformMatrix"    # [F

    .line 280
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    return-void
.end method

.method public greylist-max-o setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 196
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 197
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "AccessibilityWindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 783
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 786
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 788
    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 789
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 790
    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 791
    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, ", globalScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 794
    const-string v1, ", mTransformMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v1, ", pictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 812
    const-string v1, ", hasParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_bb

    move v2, v3

    goto :goto_bc

    :cond_bb
    move v2, v4

    :goto_bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 813
    const-string v1, ", isAnchored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v7, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_cf

    move v2, v3

    goto :goto_d0

    :cond_cf
    move v2, v4

    .line 814
    :goto_d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 815
    const-string v1, ", hasChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v2, :cond_e4

    .line 816
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_e4

    goto :goto_e5

    :cond_e4
    move v3, v4

    .line 815
    :goto_e5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 818
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 667
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 675
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 676
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 678
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mGlobalScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 679
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 682
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 683
    .local v0, "childIds":Landroid/util/LongArray;
    if-nez v0, :cond_45

    .line 684
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5a

    .line 686
    :cond_45
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v1

    .line 687
    .local v1, "childCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    if-ge v2, v1, :cond_5a

    .line 689
    invoke-virtual {v0, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 693
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_5a
    :goto_5a
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    return-void
.end method
