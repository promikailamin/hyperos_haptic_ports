.class public final Landroid/companion/virtual/VirtualDeviceParams;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceParams$Builder;,
        Landroid/companion/virtual/VirtualDeviceParams$DynamicDisplayPolicyType;,
        Landroid/companion/virtual/VirtualDeviceParams$DynamicPolicyType;,
        Landroid/companion/virtual/VirtualDeviceParams$PolicyType;,
        Landroid/companion/virtual/VirtualDeviceParams$DevicePolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$NavigationPolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$ActivityPolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$LockState;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY_POLICY_DEFAULT_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTIVITY_POLICY_DEFAULT_BLOCKED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_POLICY_CUSTOM:I = 0x1

.field public static final whitelist DEVICE_POLICY_DEFAULT:I = 0x0

.field public static final blacklist DEVICE_POLICY_INVALID:I = -0x1

.field public static final whitelist LOCK_STATE_ALWAYS_UNLOCKED:I = 0x1

.field public static final whitelist LOCK_STATE_DEFAULT:I = 0x0

.field public static final whitelist NAVIGATION_POLICY_DEFAULT_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAVIGATION_POLICY_DEFAULT_BLOCKED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist POLICY_TYPE_ACTIVITY:I = 0x3

.field public static final whitelist POLICY_TYPE_AUDIO:I = 0x1

.field public static final whitelist POLICY_TYPE_BLOCKED_ACTIVITY:I = 0x6

.field public static final whitelist POLICY_TYPE_CAMERA:I = 0x5

.field public static final whitelist POLICY_TYPE_CLIPBOARD:I = 0x4

.field public static final whitelist POLICY_TYPE_DEFAULT_DEVICE_CAMERA_ACCESS:I = 0x7

.field public static final whitelist POLICY_TYPE_RECENTS:I = 0x2

.field public static final whitelist POLICY_TYPE_SENSORS:I


# instance fields
.field private final blacklist mActivityPolicyExemptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAudioPlaybackSessionId:I

.field private final blacklist mAudioRecordingSessionId:I

.field private final blacklist mCrossTaskNavigationExemptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultActivityPolicy:I

.field private final blacklist mDefaultNavigationPolicy:I

.field private final blacklist mDevicePolicies:Landroid/util/SparseIntArray;

.field private final blacklist mDimDuration:J

.field private final blacklist mHomeComponent:Landroid/content/ComponentName;

.field private final blacklist mInputMethodComponent:Landroid/content/ComponentName;

.field private final blacklist mLockState:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mScreenOffTimeout:J

.field private final blacklist mUsersWithMatchingAccounts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

.field private final blacklist mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

.field private final blacklist mVirtualSensorConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 777
    new-instance v0, Landroid/companion/virtual/VirtualDeviceParams$1;

    invoke-direct {v0}, Landroid/companion/virtual/VirtualDeviceParams$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/VirtualDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJLandroid/companion/virtual/ViewConfigurationParams;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;",
            "Landroid/companion/virtual/sensor/IVirtualSensorCallback;",
            "IIJJ",
            "Landroid/companion/virtual/ViewConfigurationParams;",
            ")V"
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 368
    new-instance p1, Landroid/util/ArraySet;

    .line 369
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 370
    iput p3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 371
    new-instance p1, Landroid/util/ArraySet;

    .line 372
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 373
    iput p5, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    .line 374
    new-instance p1, Landroid/util/ArraySet;

    .line 375
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    .line 376
    iput-object p7, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    .line 377
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 378
    iput-object p9, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    .line 379
    iput-object p10, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    .line 380
    invoke-static {p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    .line 381
    iput-object p12, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 382
    iput p13, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    .line 383
    iput p14, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    .line 384
    move-wide p1, p15

    iput-wide p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    .line 385
    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    .line 386
    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    .line 387
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJLandroid/companion/virtual/ViewConfigurationParams;Landroid/companion/virtual/VirtualDeviceParams-IA;)V
    .registers 21

    invoke-direct/range {p0 .. p19}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJLandroid/companion/virtual/ViewConfigurationParams;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 394
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    .line 396
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    .line 400
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    sget-object v2, Landroid/companion/virtual/sensor/VirtualSensorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 401
    nop

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    .line 405
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    .line 406
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    .line 409
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 410
    sget-object v0, Landroid/companion/virtual/ViewConfigurationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/companion/virtual/ViewConfigurationParams;

    goto :goto_8a

    :cond_89
    nop

    :goto_8a
    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    .line 411
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/VirtualDeviceParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mUsersWithMatchingAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultNavigationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCrossTaskNavigationExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultActivityPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mActivityPolicyExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDevicePolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mVirtualSensorConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mHomeComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mInputMethodComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAudioPlaybackSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAudioRecordingSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mScreenOffTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v0, "mViewConfigurationParams="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 680
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 681
    return v0

    .line 683
    :cond_4
    instance-of v1, p1, Landroid/companion/virtual/VirtualDeviceParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 684
    return v2

    .line 686
    :cond_a
    check-cast p1, Landroid/companion/virtual/VirtualDeviceParams;

    .line 687
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 688
    iget-object v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-eq v1, v3, :cond_1b

    .line 689
    return v2

    .line 691
    :cond_1b
    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_3f

    .line 692
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iget-object v5, p1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    if-eq v4, v5, :cond_2d

    .line 693
    return v2

    .line 695
    :cond_2d
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iget-object v5, p1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-eq v4, v5, :cond_3c

    .line 696
    return v2

    .line 691
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 699
    :cond_3f
    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    iget v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    if-ne v1, v3, :cond_b4

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    .line 700
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 701
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    iget v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    if-ne v1, v3, :cond_b4

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    .line 704
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    iget v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    if-ne v1, v3, :cond_b4

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    .line 706
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    .line 707
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    .line 708
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    iget v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    if-ne v1, v3, :cond_b4

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    iget v3, p1, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    if-ne v1, v3, :cond_b4

    iget-wide v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    iget-wide v5, p1, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_b4

    iget-wide v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    iget-wide v5, p1, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_b4

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    iget-object p1, p1, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    .line 713
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    goto :goto_b5

    :cond_b4
    move v0, v2

    .line 699
    :goto_b5
    return v0
