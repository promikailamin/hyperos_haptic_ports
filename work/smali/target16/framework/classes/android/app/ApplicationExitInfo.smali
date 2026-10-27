.class public final Landroid/app/ApplicationExitInfo;
.super Ljava/lang/Object;
.source "ApplicationExitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationExitInfo$SubReason;,
        Landroid/app/ApplicationExitInfo$Reason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REASON_ANR:I = 0x6

.field public static final whitelist REASON_CRASH:I = 0x4

.field public static final whitelist REASON_CRASH_NATIVE:I = 0x5

.field public static final whitelist REASON_DEPENDENCY_DIED:I = 0xc

.field public static final whitelist REASON_EXCESSIVE_RESOURCE_USAGE:I = 0x9

.field public static final whitelist REASON_EXIT_SELF:I = 0x1

.field public static final whitelist REASON_FREEZER:I = 0xe

.field public static final whitelist REASON_INITIALIZATION_FAILURE:I = 0x7

.field public static final whitelist REASON_LOW_MEMORY:I = 0x3

.field public static final whitelist REASON_OTHER:I = 0xd

.field public static final whitelist REASON_PACKAGE_STATE_CHANGE:I = 0xf

.field public static final whitelist REASON_PACKAGE_UPDATED:I = 0x10

.field public static final whitelist REASON_PERMISSION_CHANGE:I = 0x8

.field public static final whitelist REASON_SIGNALED:I = 0x2

.field public static final whitelist REASON_UNKNOWN:I = 0x0

.field public static final whitelist REASON_USER_REQUESTED:I = 0xa

.field public static final whitelist REASON_USER_STOPPED:I = 0xb

.field public static final blacklist SUBREASON_ANR_TYPE_APP_TRIGGERED:I = 0x21

.field public static final blacklist SUBREASON_ANR_TYPE_BIND_APPLICATION:I = 0x22

.field public static final blacklist SUBREASON_ANR_TYPE_BROADCAST_OF_INTENT:I = 0x23

.field public static final blacklist SUBREASON_ANR_TYPE_CONTENT_PROVIDER_NOT_RESPONDING:I = 0x24

.field public static final blacklist SUBREASON_ANR_TYPE_EXECUTING_SERVICE:I = 0x25

.field public static final blacklist SUBREASON_ANR_TYPE_FOREGROUND_SERVICE_TIMEOUT:I = 0x26

.field public static final blacklist SUBREASON_ANR_TYPE_FOREGROUND_SHORT_SERVICE_TIMEOUT:I = 0x27

.field public static final blacklist SUBREASON_ANR_TYPE_GPU_HANG:I = 0x28

.field public static final blacklist SUBREASON_ANR_TYPE_INPUT_DISPATCHING_TIMEOUT:I = 0x29

.field public static final blacklist SUBREASON_ANR_TYPE_INPUT_DISPATCHING_TIMEOUT_NO_FOCUSED_WINDOW:I = 0x2a

.field public static final blacklist SUBREASON_ANR_TYPE_JOB_SERVICE_BIND:I = 0x2b

.field public static final blacklist SUBREASON_ANR_TYPE_JOB_SERVICE_NOTIFICATION_NOT_PROVIDED:I = 0x2c

.field public static final blacklist SUBREASON_ANR_TYPE_JOB_SERVICE_START:I = 0x2d

.field public static final blacklist SUBREASON_ANR_TYPE_JOB_SERVICE_STOP:I = 0x2e

.field public static final blacklist SUBREASON_ANR_TYPE_START_FOREGROUND_SERVICE:I = 0x2f

.field public static final blacklist SUBREASON_ANR_TYPE_SYSTEM_SERVER_WATCHDOG_TIMEOUT:I = 0x30

.field public static final blacklist SUBREASON_CACHED_IDLE_FORCED_APP_STANDBY:I = 0x12

.field public static final blacklist SUBREASON_EXCESSIVE_BINDER_OBJECTS:I = 0x1d

.field public static final blacklist SUBREASON_EXCESSIVE_CPU:I = 0x7

.field public static final blacklist SUBREASON_EXCESSIVE_OUTGOING_BROADCASTS_WHILE_CACHED:I = 0x20

.field public static final blacklist SUBREASON_FORCE_STOP:I = 0x15

.field public static final blacklist SUBREASON_FREEZER_BINDER_ASYNC_FULL:I = 0x1f

