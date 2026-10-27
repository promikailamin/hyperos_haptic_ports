.class public final Landroid/companion/AssociationRequest;
.super Ljava/lang/Object;
.source "AssociationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/AssociationRequest$Builder;,
        Landroid/companion/AssociationRequest$DeviceProfile;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_PROFILE_APP_STREAMING:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_APP_STREAMING"

.field public static final whitelist DEVICE_PROFILE_AUTOMOTIVE_PROJECTION:Ljava/lang/String; = "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

.field public static final whitelist DEVICE_PROFILE_COMPUTER:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_COMPUTER"

.field public static final blacklist DEVICE_PROFILE_FITNESS_TRACKER:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_FITNESS_TRACKER"

.field public static final whitelist DEVICE_PROFILE_GLASSES:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_GLASSES"

.field public static final blacklist DEVICE_PROFILE_MEDICAL:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_MEDICAL"

.field public static final whitelist DEVICE_PROFILE_NEARBY_DEVICE_STREAMING:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

.field public static final blacklist DEVICE_PROFILE_VIRTUAL_DEVICE:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

.field public static final whitelist DEVICE_PROFILE_WATCH:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_WATCH"

.field public static final blacklist DEVICE_PROFILE_WEARABLE_SENSING:Ljava/lang/String; = "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

.field private static final blacklist DISPLAY_NAME_LENGTH_LIMIT:I = 0x400


# instance fields
.field private blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private final blacklist mCreationTime:J

.field private final greylist-max-o mDeviceFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDeviceProfilePrivilegesDescription:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mForceConfirmation:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mRequestedPerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSelfManaged:Z

.field private final greylist-max-o mSingleDevice:Z

.field private blacklist mSkipPrompt:Z

