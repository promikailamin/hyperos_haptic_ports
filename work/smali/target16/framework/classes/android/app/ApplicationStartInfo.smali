.class public final Landroid/app/ApplicationStartInfo;
.super Ljava/lang/Object;
.source "ApplicationStartInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationStartInfo$StartComponent;,
        Landroid/app/ApplicationStartInfo$LaunchMode;,
        Landroid/app/ApplicationStartInfo$StartType;,
        Landroid/app/ApplicationStartInfo$StartReason;,
        Landroid/app/ApplicationStartInfo$StartupState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LAUNCH_MODE_SINGLE_INSTANCE:I = 0x2

.field public static final whitelist LAUNCH_MODE_SINGLE_INSTANCE_PER_TASK:I = 0x4

.field public static final whitelist LAUNCH_MODE_SINGLE_TASK:I = 0x3

.field public static final whitelist LAUNCH_MODE_SINGLE_TOP:I = 0x1

.field public static final whitelist LAUNCH_MODE_STANDARD:I = 0x0

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_INTENT:Ljava/lang/String; = "intent"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TIMESTAMPS:Ljava/lang/String; = "timestamps"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TS:Ljava/lang/String; = "ts"

.field public static final whitelist STARTUP_STATE_ERROR:I = 0x1

.field public static final whitelist STARTUP_STATE_FIRST_FRAME_DRAWN:I = 0x2

.field public static final whitelist STARTUP_STATE_STARTED:I = 0x0

.field public static final whitelist START_COMPONENT_ACTIVITY:I = 0x1

.field public static final whitelist START_COMPONENT_BROADCAST:I = 0x2

.field public static final whitelist START_COMPONENT_CONTENT_PROVIDER:I = 0x3

.field public static final whitelist START_COMPONENT_OTHER:I = 0x5

.field public static final whitelist START_COMPONENT_SERVICE:I = 0x4

.field public static final whitelist START_REASON_ALARM:I = 0x0

.field public static final whitelist START_REASON_BACKUP:I = 0x1

.field public static final whitelist START_REASON_BOOT_COMPLETE:I = 0x2

.field public static final whitelist START_REASON_BROADCAST:I = 0x3

.field public static final whitelist START_REASON_CONTENT_PROVIDER:I = 0x4

.field public static final whitelist START_REASON_JOB:I = 0x5

.field public static final whitelist START_REASON_LAUNCHER:I = 0x6

.field public static final whitelist START_REASON_LAUNCHER_RECENTS:I = 0x7

.field public static final whitelist START_REASON_OTHER:I = 0x8

.field public static final whitelist START_REASON_PUSH:I = 0x9

.field public static final whitelist START_REASON_SERVICE:I = 0xa

.field public static final whitelist START_REASON_START_ACTIVITY:I = 0xb

.field public static final whitelist START_TIMESTAMP_APPLICATION_ONCREATE:I = 0x2

.field public static final whitelist START_TIMESTAMP_BIND_APPLICATION:I = 0x3

.field public static final whitelist START_TIMESTAMP_FIRST_FRAME:I = 0x4

.field public static final whitelist START_TIMESTAMP_FORK:I = 0x1

.field public static final whitelist START_TIMESTAMP_FULLY_DRAWN:I = 0x5

.field public static final whitelist START_TIMESTAMP_INITIAL_RENDERTHREAD_FRAME:I = 0x6

.field public static final whitelist START_TIMESTAMP_LAUNCH:I = 0x0

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_DEVELOPER:I = 0x1e

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_DEVELOPER_START:I = 0x15

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_SYSTEM:I = 0x14

.field public static final whitelist START_TIMESTAMP_SURFACEFLINGER_COMPOSITION_COMPLETE:I = 0x7

.field public static final whitelist START_TYPE_COLD:I = 0x1

.field public static final whitelist START_TYPE_HOT:I = 0x3

.field public static final whitelist START_TYPE_UNSET:I = 0x0

.field public static final whitelist START_TYPE_WARM:I = 0x2


# instance fields
.field private blacklist mDefiningUid:I

.field private blacklist mLaunchMode:I

.field private blacklist mMonotonicCreationTimeMs:J

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPackageUid:I

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mRealUid:I

.field private blacklist mReason:I

.field private blacklist mStartComponent:I

.field private blacklist mStartIntent:Landroid/content/Intent;

