.class public Landroid/content/pm/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/UserInfo$UserInfoFlag;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FLAG_ADMIN:I = 0x2

.field public static final greylist-max-o FLAG_DEMO:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_DISABLED:I = 0x40

.field public static final greylist-max-o FLAG_EPHEMERAL:I = 0x100

.field public static final blacklist FLAG_EPHEMERAL_ON_CREATE:I = 0x2000

.field public static final blacklist FLAG_FOR_TESTING:I = 0x8000

.field public static final blacklist FLAG_FULL:I = 0x400

.field public static final greylist-max-o FLAG_GUEST:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_INITIALIZED:I = 0x10

.field public static final blacklist FLAG_MAIN:I = 0x4000

.field public static final greylist-max-o FLAG_MANAGED_PROFILE:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist FLAG_PRIMARY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_PROFILE:I = 0x1000

.field public static final greylist-max-o FLAG_QUIET_MODE:I = 0x80

.field public static final greylist-max-o FLAG_RESTRICTED:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_SYSTEM:I = 0x800

.field public static final greylist-max-o NO_PROFILE_GROUP_ID:I = -0x2710


# instance fields
.field public blacklist convertedFromPreCreated:Z

.field public greylist creationTime:J

.field public greylist flags:I

.field public greylist guestToRemove:Z

.field public greylist iconPath:Ljava/lang/String;

.field public greylist id:I

.field public greylist-max-o lastLoggedInFingerprint:Ljava/lang/String;

.field public greylist lastLoggedInTime:J

.field public greylist name:Ljava/lang/String;

.field public greylist partial:Z

.field public blacklist preCreated:Z

.field public greylist-max-o profileBadge:I

.field public greylist profileGroupId:I

.field public greylist-max-o restrictedProfileParentId:I

.field public greylist serialNumber:I

