.class public Lmiui/process/ProcessConfig;
.super Ljava/lang/Object;
.source "ProcessConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/process/ProcessConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INVALID_ADJ:I = -0x2710

.field private static final blacklist INVALID_TASK_ID:I = -0x1

.field private static final blacklist INVALID_UID:I = -0x1

.field private static final blacklist INVALID_USER_ID:I = -0x2710

.field public static final blacklist KILL_LEVEL_FORCE_STOP:I = 0x68

.field public static final blacklist KILL_LEVEL_KILL:I = 0x67

.field public static final blacklist KILL_LEVEL_KILL_BACKGROUND:I = 0x66

.field public static final blacklist KILL_LEVEL_TRIM_MEMORY:I = 0x65

.field public static final blacklist KILL_LEVEL_UNKNOWN:I = 0x64

.field public static final blacklist POLICY_AUTO_IDLE_KILL:I = 0xd

.field public static final blacklist POLICY_AUTO_LOCK_OFF_CLEAN:I = 0xf

.field public static final blacklist POLICY_AUTO_LOCK_OFF_CLEAN_BY_PRIORITY:I = 0x11

.field public static final blacklist POLICY_AUTO_POWER_KILL:I = 0xb

.field public static final blacklist POLICY_AUTO_SLEEP_CLEAN:I = 0xe

.field public static final blacklist POLICY_AUTO_SYSTEM_ABNORMAL_CLEAN:I = 0x10

.field public static final blacklist POLICY_AUTO_THERMAL_KILL:I = 0xc

.field public static final blacklist POLICY_AUTO_THERMAL_KILL_ALL_LEVEL_1:I = 0x13

.field public static final blacklist POLICY_AUTO_THERMAL_KILL_ALL_LEVEL_2:I = 0x14

.field public static final blacklist POLICY_DISPLAY_SIZE_CHANGED_KILL:I = 0x12

.field public static final blacklist POLICY_FORCE_CLEAN:I = 0x2

.field public static final blacklist POLICY_GAME_CLEAN:I = 0x4

.field public static final blacklist POLICY_GARBAGE_CLEAN:I = 0x6

.field public static final blacklist POLICY_LOCK_SCREEN_CLEAN:I = 0x3

.field public static final blacklist POLICY_ONE_KEY_CLEAN:I = 0x1

.field public static final blacklist POLICY_OPTIMIZATION_CLEAN:I = 0x5

.field public static final blacklist POLICY_SCREEN_OFF_CPU_CHECK_KILL:I = 0x16

.field public static final blacklist POLICY_SWIPE_UP_CLEAN:I = 0x7

.field public static final blacklist POLICY_SYSTEM_CLEAN:I = 0x15

.field public static final blacklist POLICY_USER_DEFINED:I = 0xa


# instance fields
.field private blacklist mKillingPackage:Ljava/lang/String;

.field private blacklist mKillingPackageMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPolicy:I

.field private blacklist mPriority:I

.field private blacklist mReason:Ljava/lang/String;

.field private blacklist mRemoveTaskNeeded:Z

.field private blacklist mRemovingTaskIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTaskId:I

.field private blacklist mUid:I

.field private blacklist mUserId:I

.field private blacklist mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWhiteListTaskId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mkillingClockTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 375
    new-instance v0, Lmiui/process/ProcessConfig$1;

    invoke-direct {v0}, Lmiui/process/ProcessConfig$1;-><init>()V

    sput-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "policy"    # I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, -0x2710

    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 91
    iput v1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 94
    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 124
    iput p1, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/util/ArrayMap;)V
    .registers 4
    .param p1, "policy"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 172
    .local p3, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 173
    iput p2, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 174
    iput-object p3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 175
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/util/ArrayMap;Ljava/lang/String;)V
    .registers 5
    .param p1, "policy"    # I
    .param p2, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    .local p3, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lmiui/process/ProcessConfig;-><init>(IILandroid/util/ArrayMap;)V

    .line 193
    iput-object p4, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 4
    .param p1, "policy"    # I
    .param p2, "killingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 138
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 139
    iput-object p2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 140
    iput p3, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 141
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;II)V
    .registers 5
    .param p1, "policy"    # I
    .param p2, "killingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "taskId"    # I

    .line 152
    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(I)V

    .line 153
    iput-object p2, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 154
    iput p3, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 155
    iput p4, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 156
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, -0x2710

    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 91
    iput v1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 94
    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 388
    invoke-virtual {p0, p1}, Lmiui/process/ProcessConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 389
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/process/ProcessConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/process/ProcessConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getKillingPackage()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKillingPackageMaps()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getPolicy()I
    .registers 2

    .line 197
    iget v0, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    return v0