.end method

.method public whitelist getAllowedActivities()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    if-nez v0, :cond_9

    .line 539
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    .line 540
    :cond_9
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 538
    :goto_f
    return-object v0
.end method

.method public whitelist getAllowedCrossTaskNavigations()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_9

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    .line 490
    :cond_9
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 488
    :goto_f
    return-object v0
.end method

.method public whitelist getAudioPlaybackSessionId()I
    .registers 2

    .line 628
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    return v0
.end method

.method public whitelist getAudioRecordingSessionId()I
    .registers 2

    .line 637
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    return v0
.end method

.method public whitelist getBlockedActivities()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 554
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 555
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    .line 556
    :cond_a
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 554
    :goto_10
    return-object v0
.end method

.method public whitelist getBlockedCrossTaskNavigations()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 507
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    .line 508
    :cond_a
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 506
    :goto_10
    return-object v0
.end method

.method public whitelist getDefaultActivityPolicy()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    return v0
.end method

.method public whitelist getDefaultNavigationPolicy()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    return v0
.end method

.method public blacklist getDevicePolicies()Landroid/util/SparseIntArray;
    .registers 2

    .line 600
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public whitelist getDevicePolicy(I)I
    .registers 4

    .line 592
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public whitelist getDimDuration()Ljava/time/Duration;
    .registers 3

    .line 428
    iget-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHomeComponent()Landroid/content/ComponentName;
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getInputMethodComponent()Landroid/content/ComponentName;
    .registers 2

    .line 461
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getLockState()I
    .registers 2

    .line 418
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 582
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScreenOffTimeout()Ljava/time/Duration;
    .registers 3

    .line 438
    iget-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUsersWithMatchingAccounts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getViewConfigurationParams()Landroid/companion/virtual/ViewConfigurationParams;
    .registers 2

    .line 646
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    return-object v0
.end method

.method public blacklist getVirtualSensorCallback()Landroid/companion/virtual/sensor/IVirtualSensorCallback;
    .registers 2

    .line 619
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    return-object v0
.end method

.method public whitelist getVirtualSensorConfigs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 18

    .line 718
    move-object/from16 v0, p0

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    .line 719
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    .line 720
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    iget-object v9, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    iget-object v10, v0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v11, v0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    .line 721
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    .line 722
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-wide v14, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v15, v2

    iget-wide v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    move-object/from16 v16, v2

    move-object v2, v15

    move-object v15, v1

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 718
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 724
    const/4 v2, 0x0

    :goto_4a
    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 725
    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 726
    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 724
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 728
    :cond_67
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDeviceParams( mLockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUsersWithMatchingAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultNavigationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCrossTaskNavigationExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultActivityPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityPolicyExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDevicePolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInputMethodComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioPlaybackSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioRecordingSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDimDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mScreenOffTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mViewConfigurationParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 656
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 658
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 660
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 662
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 664
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 665
    nop

    .line 666
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    .line 665
    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 667
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 670
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 671
    iget-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDimDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 672
    iget-wide v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mScreenOffTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 673
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 674
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mViewConfigurationParams:Landroid/companion/virtual/ViewConfigurationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 676
    :cond_66
    return-void
.end method