.field public static final blacklist SUBREASON_FREEZER_BINDER_IOCTL:I = 0x13

.field public static final blacklist SUBREASON_FREEZER_BINDER_TRANSACTION:I = 0x14

.field public static final blacklist SUBREASON_IMPERCEPTIBLE:I = 0xf

.field public static final blacklist SUBREASON_INVALID_START:I = 0xd

.field public static final blacklist SUBREASON_INVALID_STATE:I = 0xe

.field public static final blacklist SUBREASON_ISOLATED_NOT_NEEDED:I = 0x11

.field public static final blacklist SUBREASON_KILL_ALL_BG_EXCEPT:I = 0xa

.field public static final blacklist SUBREASON_KILL_ALL_FG:I = 0x9

.field public static final blacklist SUBREASON_KILL_BACKGROUND:I = 0x18

.field public static final blacklist SUBREASON_KILL_PID:I = 0xc

.field public static final blacklist SUBREASON_KILL_UID:I = 0xb

.field public static final blacklist SUBREASON_LARGE_CACHED:I = 0x5

.field public static final blacklist SUBREASON_MEMORY_PRESSURE:I = 0x6

.field public static final blacklist SUBREASON_OOM_KILL:I = 0x1e

.field public static final blacklist SUBREASON_PACKAGE_UPDATE:I = 0x19

.field public static final blacklist SUBREASON_REMOVE_LRU:I = 0x10

.field public static final blacklist SUBREASON_REMOVE_TASK:I = 0x16

.field public static final blacklist SUBREASON_SDK_SANDBOX_DIED:I = 0x1b

.field public static final blacklist SUBREASON_SDK_SANDBOX_NOT_NEEDED:I = 0x1c

.field public static final blacklist SUBREASON_STOP_APP:I = 0x17

.field public static final blacklist SUBREASON_SYSTEM_UPDATE_DONE:I = 0x8

.field public static final blacklist SUBREASON_TOO_MANY_CACHED:I = 0x2

.field public static final blacklist SUBREASON_TOO_MANY_EMPTY:I = 0x3

.field public static final blacklist SUBREASON_TRIM_EMPTY:I = 0x4

.field public static final blacklist SUBREASON_UNDELIVERED_BROADCAST:I = 0x1a

.field public static final blacklist SUBREASON_UNKNOWN:I = 0x0

.field public static final blacklist SUBREASON_WAIT_FOR_DEBUGGER:I = 0x1


# instance fields
.field private blacklist mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

.field private blacklist mConnectionGroup:I

.field private blacklist mDefiningUid:I

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mHasForegroundServices:Z

.field private blacklist mImportance:I

.field private blacklist mLoggedInStatsd:Z

.field private blacklist mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