.field public blacklist userType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 645
    new-instance v0, Landroid/content/pm/UserInfo$1;

    invoke-direct {v0}, Landroid/content/pm/UserInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;I)V
    .registers 5

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 310
    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 318
    invoke-static {p4}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    .line 323
    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 324
    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 325
    iput-object p5, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 326
    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 327
    const/16 p1, -0x2710

    iput p1, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 328
    iput p1, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 329
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/UserInfo;)V
    .registers 4

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 572
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 573
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 574
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 575
    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 576
    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 577
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 578
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 579
    iget-object v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 580
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    .line 581
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 582
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 583
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 584
    iget v0, p1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 585
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 586
    iget p1, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    iput p1, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 587
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 671
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/UserInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 4

    .line 617
    const-string v0, "FLAG_"

    int-to-long v1, p0

    const-class p0, Landroid/content/pm/UserInfo;

    invoke-static {p0, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDefaultUserType(I)Ljava/lang/String;
    .registers 4

    .line 345
    and-int/lit16 v0, p0, 0x800

    const-string v1, "Cannot getDefaultUserType for flags "

    if-nez v0, :cond_3b

    .line 352
    and-int/lit16 v0, p0, 0x22c

    sparse-switch v0, :sswitch_data_5c

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " because it doesn\'t correspond to a valid user type."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :sswitch_2c
    const-string p0, "android.os.usertype.full.DEMO"

    return-object p0

    .line 356
    :sswitch_2f
    const-string p0, "android.os.usertype.profile.MANAGED"

    return-object p0

    .line 355
    :sswitch_32
    const-string p0, "android.os.usertype.full.RESTRICTED"

    return-object p0

    .line 354
    :sswitch_35
    const-string p0, "android.os.usertype.full.GUEST"

    return-object p0

    .line 353
    :sswitch_38
    const-string p0, "android.os.usertype.full.SECONDARY"

    return-object p0

    .line 346
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " because it corresponds to a SYSTEM user type."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_38
        0x4 -> :sswitch_35
        0x8 -> :sswitch_32
        0x20 -> :sswitch_2f
        0x200 -> :sswitch_2c
    .end sparse-switch
.end method

.method private static blacklist isSwitchableHeadlessSystemUser(Ljava/lang/String;)Z
    .registers 2

    .line 511
    const-string v0, "android.os.usertype.system.HEADLESS"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    .line 512
    const v0, 0x111006b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 511
    :goto_18
    return p0
.end method

.method public static blacklist supportsSwitchTo(Ljava/lang/String;I)Z
    .registers 2

    .line 502
    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_d

    invoke-static {p0}, Landroid/content/pm/UserInfo;->isSwitchableHeadlessSystemUser(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method


# virtual methods
.method public greylist-max-o canHaveProfile()Z
    .registers 4

    .line 532
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_3d

    .line 538
    :cond_20
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMainUnlogged()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 539
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->profilesForAll()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 540
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110288

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3b

    :cond_3a
    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v1, 0x1

    .line 538
    :goto_3c
    return v1

    .line 533
    :cond_3d
    :goto_3d
    return v1
.end method

.method public blacklist canHaveProfile(Ljava/lang/String;)Z
    .registers 3

    .line 549
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    if-nez v0, :cond_8

    .line 550
    const/4 p1, 0x0

    return p1

    .line 552
    :cond_8
    invoke-static {p1}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 555
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMainUnlogged()Z

    move-result p1

    return p1

    .line 557
    :cond_13
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 591
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist isAdmin()Z
    .registers 3

    .line 385
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isCloneProfile()Z
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isCommunalProfile()Z
    .registers 2

    .line 413
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeCommunalProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDemo()Z
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public greylist isEnabled()Z
    .registers 3

    .line 429
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isEphemeral()Z
    .registers 3

    .line 437
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isForTesting()Z
    .registers 3

    .line 443
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isFull()Z
    .registers 3

    .line 456
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist isGuest()Z
    .registers 2

    .line 390
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isInitialized()Z
    .registers 3

    .line 447
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isMain()Z
    .registers 2

    .line 463
    invoke-static {}, Landroid/os/UserManager;->logStaticDeprecation()V

    .line 464
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMainUnlogged()Z

    move-result v0

    return v0
.end method

.method public blacklist isMainUnlogged()Z
    .registers 3

    .line 477
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist isManagedProfile()Z
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isPrimary()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    invoke-static {}, Landroid/os/UserManager;->logStaticDeprecation()V

    .line 373
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrimaryUnlogged()Z

    move-result v0

    return v0
.end method

.method public blacklist isPrimaryUnlogged()Z
    .registers 3

    .line 380
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isPrivateProfile()Z
    .registers 2

    .line 418
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isProfile()Z
    .registers 2

    .line 399
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isQuietModeEnabled()Z
    .registers 3

    .line 433
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist isRestricted()Z
    .registers 2

    .line 395
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupervisingProfile()Z
    .registers 2

    .line 423
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeSupervisingProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o supportsSwitchTo()Z
    .registers 3

    .line 485
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1a

    .line 490
    :cond_c
    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_11

    .line 492
    return v1

    .line 494
    :cond_11
    iget-object v0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0, v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 488
    :cond_1a
    :goto_1a
    return v1
.end method

.method public greylist-max-o supportsSwitchToByUser()Z
    .registers 2

    .line 524
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist toFullString()Ljava/lang/String;
    .registers 4

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 608
    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 609
    iget-boolean v1, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    const-string v2, ""

    if-eqz v1, :cond_42

    const-string v1, " (pre-created)"

    goto :goto_43

    :cond_42
    move-object v1, v2

    :goto_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 610
    iget-boolean v1, p0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v1, :cond_4e

    const-string v1, " (converted)"

    goto :goto_4f

    :cond_4e
    move-object v1, v2

    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    iget-boolean v1, p0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_59

    const-string v2, " (partial)"

    :cond_59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 627
    iget p2, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 629
    iget-object p2, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 630
    iget p2, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget-object p2, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 632
    iget p2, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 634
    iget-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 635
    iget-object p2, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 636
    iget-boolean p2, p0, Landroid/content/pm/UserInfo;->partial:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 637
    iget-boolean p2, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 638
    iget p2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget-boolean p2, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 640
    iget p2, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget p2, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    return-void
.end method
