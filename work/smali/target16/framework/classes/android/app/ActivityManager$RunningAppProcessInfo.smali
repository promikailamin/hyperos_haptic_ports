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

.field public blacklist pkgDeps:[Ljava/lang/String;

.field public whitelist pkgList:[Ljava/lang/String;

.field public whitelist processName:Ljava/lang/String;

.field public greylist processState:I

.field public whitelist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4398
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 4310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4311
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4312
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4313
    const/4 v1, 0x6

    iput v1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4314
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4316
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 4408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4409
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 4410
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4

    .line 4318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4319
    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 4320
    iput p2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4321
    iput-object p3, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 4322
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4323
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4324
    return-void
.end method

.method public static greylist-max-o importanceToProcState(I)I
    .registers 3

    .line 4199
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_7

    .line 4200
    const/16 p0, 0x14

    return p0

    .line 4201
    :cond_7
    const/16 v0, 0x190

    if-lt p0, v0, :cond_e

    .line 4202
    const/16 p0, 0xe

    return p0

    .line 4203
    :cond_e
    const/16 v0, 0x15e

    if-lt p0, v0, :cond_15

    .line 4204
    const/16 p0, 0xd

    return p0

    .line 4205
    :cond_15
    const/16 v0, 0x145

    if-lt p0, v0, :cond_1c

    .line 4206
    const/16 p0, 0xc

    return p0

    .line 4207
    :cond_1c
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_23

    .line 4208
    const/16 p0, 0xa

    return p0

    .line 4209
    :cond_23
    const/16 v0, 0xe6

    if-lt p0, v0, :cond_2a

    .line 4210
    const/16 p0, 0x8

    return p0

    .line 4211
    :cond_2a
    const/16 v0, 0xc8

    const/4 v1, 0x6

    if-lt p0, v0, :cond_30

    .line 4212
    return v1

    .line 4213
    :cond_30
    const/16 v0, 0x96

    if-lt p0, v0, :cond_35

    .line 4214
    return v1

    .line 4215
    :cond_35
    const/16 v0, 0x7d

    if-lt p0, v0, :cond_3b

    .line 4216
    const/4 p0, 0x4

    return p0

    .line 4219
    :cond_3b
    const/4 p0, 0x2

    return p0
.end method

.method public static greylist-max-r procStateToImportance(I)I
    .registers 2

    .line 4141
    const/16 v0, 0x14

    if-ne p0, v0, :cond_7

    .line 4142
    const/16 p0, 0x3e8

    return p0

    .line 4143
    :cond_7
    const/16 v0, 0xe

    if-lt p0, v0, :cond_e

    .line 4144
    const/16 p0, 0x190

    return p0

    .line 4145
    :cond_e
    const/16 v0, 0xd

    if-ne p0, v0, :cond_15

    .line 4146
    const/16 p0, 0x15e

    return p0

    .line 4147
    :cond_15
    const/16 v0, 0xc

    if-lt p0, v0, :cond_1c

    .line 4148
    const/16 p0, 0x145

    return p0

    .line 4149
    :cond_1c
    const/16 v0, 0xa

    if-lt p0, v0, :cond_23

    .line 4150
    const/16 p0, 0x12c

    return p0

    .line 4151
    :cond_23
    const/16 v0, 0x8

    if-lt p0, v0, :cond_2a

    .line 4152
    const/16 p0, 0xe6

    return p0

    .line 4153
    :cond_2a
    const/4 v0, 0x6

    if-lt p0, v0, :cond_30

    .line 4154
    const/16 p0, 0xc8

    return p0

    .line 4155
    :cond_30
    const/4 v0, 0x4

    if-lt p0, v0, :cond_36

    .line 4156
    const/16 p0, 0x7d

    return p0

    .line 4158
    :cond_36
    const/16 p0, 0x64

    return p0
.end method

.method public static greylist-max-o procStateToImportanceForClient(ILandroid/content/Context;)I
    .registers 2

    .line 4171
    nop

    .line 4172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4171
    invoke-static {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o procStateToImportanceForTargetSdk(II)I
    .registers 3

    .line 4181
    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result p0

    .line 4184
    const/16 v0, 0x1a

    if-ge p1, v0, :cond_15

    .line 4185
    sparse-switch p0, :sswitch_data_16

    goto :goto_15

    .line 4191
    :sswitch_c
    const/16 p0, 0xaa

    return p0

    .line 4189
    :sswitch_f
    const/16 p0, 0x96

    return p0

    .line 4187
    :sswitch_12
    const/16 p0, 0x82

    return p0

    .line 4194
    :cond_15
    :goto_15
    return p0

    :sswitch_data_16
    .sparse-switch
        0xe6 -> :sswitch_12
        0x145 -> :sswitch_f
        0x15e -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public blacklist copyTo(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .registers 4

    .line 4364
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4365
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4366
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4367
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4368
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4369
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 4370
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4371
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    iput v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4372
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    iput-boolean v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4373
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    iput-wide v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4374
    return-void
.end method

.method public blacklist copyTo(Landroid/app/RunningAppProcessInfo;)V
    .registers 4

    .line 4378
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 4379
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->pid:I

    .line 4380
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->uid:I

    .line 4381
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    iput-object v0, p1, Landroid/app/RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 4382
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    iput-object v0, p1, Landroid/app/RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 4383
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->flags:I

    .line 4384
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->lastTrimLevel:I

    .line 4385
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->importance:I

    .line 4386
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->lru:I

    .line 4387
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->importanceReasonCode:I

    .line 4388
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->importanceReasonPid:I

    .line 4389
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_3b

    .line 4390
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 4391
    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    iput-object v0, p1, Landroid/app/RunningAppProcessInfo;->importanceReasonComponent:Ljava/lang/String;

    .line 4392
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->importanceReasonImportance:I

    .line 4393
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    iput v0, p1, Landroid/app/RunningAppProcessInfo;->processState:I

    .line 4394
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    iput-boolean v0, p1, Landroid/app/RunningAppProcessInfo;->isFocused:Z

    .line 4395
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    iput-wide v0, p1, Landroid/app/RunningAppProcessInfo;->lastActivityTime:J

    .line 4396
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4327
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 4337
    new-instance v0, Landroid/app/RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/RunningAppProcessInfo;-><init>()V

    .line 4338
    invoke-virtual {v0, p1}, Landroid/app/RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 4339
    iget-object p1, v0, Landroid/app/RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 4340
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->pid:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4341
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->uid:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4342
    iget-object p1, v0, Landroid/app/RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 4343
    iget-object p1, v0, Landroid/app/RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 4344
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->flags:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4345
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->lastTrimLevel:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4346
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->importance:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4347
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->lru:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 4348
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->importanceReasonCode:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4349
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->importanceReasonPid:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4350
    iget-object p1, v0, Landroid/app/RunningAppProcessInfo;->importanceReasonComponent:Ljava/lang/String;

    if-eqz p1, :cond_3f

    .line 4351
    iget-object p1, v0, Landroid/app/RunningAppProcessInfo;->importanceReasonComponent:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_40

    .line 4352
    :cond_3f
    const/4 p1, 0x0

    :goto_40
    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 4353
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->importanceReasonImportance:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    .line 4354
    iget p1, v0, Landroid/app/RunningAppProcessInfo;->processState:I

    iput p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4355
    iget-boolean p1, v0, Landroid/app/RunningAppProcessInfo;->isFocused:Z

    iput-boolean p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4356
    iget-wide v0, v0, Landroid/app/RunningAppProcessInfo;->lastActivityTime:J

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4357
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 4331
    new-instance v0, Landroid/app/RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/RunningAppProcessInfo;-><init>()V

    .line 4332
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->copyTo(Landroid/app/RunningAppProcessInfo;)V

    .line 4333
    invoke-virtual {v0, p1, p2}, Landroid/app/RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4334
    return-void
.end method