.field private blacklist mStartType:I

.field private blacklist mStartupState:I

.field private blacklist mStartupTimestampsNs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWasForceStopped:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 820
    new-instance v0, Landroid/app/ApplicationStartInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationStartInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationStartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 3

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-wide p1, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 767
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ApplicationStartInfo;)V
    .registers 4

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    .line 772
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mPid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    .line 773
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    .line 774
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    .line 775
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    .line 776
    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    .line 777
    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 778
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mReason:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    .line 779
    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 780
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartType:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 781
    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    .line 782
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    .line 783
    iget-boolean v0, p1, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iput-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    .line 784
    iget-wide v0, p1, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    iput-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 785
    iget p1, p1, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    .line 786
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 801
    const/4 v1, 0x0

    :goto_40
    if-ge v1, v0, :cond_50

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 804
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 801
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 806
    :cond_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 807
    const-class v0, Landroid/content/Intent;

    .line 808
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    .line 813
    return-void
.end method

.method private static blacklist intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 817
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private static blacklist reasonToString(I)Ljava/lang/String;
    .registers 1

    .line 1042
    packed-switch p0, :pswitch_data_2a

    .line 1055
    const-string p0, ""

    goto :goto_29

    .line 1054
    :pswitch_6
    const-string p0, "START ACTIVITY"

    goto :goto_29

    .line 1053
    :pswitch_9
    const-string p0, "SERVICE"

    goto :goto_29

    .line 1052
    :pswitch_c
    const-string p0, "PUSH"

    goto :goto_29

    .line 1051
    :pswitch_f
    const-string p0, "OTHER"

    goto :goto_29

    .line 1050
    :pswitch_12
    const-string p0, "LAUNCHER RECENTS"

    goto :goto_29

    .line 1049
    :pswitch_15
    const-string p0, "LAUNCHER"

    goto :goto_29

    .line 1048
    :pswitch_18
    const-string p0, "JOB"

    goto :goto_29

    .line 1047
    :pswitch_1b
    const-string p0, "CONTENT PROVIDER"

    goto :goto_29

    .line 1046
    :pswitch_1e
    const-string p0, "BROADCAST"

    goto :goto_29

    .line 1045
    :pswitch_21
    const-string p0, "BOOT COMPLETE"

    goto :goto_29

    .line 1044
    :pswitch_24
    const-string p0, "BACKUP"

    goto :goto_29

    .line 1043
    :pswitch_27
    const-string p0, "ALARM"

    .line 1042
    :goto_29
    return-object p0

    :pswitch_data_2a
    .packed-switch 0x0
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

