.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$SinkList;,
        Landroid/hardware/location/ActivityRecognitionHardware$Event;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

.field private static final greylist-max-o EVENT_TYPE_COUNT:I = 0x3

.field private static final greylist-max-o EVENT_TYPE_DISABLED:I = 0x0

.field private static final greylist-max-o EVENT_TYPE_ENABLED:I = 0x1

.field private static final greylist-max-o HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final greylist-max-o INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final greylist-max-o NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityRecognitionHW"

.field private static greylist-max-o sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final greylist-max-o sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

.field private final greylist-max-o mSupportedActivities:[Ljava/lang/String;

.field private final greylist-max-o mSupportedActivitiesCount:I

.field private final greylist-max-o mSupportedActivitiesEnabledEvents:[[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSinks(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedActivitiesCount(Landroid/hardware/location/ActivityRecognitionHardware;)I
    .registers 1

    iget p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedActivitiesEnabledEvents(Landroid/hardware/location/ActivityRecognitionHardware;)[[I
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnativeDisableActivityEvent(Landroid/hardware/location/ActivityRecognitionHardware;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    const-string v0, "ActivityRecognitionHW"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    .line 279
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5

    .line 68
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    .line 60
    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware-IA;)V

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    .line 69
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    .line 71
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    .line 73
    iget-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    .line 74
    iget p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    .line 75
    return-void
.end method

.method private greylist-max-o checkPermissions()V
    .registers 4

    .line 233
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private greylist-max-o fetchSupportedActivities()[Ljava/lang/String;
    .registers 2

    .line 237
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_7

    .line 239
    return-object v0

    .line 242
    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o getActivityName(I)Ljava/lang/String;
    .registers 3

    .line 205
    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_8

    goto :goto_d

    .line 214
    :cond_8
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 206
    :cond_d
    :goto_d
    nop

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 206
    const-string v0, "Invalid ActivityType: %d, SupportedActivities: %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 210
    const-string v0, "ActivityRecognitionHW"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getActivityType(Ljava/lang/String;)I
    .registers 6

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 219
    return v1

    .line 222
    :cond_8
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    .line 223
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1c

    .line 224
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 225
    return v2

    .line 223
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 229
    :cond_1c
    return v1
.end method

.method public static greylist-max-o getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .registers 3

    .line 78
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-nez v1, :cond_e

    .line 80
    new-instance v1, Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {v1, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 83
    :cond_e
    sget-object p0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    monitor-exit v0

    return-object p0

    .line 84
    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static greylist-max-o isSupported()Z
    .registers 1

    .line 88
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private native greylist-max-o nativeDisableActivityEvent(II)I
.end method

.method private native greylist-max-o nativeEnableActivityEvent(IIJ)I
.end method

.method private native greylist-max-o nativeFlush()I
.end method

.method private native greylist-max-o nativeGetSupportedActivities()[Ljava/lang/String;
.end method

.method private native greylist-max-o nativeInitialize()V
.end method

.method private static native greylist-max-o nativeIsSupported()Z
.end method

.method private native greylist-max-o nativeRelease()V
.end method

.method private greylist-max-o onActivityChanged([Landroid/hardware/location/ActivityRecognitionHardware$Event;)V
    .registers 13

    .line 175
    const-string v0, "ActivityRecognitionHW"

    if-eqz p1, :cond_4e

    array-length v1, p1

    if-nez v1, :cond_8

    goto :goto_4e

    .line 180
    :cond_8
    array-length v1, p1

    .line 181
    new-array v2, v1, [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 183
    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v1, :cond_25

    .line 184
    aget-object v5, p1, v4

    .line 185
    iget v6, v5, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    invoke-direct {p0, v6}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    new-instance v7, Landroid/hardware/location/ActivityRecognitionEvent;

    iget v8, v5, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    iget-wide v9, v5, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    invoke-direct {v7, v6, v8, v9, v10}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    aput-object v7, v2, v4

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 189
    :cond_25
    new-instance p1, Landroid/hardware/location/ActivityChangedEvent;

    invoke-direct {p1, v2}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    .line 192
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->beginBroadcast()I

    move-result v1

    .line 193
    nop

    :goto_31
    if-ge v3, v1, :cond_48

    .line 194
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v2, v3}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 196
    :try_start_3b
    invoke-interface {v2, p1}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 199
    goto :goto_45

    .line 197
    :catch_3f
    move-exception v2

    .line 198
    const-string v4, "Error delivering activity changed event."

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 201
    :cond_48
    iget-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->finishBroadcast()V

    .line 202
    return-void

    .line 176
    :cond_4e
    :goto_4e
    sget-boolean p1, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    if-eqz p1, :cond_57

    const-string p1, "No events to broadcast for onActivityChanged."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_57
    return-void
.end method


# virtual methods
.method public greylist-max-o disableActivityEvent(Ljava/lang/String;I)Z
    .registers 5

    .line 147
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->disableActivityEvent_enforcePermission()V

    .line 149
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result p1

    .line 150
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    .line 151
    return v1

    .line 154
    :cond_c
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result v0

    .line 155
    if-nez v0, :cond_1a

    .line 156
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object p1, v0, p1

    aput v1, p1, p2

    .line 157
    const/4 p1, 0x1

    return p1

    .line 159
    :cond_1a
    return v1
.end method

.method public greylist-max-o enableActivityEvent(Ljava/lang/String;IJ)Z
    .registers 7

    .line 128
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->enableActivityEvent_enforcePermission()V

    .line 130
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result p1

    .line 131
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    .line 132
    return v1

    .line 135
    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    move-result p3

    .line 136
    if-nez p3, :cond_1a

    .line 137
    iget-object p3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object p1, p3, p1

    const/4 p3, 0x1

    aput p3, p1, p2

    .line 138
    return p3

    .line 140
    :cond_1a
    return v1
.end method

.method public greylist-max-o flush()Z
    .registers 2

    .line 165
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->flush_enforcePermission()V

    .line 167
    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    move-result v0

    .line 168
    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o getSupportedActivities()[Ljava/lang/String;
    .registers 2

    .line 94
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getSupportedActivities_enforcePermission()V

    .line 96
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o isActivitySupported(Ljava/lang/String;)Z
    .registers 3

    .line 102
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->isActivitySupported_enforcePermission()V

    .line 104
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result p1

    .line 105
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public greylist-max-o registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3

    .line 111
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->registerSink_enforcePermission()V

    .line 113
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->register(Landroid/os/IInterface;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3

    .line 119
    invoke-super {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->unregisterSink_enforcePermission()V

    .line 121
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->unregister(Landroid/os/IInterface;)Z

    move-result p1

    return p1
.end method