.field private final blacklist mSkipRoleGrant:Z

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smvalidateDisplayName(Ljava/lang/CharSequence;)V
    .registers 1

    invoke-static {p0}, Landroid/companion/AssociationRequest;->validateDisplayName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 844
    new-instance v0, Landroid/companion/AssociationRequest$1;

    invoke-direct {v0}, Landroid/companion/AssociationRequest$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 19

    .line 798
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/companion/AssociationRequest;->mRequestedPerms:Ljava/util/List;

    .line 799
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 800
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    move v3, v4

    .line 801
    :goto_1a
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    goto :goto_21

    :cond_20
    move v6, v4

    .line 802
    :goto_21
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_27

    const/4 v7, 0x1

    goto :goto_28

    :cond_27
    move v7, v4

    .line 803
    :goto_28
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_2e

    const/4 v8, 0x1

    goto :goto_2f

    :cond_2e
    move v8, v4

    .line 804
    :goto_2f
    and-int/lit16 v9, v2, 0x200

    if-eqz v9, :cond_34

    const/4 v4, 0x1

    .line 805
    :cond_34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 806
    const-class v10, Landroid/companion/DeviceFilter;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-class v11, Landroid/companion/DeviceFilter;

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 809
    and-int/lit8 v10, v2, 0x10

    const/4 v11, 0x0

    if-nez v10, :cond_4b

    move-object v10, v11

    goto :goto_4f

    :cond_4b
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 810
    :goto_4f
    and-int/lit8 v12, v2, 0x20

    if-nez v12, :cond_55

    move-object v12, v11

    goto :goto_59

    :cond_55
    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v12

    .line 811
    :goto_59
    and-int/lit8 v13, v2, 0x40

    if-nez v13, :cond_5f

    move-object v13, v11

    goto :goto_67

    .line 812
    :cond_5f
    sget-object v13, Landroid/companion/AssociatedDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/companion/AssociatedDevice;

    .line 813
    :goto_67
    and-int/lit16 v14, v2, 0x80

    if-nez v14, :cond_6d

    move-object v14, v11

    goto :goto_71

    :cond_6d
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 814
    :goto_71
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 815
    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_7b

    move-object v2, v11

    goto :goto_7f

    :cond_7b
    invoke-virtual {v1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 816
    :goto_7f
    move/from16 v16, v6

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 818
    iput-boolean v3, v0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    .line 819
    iput-object v9, v0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 820
    const-class v3, Landroid/annotation/NonNull;

    iget-object v9, v0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-static {v3, v11, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 822
    iput-object v10, v0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 823
    iput-object v12, v0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 824
    iput-object v13, v0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 825
    move/from16 v3, v16

    iput-boolean v3, v0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    .line 826
    iput-boolean v7, v0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    .line 827
    iput-boolean v4, v0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    .line 828
    iput-object v14, v0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    .line 829
    iput v15, v0, Landroid/companion/AssociationRequest;->mUserId:I

    .line 830
    const-class v3, Landroid/annotation/UserIdInt;

    iget v4, v0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-static {v3, v11, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V

    .line 832
    iput-object v2, v0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 833
    iput-wide v5, v0, Landroid/companion/AssociationRequest;->mCreationTime:J

    .line 834
    iput-boolean v8, v0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c0

    .line 836
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    iput-object v2, v0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 838
    :cond_c0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_d3

    .line 839
    iget-object v0, v0, Landroid/companion/AssociationRequest;->mRequestedPerms:Ljava/util/List;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 841
    :cond_d3
    return-void
.end method

.method private constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "ZZZ",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/AssociationRequest;->mRequestedPerms:Ljava/util/List;

    .line 355
    invoke-static {p4}, Landroid/companion/AssociationRequest;->validateDisplayName(Ljava/lang/CharSequence;)V

    .line 356
    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    .line 357
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 358
    iput-object p3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 359
    iput-object p4, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 360
    iput-boolean p5, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    .line 361
    iput-boolean p6, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    .line 362
    iput-boolean p7, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    .line 364
    iput-object p8, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 365
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;Landroid/companion/AssociationRequest-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private static blacklist validateDisplayName(Ljava/lang/CharSequence;)V
    .registers 2

    .line 858
    if-eqz p0, :cond_13

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/16 v0, 0x400

    if-gt p0, v0, :cond_b

    goto :goto_13

    .line 859
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Length of the display name must be at most 1024 characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 862
    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 731
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 732
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_93

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_93

    .line 733
    :cond_13
    check-cast p1, Landroid/companion/AssociationRequest;

    .line 734
    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-ne v2, v3, :cond_91

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 735
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    .line 736
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 737
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 738
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-ne v2, v3, :cond_91

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-ne v2, v3, :cond_91

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    if-ne v2, v3, :cond_91

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    .line 742
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget v2, p0, Landroid/companion/AssociationRequest;->mUserId:I

    iget v3, p1, Landroid/companion/AssociationRequest;->mUserId:I

    if-ne v2, v3, :cond_91

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 744
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-wide v2, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    iget-wide v4, p1, Landroid/companion/AssociationRequest;->mCreationTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_91

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-ne v2, v3, :cond_91

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_86

    iget-object p1, p1, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-nez p1, :cond_91

    goto :goto_90

    :cond_86
    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    iget-object p1, p1, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 749
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p1

    if-eqz p1, :cond_91

    :goto_90
    goto :goto_92

    :cond_91
    move v0, v1

    .line 734
    :goto_92
    return v0

    .line 732
    :cond_93
    :goto_93
    return v1
.end method

.method public blacklist getAssociatedDevice()Landroid/companion/AssociatedDevice;
    .registers 2

    .line 654
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object v0
.end method

.method public blacklist getCreationTime()J
    .registers 3

    .line 696
    iget-wide v0, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    return-wide v0
.end method

.method public greylist-max-r getDeviceFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDeviceIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getDeviceProfile()Ljava/lang/String;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceProfilePrivilegesDescription()Ljava/lang/String;
    .registers 2

    .line 687
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 665
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequestedPerms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mRequestedPerms:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 676
    iget v0, p0, Landroid/companion/AssociationRequest;->mUserId:I

    return v0
.end method

.method public whitelist isForceConfirmation()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    return v0
.end method

.method public whitelist isSelfManaged()Z
    .registers 2

    .line 391
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    return v0
.end method

.method public whitelist isSingleDevice()Z
    .registers 2

    .line 425
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    return v0
.end method

.method public blacklist isSkipPrompt()Z
    .registers 2

    .line 706
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    return v0
.end method

.method public blacklist isSkipRoleGrant()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    return v0
.end method

.method public blacklist setAssociatedDevice(Landroid/companion/AssociatedDevice;)V
    .registers 2

    .line 475
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 476
    return-void
.end method

.method public blacklist setDeviceIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2

    .line 480
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 481
    return-void
.end method

.method public blacklist setDeviceProfilePrivilegesDescription(Ljava/lang/String;)V
    .registers 2

    .line 459
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)V
    .registers 2

    .line 469
    invoke-static {p1}, Landroid/companion/AssociationRequest;->validateDisplayName(Ljava/lang/CharSequence;)V

    .line 470
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    .line 471
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 449
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public blacklist setRequestedPerms(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 485
    iput-object p1, p0, Landroid/companion/AssociationRequest;->mRequestedPerms:Ljava/util/List;

    .line 486
    return-void
.end method

.method public blacklist setSkipPrompt(Z)V
    .registers 2

    .line 464
    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    .line 465
    return-void
.end method

.method public blacklist setUserId(I)V
    .registers 2

    .line 454
    iput p1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    .line 455
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssociationRequest { singleDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceFilters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", associatedDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selfManaged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceConfirmation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipRoleGrant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProfilePrivilegesDescription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipPrompt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestedPerms = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mRequestedPerms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 754
    nop

    .line 755
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 756
    :goto_a
    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-eqz v3, :cond_10

    or-int/lit8 v0, v0, 0x2

    .line 757
    :cond_10
    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-eqz v3, :cond_16

    or-int/lit8 v0, v0, 0x4

    .line 758
    :cond_16
    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-eqz v3, :cond_1c

    or-int/lit8 v0, v0, 0x8

    .line 759
    :cond_1c
    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v3, :cond_22

    or-int/lit8 v0, v0, 0x10

    .line 760
    :cond_22
    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_28

    or-int/lit8 v0, v0, 0x20

    .line 761
    :cond_28
    iget-object v3, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    if-eqz v3, :cond_2e

    or-int/lit8 v0, v0, 0x40

    .line 762
    :cond_2e
    iget-object v3, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_34

    or-int/lit16 v0, v0, 0x80

    .line 763
    :cond_34
    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v3, :cond_3a

    or-int/lit16 v0, v0, 0x100

    .line 764
    :cond_3a
    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    if-eqz v3, :cond_40

    or-int/lit16 v0, v0, 0x200

    .line 766
    :cond_40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 768
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    :cond_51
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 770
    :cond_5a
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 771
    :cond_63
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    :cond_6c
    iget v0, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v0, :cond_7a

    .line 774
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 776
    :cond_7a
    iget-wide v3, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 777
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_8c

    .line 778
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8f

    .line 781
    :cond_8c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    :goto_8f
    iget-object p2, p0, Landroid/companion/AssociationRequest;->mRequestedPerms:Ljava/util/List;

    if-eqz p2, :cond_9c

    .line 784
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    iget-object p2, p0, Landroid/companion/AssociationRequest;->mRequestedPerms:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_9f

    .line 787
    :cond_9c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    :goto_9f
    return-void
.end method