.method private static blacklist startComponentToString(I)Ljava/lang/String;
    .registers 1

    .line 1071
    packed-switch p0, :pswitch_data_16

    .line 1077
    const-string p0, ""

    goto :goto_14

    .line 1076
    :pswitch_6
    const-string p0, "OTHER"

    goto :goto_14

    .line 1075
    :pswitch_9
    const-string p0, "SERVICE"

    goto :goto_14

    .line 1074
    :pswitch_c
    const-string p0, "CONTENT PROVIDER"

    goto :goto_14

    .line 1073
    :pswitch_f
    const-string p0, "BROADCAST"

    goto :goto_14

    .line 1072
    :pswitch_12
    const-string p0, "ACTIVITY"

    .line 1071
    :goto_14
    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist startTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 1060
    packed-switch p0, :pswitch_data_12

    .line 1065
    const-string p0, ""

    goto :goto_11

    .line 1064
    :pswitch_6
    const-string p0, "HOT"

    goto :goto_11

    .line 1063
    :pswitch_9
    const-string p0, "WARM"

    goto :goto_11

    .line 1062
    :pswitch_c
    const-string p0, "COLD"

    goto :goto_11

    .line 1061
    :pswitch_f
    const-string p0, "UNSET"

    .line 1060
    :goto_11
    return-object p0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist timestampsEquals(Landroid/app/ApplicationStartInfo;)Z
    .registers 3

    .line 1124
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_a

    .line 1125
    const/4 p1, 0x1

    return p1

    .line 1127
    :cond_a
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_13

    goto :goto_1c

    .line 1130
    :cond_13
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1128
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public blacklist addStartupTimestamp(IJ)V
    .registers 5

    .line 455
    if-ltz p1, :cond_20

    const/16 v0, 0x1e

    if-le p1, v0, :cond_7

    goto :goto_20

    .line 458
    :cond_7
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 459
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 461
    :cond_12
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void

    .line 456
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .registers 7

    .line 1003
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1005
    const-string v0, "ApplicationStartInfo "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x3a

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1006
    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1007
    const-string v0, " monotonicCreationTimeMs="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1008
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1009
    const-string v0, " pid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1010
    const-string v0, " realUid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1011
    const-string v0, " packageUid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1012
    const-string v0, " definingUid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1013
    const-string v0, " user="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1014
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1015
    const-string v0, " package="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1016
    const-string v0, " process="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1017
    const-string v0, " startupState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1018
    const-string v0, " reason="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1019
    const-string v0, " startType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->startTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1020
    const-string v0, " launchMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1021
    const-string v0, " wasForceStopped="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1022
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->appStartInfoComponent()Z

    move-result p2

    if-eqz p2, :cond_e3

    .line 1023
    const-string p2, " startComponent="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->startComponentToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_e3
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1026
    iget-object p2, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-eqz p2, :cond_fd

    .line 1027
    const-string p2, " intent="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1028
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1030
    :cond_fd
    iget-object p2, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz p2, :cond_13c

    iget-object p2, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-lez p2, :cond_13c

    .line 1031
    const-string p2, " timestamps: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const/4 p2, 0x0

    :goto_10f
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p2, v0, :cond_139

    .line 1033
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 1034
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1033
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1034
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    add-int/lit8 p2, p2, 0x1

    goto :goto_10f

    .line 1036
    :cond_139
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1038
    :cond_13c
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1084
    const/4 v0, 0x0

    if-eqz p1, :cond_85

    instance-of v1, p1, Landroid/app/ApplicationStartInfo;

    if-nez v1, :cond_9

    goto/16 :goto_85

    .line 1088
    :cond_9
    check-cast p1, Landroid/app/ApplicationStartInfo;

    .line 1090
    nop

    .line 1091
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 1092
    iget-object v1, p1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_21

    :cond_17
    move v1, v0

    goto :goto_21

    .line 1094
    :cond_19
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    iget-object v3, p1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    .line 1098
    :goto_21
    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mPid:I

    if-ne v3, v4, :cond_83

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mRealUid:I

    if-ne v3, v4, :cond_83

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    if-ne v3, v4, :cond_83

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    if-ne v3, v4, :cond_83

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mReason:I

    if-ne v3, v4, :cond_83

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mStartupState:I

    if-ne v3, v4, :cond_83

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mStartType:I

    if-ne v3, v4, :cond_83

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    if-ne v3, v4, :cond_83

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    .line 1106
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 1107
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 1108
    invoke-direct {p0, p1}, Landroid/app/ApplicationStartInfo;->timestampsEquals(Landroid/app/ApplicationStartInfo;)Z

    move-result v3

    if-eqz v3, :cond_83

    iget-boolean v3, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iget-boolean v4, p1, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    if-ne v3, v4, :cond_83

    iget-wide v3, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    iget-wide v5, p1, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_83

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    iget p1, p1, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    if-ne v3, p1, :cond_83

    if-eqz v1, :cond_83

    move v0, v2

    goto :goto_84

    :cond_83
    nop

    .line 1098
    :goto_84
    return v0

    .line 1085
    :cond_85
    :goto_85
    return v0
.end method

.method public whitelist getDefiningUid()I
    .registers 2

    .line 594
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    return v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 681
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getLaunchMode()I
    .registers 2

    .line 699
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    return v0
.end method

.method public blacklist getMonotonicCreationTimeMs()J
    .registers 3

    .line 548
    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 603
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageUid()I
    .registers 2

    .line 580
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    return v0
.end method

.method public whitelist getPid()I
    .registers 2

    .line 557
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    return v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .registers 2

    .line 612
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRealUid()I
    .registers 2

    .line 570
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    return v0
.end method

.method public whitelist getReason()I
    .registers 2

    .line 626
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    return v0
.end method

.method public whitelist getStartComponent()I
    .registers 2

    .line 729
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    return v0
.end method

.method public whitelist getStartType()I
    .registers 2

    .line 668
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    return v0
.end method

.method public whitelist getStartupState()I
    .registers 2

    .line 539
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    return v0
.end method