.end method

.method public blacklist getPriority()I
    .registers 2

    .line 229
    iget v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    return v0
.end method

.method public blacklist getReason()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRemovingTaskIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 225
    iget v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 221
    iget v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 217
    iget v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    return v0
.end method

.method public blacklist getWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getWhiteListTaskId()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteListTaskId:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isPriorityInvalid()Z
    .registers 3

    .line 404
    iget v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isRemoveTaskNeeded()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    return v0
.end method

.method public blacklist isTaskIdInvalid()Z
    .registers 3

    .line 396
    iget v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isUidInvalid()Z
    .registers 3

    .line 400
    iget v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isUserIdInvalid()Z
    .registers 3

    .line 392
    iget v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-boolean v0, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    .line 354
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    .line 357
    :cond_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    .line 358
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteListTaskId:Ljava/util/List;

    .line 361
    :cond_59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 362
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    .line 365
    :cond_6b
    :goto_6b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_94

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 367
    .local v0, "level":Ljava/lang/Integer;
    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 368
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    if-nez v2, :cond_8e

    .line 369
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 371
    :cond_8e
    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_6b

    .line 373
    :cond_94
    return-void
.end method

.method public blacklist setKillingClockTime(J)V
    .registers 3
    .param p1, "killingClockTime"    # J

    .line 289
    iput-wide p1, p0, Lmiui/process/ProcessConfig;->mkillingClockTime:J

    .line 290
    return-void
.end method

.method public blacklist setKillingPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "killingPackage"    # Ljava/lang/String;

    .line 257
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public blacklist setKillingPackageMaps(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 261
    .local p1, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    .line 262
    return-void
.end method

.method public blacklist setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 281
    iput p1, p0, Lmiui/process/ProcessConfig;->mPriority:I

    .line 282
    return-void
.end method

.method public blacklist setReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 265
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public blacklist setRemoveTaskNeeded(Z)V
    .registers 2
    .param p1, "removeTaskNeeded"    # Z

    .line 285
    iput-boolean p1, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    .line 286
    return-void
.end method

.method public blacklist setRemovingTaskIdList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "taskIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    .line 238
    return-void
.end method

.method public blacklist setTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 277
    iput p1, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    .line 278
    return-void
.end method

.method public blacklist setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 273
    iput p1, p0, Lmiui/process/ProcessConfig;->mUid:I

    .line 274
    return-void
.end method

.method public blacklist setUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 269
    iput p1, p0, Lmiui/process/ProcessConfig;->mUserId:I

    .line 270
    return-void
.end method

.method public blacklist setWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    .line 250
    return-void
.end method

.method public blacklist setWhiteListTaskId(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "whiteListTaskId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/process/ProcessConfig;->mWhiteListTaskId:Ljava/util/List;

    .line 254
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 409
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessConfig{mPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mReason=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mKillingPackage=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPriority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/process/ProcessConfig;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWhiteList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWhiteListTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mWhiteListTaskId:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mKillingPackageMaps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRemoveTaskNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRemovingTaskIdList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mkillingClockTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmiui/process/ProcessConfig;->mkillingClockTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 423
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 299
    iget v0, p0, Lmiui/process/ProcessConfig;->mPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget v0, p0, Lmiui/process/ProcessConfig;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lmiui/process/ProcessConfig;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lmiui/process/ProcessConfig;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Lmiui/process/ProcessConfig;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-boolean v0, p0, Lmiui/process/ProcessConfig;->mRemoveTaskNeeded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 309
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_3a

    .line 312
    :cond_37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    :goto_3a
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteListTaskId:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 316
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mWhiteListTaskId:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_4a

    .line 319
    :cond_47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    :goto_4a
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    if-eqz v0, :cond_57

    .line 323
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mRemovingTaskIdList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_5a

    .line 326
    :cond_57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    :goto_5a
    iget-object v0, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_89

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5f
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_89

    .line 331
    iget-object v3, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 332
    .local v3, "level":Ljava/lang/Integer;
    iget-object v4, p0, Lmiui/process/ProcessConfig;->mKillingPackageMaps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 333
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_86

    .line 334
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 330
    .end local v3    # "level":Ljava/lang/Integer;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 340
    .end local v0    # "i":I
    :cond_89
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    return-void
.end method
