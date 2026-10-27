.class public Landroid/app/ActivityManager$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningAppProcessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RunningAppProcessInfo$Importance;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FLAG_CANT_SAVE_STATE:I = 0x1

.field public static final greylist-max-r FLAG_HAS_ACTIVITIES:I = 0x4

.field public static final greylist-max-r FLAG_PERSISTENT:I = 0x2

.field public static final whitelist IMPORTANCE_BACKGROUND:I = 0x190

.field public static final whitelist IMPORTANCE_CACHED:I = 0x190

.field public static final whitelist IMPORTANCE_CANT_SAVE_STATE:I = 0x15e

.field public static final greylist-max-r IMPORTANCE_CANT_SAVE_STATE_PRE_26:I = 0xaa

.field public static final whitelist IMPORTANCE_EMPTY:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IMPORTANCE_FOREGROUND:I = 0x64

.field public static final whitelist IMPORTANCE_FOREGROUND_SERVICE:I = 0x7d

.field public static final whitelist IMPORTANCE_GONE:I = 0x3e8

.field public static final whitelist IMPORTANCE_PERCEPTIBLE:I = 0xe6

.field public static final whitelist IMPORTANCE_PERCEPTIBLE_PRE_26:I = 0x82

.field public static final whitelist IMPORTANCE_SERVICE:I = 0x12c

.field public static final whitelist IMPORTANCE_TOP_SLEEPING:I = 0x145

.field public static final whitelist IMPORTANCE_TOP_SLEEPING_PRE_28:I = 0x96
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IMPORTANCE_VISIBLE:I = 0xc8

.field public static final whitelist REASON_PROVIDER_IN_USE:I = 0x1

.field public static final whitelist REASON_SERVICE_IN_USE:I = 0x2

.field public static final whitelist REASON_UNKNOWN:I


# instance fields
.field public greylist flags:I

.field public whitelist importance:I

.field public whitelist importanceReasonCode:I

.field public whitelist importanceReasonComponent:Landroid/content/ComponentName;

.field public greylist-max-o importanceReasonImportance:I

.field public whitelist importanceReasonPid:I

.field public blacklist isFocused:Z

.field public blacklist lastActivityTime:J

.field public whitelist lastTrimLevel:I

.field public whitelist lru:I

.field public whitelist pid:I

.field public whitelist pkgList:[Ljava/lang/String;

.field public whitelist processName:Ljava/lang/String;

.field public greylist processState:I

.field public whitelist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3551
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 3495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3496
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3497
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3498
    const/4 v1, 0x6

    iput v1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3499
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3500
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3501
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3562
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3563
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RunningAppProcessInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 6
    .param p1, "pProcessName"    # Ljava/lang/String;
    .param p2, "pPid"    # I
    .param p3, "pArr"    # [Ljava/lang/String;

    .line 3503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3504
    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 3505
    iput p2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3506
    iput-object p3, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 3507
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3508
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3509
    return-void
.end method

.method public static greylist-max-o importanceToProcState(I)I
    .registers 3
    .param p0, "importance"    # I

    .line 3386
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_7

    .line 3387
    const/16 v0, 0x14

    return v0

    .line 3388
    :cond_7
    const/16 v0, 0x190

    if-lt p0, v0, :cond_e

    .line 3389
    const/16 v0, 0xe

    return v0

    .line 3390
    :cond_e
    const/16 v0, 0x15e

    if-lt p0, v0, :cond_15

    .line 3391
    const/16 v0, 0xd

    return v0

    .line 3392
    :cond_15
    const/16 v0, 0x145

    if-lt p0, v0, :cond_1c

    .line 3393
    const/16 v0, 0xc

    return v0

    .line 3394
    :cond_1c
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_23

    .line 3395
    const/16 v0, 0xa

    return v0

    .line 3396
    :cond_23
    const/16 v0, 0xe6

    if-lt p0, v0, :cond_2a

    .line 3397
    const/16 v0, 0x8

    return v0

    .line 3398
    :cond_2a
    const/16 v0, 0xc8

    const/4 v1, 0x6

    if-lt p0, v0, :cond_30

    .line 3399
    return v1

    .line 3400
    :cond_30
    const/16 v0, 0x96

    if-lt p0, v0, :cond_35

    .line 3401
    return v1

    .line 3402
    :cond_35
    const/16 v0, 0x7d

    if-lt p0, v0, :cond_3b

    .line 3403
    const/4 v0, 0x4

    return v0

    .line 3406
    :cond_3b
    const/4 v0, 0x2

    return v0
.end method

.method public static greylist-max-r procStateToImportance(I)I
    .registers 2
    .param p0, "procState"    # I

    .line 3328
    const/16 v0, 0x14

    if-ne p0, v0, :cond_7

    .line 3329
    const/16 v0, 0x3e8

    return v0

    .line 3330
    :cond_7
    const/16 v0, 0xe

    if-lt p0, v0, :cond_e

    .line 3331
    const/16 v0, 0x190

    return v0

    .line 3332
    :cond_e
    const/16 v0, 0xd

    if-ne p0, v0, :cond_15

    .line 3333
    const/16 v0, 0x15e

    return v0

    .line 3334
    :cond_15
    const/16 v0, 0xc

    if-lt p0, v0, :cond_1c

    .line 3335
    const/16 v0, 0x145

    return v0

    .line 3336
    :cond_1c
    const/16 v0, 0xa

    if-lt p0, v0, :cond_23

    .line 3337
    const/16 v0, 0x12c

    return v0

    .line 3338
    :cond_23
    const/16 v0, 0x8

    if-lt p0, v0, :cond_2a

    .line 3339
    const/16 v0, 0xe6

    return v0

    .line 3340
    :cond_2a
    const/4 v0, 0x6

    if-lt p0, v0, :cond_30

    .line 3341
    const/16 v0, 0xc8

    return v0

    .line 3342
    :cond_30
    const/4 v0, 0x4

    if-lt p0, v0, :cond_36

    .line 3343
    const/16 v0, 0x7d

    return v0

    .line 3345
    :cond_36
    const/16 v0, 0x64

    return v0
.end method

.method public static greylist-max-o procStateToImportanceForClient(ILandroid/content/Context;)I
    .registers 3
    .param p0, "procState"    # I
    .param p1, "clientContext"    # Landroid/content/Context;

    .line 3358
    nop

    .line 3359
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3358
    invoke-static {p0, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o procStateToImportanceForTargetSdk(II)I
    .registers 4
    .param p0, "procState"    # I
    .param p1, "targetSdkVersion"    # I

    .line 3368
    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    .line 3371
    .local v0, "importance":I
    const/16 v1, 0x1a

    if-ge p1, v1, :cond_15

    .line 3372
    sparse-switch v0, :sswitch_data_16

    goto :goto_15

    .line 3378
    :sswitch_c
    const/16 v1, 0xaa

    return v1

    .line 3376
    :sswitch_f
    const/16 v1, 0x96

    return v1

    .line 3374
    :sswitch_12
    const/16 v1, 0x82

    return v1

    .line 3381
    :cond_15
    :goto_15
    return v0

    :sswitch_data_16
    .sparse-switch
        0xe6 -> :sswitch_12
        0x145 -> :sswitch_f
        0x15e -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3512
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3534
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 3535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 3537
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 3538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 3540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 3542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3544
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 3545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    .line 3546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    :goto_57
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3548
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3549
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3516
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3517
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3518
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3519
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3520
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3522
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3523
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3524
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3525
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3526
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3527
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3528
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3529
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3530
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3531
    return-void
.end method