.field private blacklist mPackageList:[Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPackageUid:I

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mPss:J

.field private blacklist mRealUid:I

.field private blacklist mReason:I

.field private blacklist mRss:J

.field private blacklist mState:[B

.field private blacklist mStatus:I

.field private blacklist mSubReason:I

.field private blacklist mTimestamp:J

.field private blacklist mTraceFile:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1395
    new-instance v0, Landroid/app/ApplicationExitInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationExitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ApplicationExitInfo;)V
    .registers 4

    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mPid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    .line 1339
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mRealUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    .line 1340
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    .line 1341
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    .line 1342
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    .line 1343
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    .line 1344
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    .line 1345
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mReason:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    .line 1346
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mStatus:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    .line 1347
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mSubReason:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    .line 1348
    iget v0, p1, Landroid/app/ApplicationExitInfo;->mImportance:I

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    .line 1349
    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mPss:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    .line 1350
    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mRss:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    .line 1351
    iget-wide v0, p1, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    .line 1352
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    .line 1353
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    .line 1354
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    .line 1355
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mState:[B

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    .line 1356
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    .line 1357
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    .line 1358
    iget-object v0, p1, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    .line 1359
    iget-boolean v0, p1, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    iput-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    .line 1360
    iget-boolean p1, p1, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    iput-boolean p1, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    .line 1361
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    .line 1366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    .line 1367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    .line 1368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    .line 1369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    .line 1370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    .line 1371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    .line 1372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    .line 1373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    .line 1374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    .line 1375
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    .line 1376
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    .line 1377
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    .line 1378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    .line 1379
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    .line 1380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 1381
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAppTraceRetriever$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTraceRetriever;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    .line 1383
    :cond_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_91

    .line 1384
    nop

    .line 1385
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1384
    invoke-static {p1}, Landroid/app/IParcelFileDescriptorRetriever$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IParcelFileDescriptorRetriever;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    .line 1387
    :cond_91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ApplicationExitInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1391
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static blacklist reasonCodeToString(I)Ljava/lang/String;
    .registers 1

    .line 1482
    packed-switch p0, :pswitch_data_36

    .line 1517
    const-string p0, "UNKNOWN"

    return-object p0

    .line 1514
    :pswitch_6
    const-string p0, "PACKAGE UPDATED"

    return-object p0

    .line 1512
    :pswitch_9
    const-string p0, "STATE CHANGE"

    return-object p0

    .line 1510
    :pswitch_c
    const-string p0, "FREEZER"

    return-object p0

    .line 1508
    :pswitch_f
    const-string p0, "OTHER KILLS BY SYSTEM"

    return-object p0

    .line 1506
    :pswitch_12
    const-string p0, "DEPENDENCY DIED"

    return-object p0

    .line 1504
    :pswitch_15
    const-string p0, "USER STOPPED"

    return-object p0

    .line 1502
    :pswitch_18
    const-string p0, "USER REQUESTED"

    return-object p0

    .line 1500
    :pswitch_1b
    const-string p0, "EXCESSIVE RESOURCE USAGE"

    return-object p0

    .line 1498
    :pswitch_1e
    const-string p0, "PERMISSION CHANGE"

    return-object p0

    .line 1496
    :pswitch_21
    const-string p0, "INITIALIZATION FAILURE"

    return-object p0

    .line 1494
    :pswitch_24
    const-string p0, "ANR"

    return-object p0

    .line 1492
    :pswitch_27
    const-string p0, "APP CRASH(NATIVE)"

    return-object p0

    .line 1490
    :pswitch_2a
    const-string p0, "APP CRASH(EXCEPTION)"

    return-object p0

    .line 1488
    :pswitch_2d
    const-string p0, "LOW_MEMORY"

    return-object p0

    .line 1486
    :pswitch_30
    const-string p0, "SIGNALED"

    return-object p0

    .line 1484
    :pswitch_33
    const-string p0, "EXIT_SELF"

    return-object p0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist subreasonToString(I)Ljava/lang/String;
    .registers 1

    .line 1524
    packed-switch p0, :pswitch_data_96

    .line 1623
    const-string p0, "UNKNOWN"

    return-object p0

    .line 1620
    :pswitch_6
    const-string p0, "SYSTEM SERVER WATCHDOG TIMEOUT ANR"

    return-object p0

    .line 1618
    :pswitch_9
    const-string p0, "START FOREGROUND SERVICE ANR"

    return-object p0

    .line 1616
    :pswitch_c
    const-string p0, "JOB SERVICE STOP ANR"

    return-object p0

    .line 1614
    :pswitch_f
    const-string p0, "JOB SERVICE START ANR"

    return-object p0

    .line 1612
    :pswitch_12
    const-string p0, "JOB SERVICE NOTIFICATION NOT PROVIDED ANR"

    return-object p0

    .line 1610
    :pswitch_15
    const-string p0, "JOB SERVICE BIND ANR"

    return-object p0

    .line 1608
    :pswitch_18
    const-string p0, "INPUT DISPATCHING TIMEOUT NO FOCUSED WINDOW ANR"

    return-object p0

    .line 1606
    :pswitch_1b
    const-string p0, "INPUT DISPATCHING TIMEOUT ANR"

    return-object p0

    .line 1604
    :pswitch_1e
    const-string p0, "GPU HANG ANR"

    return-object p0

    .line 1602
    :pswitch_21
    const-string p0, "FOREGROUND SHORT SERVICE TIMEOUT ANR"

    return-object p0

    .line 1600
    :pswitch_24
    const-string p0, "FOREGROUND SERVICE TIMEOUT ANR"

    return-object p0

    .line 1598
    :pswitch_27
    const-string p0, "EXECUTING SERVICE ANR"

    return-object p0

    .line 1596
    :pswitch_2a
    const-string p0, "CONTENT PROVIDER NOT RESPONDING ANR"

    return-object p0

    .line 1594
    :pswitch_2d
    const-string p0, "BROADCAST OF INTENT ANR"

    return-object p0

    .line 1592
    :pswitch_30
    const-string p0, "BIND APPLICATION ANR"

    return-object p0

    .line 1590
    :pswitch_33
    const-string p0, "APP TRIGGERED ANR"

    return-object p0

    .line 1588
    :pswitch_36
    const-string p0, "EXCESSIVE_OUTGOING_BROADCASTS_WHILE_CACHED"

    return-object p0

    .line 1586
    :pswitch_39
    const-string p0, "FREEZER BINDER ASYNC FULL"

    return-object p0

    .line 1584
    :pswitch_3c
    const-string p0, "OOM KILL"

    return-object p0

    .line 1582
    :pswitch_3f
    const-string p0, "EXCESSIVE BINDER OBJECTS"

    return-object p0

    .line 1580
    :pswitch_42
    const-string p0, "SDK SANDBOX NOT NEEDED"

    return-object p0

    .line 1578
    :pswitch_45
    const-string p0, "SDK SANDBOX DIED"

    return-object p0

    .line 1576
    :pswitch_48
    const-string p0, "UNDELIVERED BROADCAST"

    return-object p0

    .line 1574
    :pswitch_4b
    const-string p0, "PACKAGE UPDATE"

    return-object p0

    .line 1572
    :pswitch_4e
    const-string p0, "KILL BACKGROUND"

    return-object p0

    .line 1570
    :pswitch_51
    const-string p0, "STOP APP"

    return-object p0

    .line 1568
    :pswitch_54
    const-string p0, "REMOVE TASK"

    return-object p0

    .line 1566
    :pswitch_57
    const-string p0, "FORCE STOP"

    return-object p0

    .line 1564
    :pswitch_5a
    const-string p0, "FREEZER BINDER TRANSACTION"

    return-object p0

    .line 1562
    :pswitch_5d
    const-string p0, "FREEZER BINDER IOCTL"

    return-object p0

    .line 1560
    :pswitch_60
    const-string p0, "CACHED IDLE FORCED APP STANDBY"

    return-object p0

    .line 1558
    :pswitch_63
    const-string p0, "ISOLATED NOT NEEDED"

    return-object p0

    .line 1556
    :pswitch_66
    const-string p0, "REMOVE LRU"

    return-object p0

    .line 1554
    :pswitch_69
    const-string p0, "IMPERCEPTIBLE"

    return-object p0

    .line 1552
    :pswitch_6c
    const-string p0, "INVALID STATE"

    return-object p0

    .line 1550
    :pswitch_6f
    const-string p0, "INVALID START"

    return-object p0

    .line 1548
    :pswitch_72
    const-string p0, "KILL PID"

    return-object p0

    .line 1546
    :pswitch_75
    const-string p0, "KILL UID"

    return-object p0

    .line 1544
    :pswitch_78
    const-string p0, "KILL ALL BG EXCEPT"

    return-object p0

    .line 1542
    :pswitch_7b
    const-string p0, "KILL ALL FG"

    return-object p0

    .line 1540
    :pswitch_7e
    const-string p0, "SYSTEM UPDATE_DONE"

    return-object p0

    .line 1538
    :pswitch_81
    const-string p0, "EXCESSIVE CPU USAGE"

    return-object p0

    .line 1536
    :pswitch_84
    const-string p0, "MEMORY PRESSURE"

    return-object p0

    .line 1534
    :pswitch_87
    const-string p0, "LARGE CACHED"

    return-object p0

    .line 1532
    :pswitch_8a
    const-string p0, "TRIM EMPTY"

    return-object p0

    .line 1530
    :pswitch_8d
    const-string p0, "TOO MANY EMPTY PROCS"

    return-object p0

    .line 1528
    :pswitch_90
    const-string p0, "TOO MANY CACHED PROCS"

    return-object p0

    .line 1526
    :pswitch_93
    const-string p0, "WAIT FOR DEBUGGER"

    return-object p0

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1297
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .registers 11

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1411
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1412
    const-string v2, "ApplicationExitInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1413
    const/16 v1, 0xa

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1414
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v2, 0x20

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1415
    const-string v3, " timestamp="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1416
    const-string p4, " pid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1417
    const-string p4, " realUid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1418
    const-string p4, " packageUid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1419
    const-string p4, " definingUid="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1420
    const-string p4, " user="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1421
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1422
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1423
    const-string p4, " process="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1424
    const-string p4, " reason="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1425
    const-string p4, " ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-static {v3}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, ")"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1426
    const-string v4, " subreason="

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1427
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-static {p4}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1428
    const-string p4, " status="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1429
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1430
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1431
    const-string p3, " importance="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1432
    const-string p3, " pss="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    iget-wide p2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    shl-long/2addr p2, v1

    invoke-static {p2, p3, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 1434
    const-string p2, " rss="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    iget-wide p2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    shl-long/2addr p2, v1

    invoke-static {p2, p3, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 1436
    const-string p2, " description="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    const-string p2, " state="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p2

    if-eqz p2, :cond_12b

    .line 1439
    const-string p2, "empty"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_137

    .line 1441
    :cond_12b
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    :goto_137
    const-string p2, " trace="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1444
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1445
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1446
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1728
    instance-of v0, p1, Landroid/app/ApplicationExitInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 1731
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mPid:I

    if-ne v0, v2, :cond_6b

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mRealUid:I

    if-ne v0, v2, :cond_6b

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    if-ne v0, v2, :cond_6b

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    if-ne v0, v2, :cond_6b

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    if-ne v0, v2, :cond_6b

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mReason:I

    if-ne v0, v2, :cond_6b

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mSubReason:I

    if-ne v0, v2, :cond_6b

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mImportance:I

    if-ne v0, v2, :cond_6b

    iget v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    iget v2, p1, Landroid/app/ApplicationExitInfo;->mStatus:I

    if-ne v0, v2, :cond_6b

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    iget-wide v4, p1, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6b

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    iget-wide v4, p1, Landroid/app/ApplicationExitInfo;->mPss:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6b

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    iget-wide v4, p1, Landroid/app/ApplicationExitInfo;->mRss:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6b

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    .line 1737
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    .line 1738
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6b

    const/4 v1, 0x1

    goto :goto_6c

    :cond_6b
    nop

    .line 1731
    :goto_6c
    return v1

    .line 1729
    :cond_6d
    return v1
.end method

.method public blacklist getConnectionGroup()I
    .registers 2

    .line 1053
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    return v0
.end method

.method public whitelist getDefiningUid()I
    .registers 2

    .line 863
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 3

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    iget v1, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    if-eqz v1, :cond_1c

    .line 940
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    iget v1, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-static {v1}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    :cond_1c
    iget-object v1, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 947
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    :cond_2f
    iget-object v1, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getImportance()I
    .registers 2

    .line 895
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    return v0
.end method

.method public blacklist getPackageList()[Ljava/lang/String;
    .registers 2

    .line 1075
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 1063
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageUid()I
    .registers 2

    .line 851
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    return v0
.end method

.method public whitelist getPid()I
    .registers 2

    .line 832
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    return v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .registers 2

    .line 871
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProcessStateSummary()[B
    .registers 2

    .line 973
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    return-object v0
.end method

.method public whitelist getPss()J
    .registers 3

    .line 906
    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    return-wide v0
.end method

.method public whitelist getRealUid()I
    .registers 2

    .line 843
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    return v0
.end method

.method public whitelist getReason()I
    .registers 2

    .line 879
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    return v0
.end method

.method public whitelist getRss()J
    .registers 3

    .line 917
    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    return-wide v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 887
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    return v0
.end method

.method public blacklist getSubReason()I
    .registers 2

    .line 1040
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    return v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 926
    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist getTraceFile()Ljava/io/File;
    .registers 2

    .line 1028
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getTraceInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-nez v0, :cond_a

    .line 995
    return-object v1

    .line 999
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-eqz v0, :cond_1d

    .line 1000
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-interface {v0}, Landroid/app/IParcelFileDescriptorRetriever;->getPfd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1001
    if-nez v0, :cond_17

    .line 1002
    return-object v1

    .line 1005
    :cond_17
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v2

    .line 1007
    :cond_1d
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-interface {v0, v2, v3, v4}, Landroid/app/IAppTraceRetriever;->getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1009
    if-nez v0, :cond_2c

    .line 1010
    return-object v1

    .line 1012
    :cond_2c
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_36} :catch_37

    return-object v2

    .line 1014
    :catch_37
    move-exception v0

    .line 1015
    return-object v1
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 960
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasForegroundServices()Z
    .registers 2

    .line 1283
    iget-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1743
    iget v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    .line 1744
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    add-int/2addr v0, v1

    .line 1745
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    add-int/2addr v0, v1

    .line 1746
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    add-int/2addr v0, v1

    .line 1747
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    add-int/2addr v0, v1

    .line 1748
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    add-int/2addr v0, v1

    .line 1749
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    add-int/2addr v0, v1

    .line 1750
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    add-int/2addr v0, v1

    .line 1751
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    add-int/2addr v0, v1

    .line 1752
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 1753
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 1754
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1755
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1756
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1757
    return v0
.end method

.method public blacklist isLoggedInStatsd()Z
    .registers 2

    .line 1265
    iget-boolean v0, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    return v0
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 1667
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    .line 1668
    :goto_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f0

    .line 1669
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_f4

    goto/16 :goto_ee

    .line 1716
    :pswitch_14
    const-wide v0, 0x10900000010L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1717
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ee

    .line 1718
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    goto/16 :goto_ee

    .line 1713
    :pswitch_2c
    const-wide v0, 0x10c0000000fL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    .line 1714
    goto/16 :goto_ee

    .line 1710
    :pswitch_39
    const-wide v0, 0x1090000000eL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    .line 1711
    goto/16 :goto_ee

    .line 1707
    :pswitch_4a
    const-wide v0, 0x1030000000dL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    .line 1708
    goto/16 :goto_ee

    .line 1704
    :pswitch_57
    const-wide v0, 0x1030000000cL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    .line 1705
    goto/16 :goto_ee

    .line 1701
    :pswitch_64
    const-wide v0, 0x1030000000bL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    .line 1702
    goto/16 :goto_ee

    .line 1698
    :pswitch_71
    const-wide v0, 0x10e0000000aL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    .line 1699
    goto/16 :goto_ee

    .line 1695
    :pswitch_7e
    const-wide v0, 0x10500000009L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    .line 1696
    goto :goto_ee

    .line 1692
    :pswitch_8a
    const-wide v0, 0x10e00000008L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    .line 1693
    goto :goto_ee

    .line 1689
    :pswitch_96
    const-wide v0, 0x10e00000007L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    .line 1690
    goto :goto_ee

    .line 1686
    :pswitch_a2
    const-wide v0, 0x10500000006L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    .line 1687
    goto :goto_ee

    .line 1683
    :pswitch_ae
    const-wide v0, 0x10900000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    .line 1684
    goto :goto_ee

    .line 1680
    :pswitch_be
    const-wide v0, 0x10500000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    .line 1681
    goto :goto_ee

    .line 1677
    :pswitch_ca
    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    .line 1678
    goto :goto_ee

    .line 1674
    :pswitch_d6
    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    .line 1675
    goto :goto_ee

    .line 1671
    :pswitch_e2
    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    .line 1672
    nop

    .line 1720
    :cond_ee
    :goto_ee
    goto/16 :goto_4

    .line 1723
    :cond_f0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1724
    return-void

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_d6
        :pswitch_ca
        :pswitch_be
        :pswitch_ae
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_71
        :pswitch_64
        :pswitch_57
        :pswitch_4a
        :pswitch_39
        :pswitch_2c
        :pswitch_14
    .end packed-switch
.end method

.method public blacklist setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V
    .registers 2

    .line 1246
    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    .line 1247
    return-void
.end method

.method public blacklist setConnectionGroup(I)V
    .registers 2

    .line 1201
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    .line 1202
    return-void
.end method

.method public blacklist setDefiningUid(I)V
    .registers 2

    .line 1111
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    .line 1112
    return-void
.end method

.method public blacklist setDescription(Ljava/lang/String;)V
    .registers 2

    .line 1183
    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    .line 1184
    return-void
.end method

.method public blacklist setHasForegroundServices(Z)V
    .registers 2

    .line 1292
    iput-boolean p1, p0, Landroid/app/ApplicationExitInfo;->mHasForegroundServices:Z

    .line 1293
    return-void
.end method

.method public blacklist setImportance(I)V
    .registers 2

    .line 1147
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    .line 1148
    return-void
.end method

.method public blacklist setLoggedInStatsd(Z)V
    .registers 2

    .line 1274
    iput-boolean p1, p0, Landroid/app/ApplicationExitInfo;->mLoggedInStatsd:Z

    .line 1275
    return-void
.end method

.method public blacklist setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V
    .registers 2

    .line 1256
    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    .line 1257
    return-void
.end method

.method public blacklist setPackageList([Ljava/lang/String;)V
    .registers 2

    .line 1219
    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mPackageList:[Ljava/lang/String;

    .line 1220
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 1210
    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    .line 1211
    return-void
.end method

.method public blacklist setPackageUid(I)V
    .registers 2

    .line 1102
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    .line 1103
    return-void
.end method

.method public blacklist setPid(I)V
    .registers 2

    .line 1084
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    .line 1085
    return-void
.end method

.method public blacklist setProcessName(Ljava/lang/String;)V
    .registers 2

    .line 1120
    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    .line 1121
    return-void
.end method

.method public blacklist setProcessStateSummary([B)V
    .registers 2

    .line 1228
    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    .line 1229
    return-void
.end method

.method public blacklist setPss(J)V
    .registers 3

    .line 1156
    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    .line 1157
    return-void
.end method

.method public blacklist setRealUid(I)V
    .registers 2

    .line 1093
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    .line 1094
    return-void
.end method

.method public blacklist setReason(I)V
    .registers 2

    .line 1129
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    .line 1130
    return-void
.end method

.method public blacklist setRss(J)V
    .registers 3

    .line 1165
    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    .line 1166
    return-void
.end method

.method public blacklist setStatus(I)V
    .registers 2

    .line 1138
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    .line 1139
    return-void
.end method

.method public blacklist setSubReason(I)V
    .registers 2

    .line 1192
    iput p1, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    .line 1193
    return-void
.end method

.method public blacklist setTimestamp(J)V
    .registers 3

    .line 1174
    iput-wide p1, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    .line 1175
    return-void
.end method

.method public blacklist setTraceFile(Ljava/io/File;)V
    .registers 2

    .line 1237
    iput-object p1, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    .line 1238
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1451
    const-string v1, "ApplicationExitInfo(timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v1}, Landroid/icu/text/SimpleDateFormat;-><init>()V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1454
    const-string v1, " realUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1455
    const-string v1, " packageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1456
    const-string v1, " definingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1457
    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1458
    const-string v1, " process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    .line 1460
    invoke-static {v3}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    const-string v1, " subreason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    .line 1462
    invoke-static {v2}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1464
    const-string v1, " importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1465
    const-string v1, " pss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    const/16 v3, 0xa

    shl-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 1466
    const-string v1, " rss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    shl-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 1467
    const-string v1, " description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    iget-object v1, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 1470
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 1472
    :cond_ed
    iget-object v1, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    :goto_f9
    const-string v1, " trace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1302
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1307
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1308
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    iget p2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1314
    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1315
    iget-wide v0, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1316
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1317
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1318
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_63

    .line 1319
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mAppTraceRetriever:Landroid/app/IAppTraceRetriever;

    invoke-interface {p2}, Landroid/app/IAppTraceRetriever;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_66

    .line 1322
    :cond_63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    :goto_66
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    if-eqz p2, :cond_77

    .line 1325
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    iget-object p2, p0, Landroid/app/ApplicationExitInfo;->mNativeTombstoneRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-interface {p2}, Landroid/app/IParcelFileDescriptorRetriever;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_7a

    .line 1328
    :cond_77
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    :goto_7a
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 1636
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1637
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1638
    const-wide v0, 0x10500000002L

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mRealUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1639
    const-wide v0, 0x10500000003L

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mPackageUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1640
    const-wide v0, 0x10500000004L

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mDefiningUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1641
    const-wide v0, 0x10900000005L

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1642
    const-wide v0, 0x10500000006L

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mConnectionGroup:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1643
    const-wide v0, 0x10e00000007L

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mReason:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1644
    const-wide v0, 0x10e00000008L

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mSubReason:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1645
    const-wide v0, 0x10500000009L

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1646
    const-wide v0, 0x10e0000000aL

    iget v2, p0, Landroid/app/ApplicationExitInfo;->mImportance:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1647
    const-wide v0, 0x1030000000bL

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mPss:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1648
    const-wide v0, 0x1030000000cL

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mRss:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1649
    const-wide v0, 0x1030000000dL

    iget-wide v2, p0, Landroid/app/ApplicationExitInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1650
    const-wide v0, 0x1090000000eL

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1651
    const-wide v0, 0x10c0000000fL

    iget-object v2, p0, Landroid/app/ApplicationExitInfo;->mState:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 1652
    nop

    .line 1653
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    if-nez v0, :cond_a1

    const/4 v0, 0x0

    goto :goto_a7

    :cond_a1
    iget-object v0, p0, Landroid/app/ApplicationExitInfo;->mTraceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1652
    :goto_a7
    const-wide v1, 0x10900000010L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1654
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1655
    return-void
.end method