.method public whitelist getStartupTimestamps()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 656
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 658
    :cond_b
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 16

    .line 1117
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 1118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iget-object v10, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iget-wide v12, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 1119
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 1117
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 914
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    .line 915
    :goto_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_136

    .line 916
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result p4

    packed-switch p4, :pswitch_data_13a

    goto/16 :goto_134

    .line 992
    :pswitch_14
    const-wide p4, 0x1050000000eL

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    goto/16 :goto_134

    .line 988
    :pswitch_21
    const-wide p4, 0x1030000000dL

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide p4

    iput-wide p4, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 990
    goto/16 :goto_134

    .line 984
    :pswitch_2e
    const-wide p4, 0x1080000000cL

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result p4

    iput-boolean p4, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    .line 986
    goto/16 :goto_134

    .line 981
    :pswitch_3b
    const-wide p4, 0x10e0000000bL

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    .line 982
    goto/16 :goto_134

    .line 967
    :pswitch_48
    new-instance p4, Ljava/io/ByteArrayInputStream;

    const-wide p5, 0x10c0000000aL

    invoke-virtual {p1, p5, p6}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 969
    new-instance p5, Ljava/io/ObjectInputStream;

    invoke-direct {p5, p4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 971
    :try_start_5b
    invoke-static {p5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p4

    .line 972
    const-string p6, "intent"

    invoke-static {p4, p6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 974
    invoke-static {p4}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object p4

    iput-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_6a} :catch_6b

    .line 977
    goto :goto_6c

    .line 975
    :catch_6b
    move-exception p4

    .line 978
    :goto_6c
    invoke-virtual {p5}, Ljava/io/ObjectInputStream;->close()V

    .line 979
    goto/16 :goto_134

    .line 964
    :pswitch_71
    const-wide p4, 0x10e00000009L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 965
    goto/16 :goto_134

    .line 939
    :pswitch_7e
    new-instance p4, Ljava/io/ByteArrayInputStream;

    const-wide p5, 0x10c00000008L

    invoke-virtual {p1, p5, p6}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 941
    new-instance p5, Ljava/io/ObjectInputStream;

    invoke-direct {p5, p4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 942
    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    iput-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 944
    :try_start_98
    invoke-static {p5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p4

    .line 945
    const-string/jumbo p6, "timestamps"

    invoke-static {p4, p6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 947
    invoke-interface {p4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p6

    .line 948
    :cond_a6
    :goto_a6
    invoke-static {p4, p6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 949
    const-string/jumbo v0, "timestamp"

    .line 950
    invoke-interface {p4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 949
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 951
    const-string/jumbo v0, "key"

    const/4 v1, 0x0

    invoke-interface {p4, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 953
    const-string/jumbo v2, "ts"

    invoke-interface {p4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 955
    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_d5} :catch_d7

    .line 956
    goto :goto_a6

    .line 960
    :cond_d6
    goto :goto_d8

    .line 958
    :catch_d7
    move-exception p4

    .line 961
    :goto_d8
    invoke-virtual {p5}, Ljava/io/ObjectInputStream;->close()V

    .line 962
    goto :goto_134

    .line 936
    :pswitch_dc
    const-wide p4, 0x10e00000007L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    .line 937
    goto :goto_134

    .line 933
    :pswitch_e8
    const-wide p4, 0x10e00000006L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    .line 934
    goto :goto_134

    .line 930
    :pswitch_f4
    const-wide p4, 0x10900000005L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 931
    goto :goto_134

    .line 927
    :pswitch_104
    const-wide p4, 0x10500000004L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    .line 928
    goto :goto_134

    .line 924
    :pswitch_110
    const-wide p4, 0x10500000003L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    .line 925
    goto :goto_134

    .line 921
    :pswitch_11c
    const-wide p4, 0x10500000002L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    .line 922
    goto :goto_134

    .line 918
    :pswitch_128
    const-wide p4, 0x10500000001L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    .line 919
    nop

    .line 993
    :goto_134
    goto/16 :goto_4

    .line 996
    :cond_136
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 997
    return-void

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_128
        :pswitch_11c
        :pswitch_110
        :pswitch_104
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_7e
        :pswitch_71
        :pswitch_48
        :pswitch_3b
        :pswitch_2e
        :pswitch_21
        :pswitch_14
    .end packed-switch
.end method

.method public blacklist setDefiningUid(I)V
    .registers 2

    .line 423
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    .line 424
    return-void
.end method

.method public blacklist setForceStopped(Z)V
    .registers 2

    .line 519
    iput-boolean p1, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    .line 520
    return-void
.end method

.method public blacklist setIntent(Landroid/content/Intent;)V
    .registers 3

    .line 482
    if-eqz p1, :cond_31

    .line 483
    invoke-virtual {p1}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 485
    invoke-virtual {p1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_23

    .line 486
    :cond_f
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 490
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_23

    .line 494
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    .line 499
    :goto_23
    iget-object p1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getOriginalIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 500
    iget-object p1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setOriginalIntent(Landroid/content/Intent;)V

    .line 503
    :cond_31
    return-void
.end method

.method public blacklist setLaunchMode(I)V
    .registers 2

    .line 510
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    .line 511
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 431
    invoke-static {p1}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public blacklist setPackageUid(I)V
    .registers 2

    .line 415
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    .line 416
    return-void
.end method

.method public blacklist setPid(I)V
    .registers 2

    .line 399
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    .line 400
    return-void
.end method

.method public blacklist setProcessName(Ljava/lang/String;)V
    .registers 2

    .line 439
    invoke-static {p1}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public blacklist setRealUid(I)V
    .registers 2

    .line 407
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    .line 408
    return-void
.end method

.method public blacklist setReason(I)V
    .registers 2

    .line 447
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    .line 448
    return-void
.end method

.method public blacklist setStartComponent(I)V
    .registers 2

    .line 527
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    .line 528
    return-void
.end method

.method public blacklist setStartType(I)V
    .registers 2

    .line 469
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 470
    return-void
.end method

.method public blacklist setStartupState(I)V
    .registers 2

    .line 391
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    .line 392
    return-void
.end method

.method public whitelist wasForceStopped()Z
    .registers 2

    .line 713
    iget-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 740
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 747
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    move v0, v1

    goto :goto_35

    :cond_2f
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v0, :cond_66

    .line 750
    nop

    :goto_3d
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 751
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 755
    :cond_66
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 757
    iget p2, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget-boolean p2, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 759
    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 760
    iget p2, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 852
    const-wide p4, 0x10500000001L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 853
    const-wide p4, 0x10500000002L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 854
    const-wide p4, 0x10500000003L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 855
    const-wide p4, 0x10500000004L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 856
    const-wide p4, 0x10900000005L

    iget-object p6, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 857
    const-wide p4, 0x10e00000006L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 858
    const-wide p4, 0x10e00000007L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 859
    iget-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    const/4 p5, 0x1

    .line 884
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    .line 859
    const/4 p6, 0x0

    if-eqz p4, :cond_c2

    iget-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p4

    if-lez p4, :cond_c2

    .line 860
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 861
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 862
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 863
    invoke-interface {v1, p6, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 864
    const-string/jumbo v2, "timestamps"

    invoke-interface {v1, p6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    const/4 v3, 0x0

    :goto_74
    iget-object v4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_ac

    .line 866
    const-string/jumbo v4, "timestamp"

    invoke-interface {v1, p6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    iget-object v5, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 868
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 867
    const-string/jumbo v6, "key"

    invoke-interface {v1, p6, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    iget-object v5, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 870
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 869
    const-string/jumbo v7, "ts"

    invoke-interface {v1, p6, v7, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    invoke-interface {v1, p6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 873
    :cond_ac
    invoke-interface {v1, p6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 874
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 875
    nop

    .line 876
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    .line 875
    const-wide v1, 0x10c00000008L

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 877
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 879
    :cond_c2
    const-wide v0, 0x10e00000009L

    iget p4, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 880
    iget-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-eqz p4, :cond_101

    .line 881
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 882
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 883
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 884
    invoke-interface {v1, p6, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 885
    const-string p5, "intent"

    invoke-interface {v1, p6, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    iget-object v2, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 887
    invoke-interface {v1, p6, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 889
    nop

    .line 890
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    .line 889
    const-wide p5, 0x10c0000000aL

    invoke-virtual {p1, p5, p6, p4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 891
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 893
    :cond_101
    const-wide p4, 0x10e0000000bL

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 894
    const-wide p4, 0x1080000000cL

    iget-boolean p6, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 895
    const-wide p4, 0x1030000000dL

    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 896
    const-wide p4, 0x1050000000eL

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 897
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 898
    return-void
.end method
