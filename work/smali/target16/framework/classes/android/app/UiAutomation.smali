.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$ConnectionState;,
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;,
        Landroid/app/UiAutomation$AccessibilityEventFilter;
    }
.end annotation


# static fields
.field public static final blacklist ALL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final greylist-max-o CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES:I = 0x1

.field public static final whitelist FLAG_DONT_USE_ACCESSIBILITY:I = 0x2

.field public static final blacklist FLAG_NOT_ACCESSIBILITY_TOOL:I = 0x4

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field public static final whitelist ROTATION_FREEZE_0:I = 0x0

.field public static final whitelist ROTATION_FREEZE_180:I = 0x2

.field public static final whitelist ROTATION_FREEZE_270:I = 0x3

.field public static final whitelist ROTATION_FREEZE_90:I = 0x1

.field public static final whitelist ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final whitelist ROTATION_UNFREEZE:I = -0x2

.field private static final blacklist VERBOSE:Z = false


# instance fields
.field private greylist-max-o mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private greylist-max-o mConnectionId:I

.field private blacklist mConnectionState:I

.field private blacklist mCurrentEventWatchersCount:I

.field private final blacklist mDisplayId:I

.field private final greylist-max-o mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFlags:I

.field private blacklist mGenerationId:I

.field private greylist-max-o mIsDestroyed:Z

.field private greylist-max-o mLastEventTimeMillis:J

.field private final greylist-max-o mLocalCallbackHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private greylist-max-o mRemoteCallbackThread:Landroid/os/HandlerThread;

.field private final greylist-max-o mUiAutomationConnection:Landroid/app/IUiAutomationConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentEventWatchersCount(Landroid/app/UiAutomation;)I
    .registers 1

    iget p0, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventQueue(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGenerationId(Landroid/app/UiAutomation;)I
    .registers 1

    iget p0, p0, Landroid/app/UiAutomation;->mGenerationId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastEventTimeMillis(Landroid/app/UiAutomation;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalCallbackHandler(Landroid/app/UiAutomation;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mLocalCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnAccessibilityEventListener(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .registers 1

    iget-object p0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionId(Landroid/app/UiAutomation;I)V
    .registers 2

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionState(Landroid/app/UiAutomation;I)V
    .registers 2

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastEventTimeMillis(Landroid/app/UiAutomation;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 207
    const-string v0, "_ALL_PERMISSIONS_"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->ALL_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .registers 8

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    .line 232
    iput v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 238
    iput v0, p0, Landroid/app/UiAutomation;->mGenerationId:I

    .line 315
    const/4 v1, 0x1

    if-eqz p2, :cond_20

    move v2, v1

    goto :goto_21

    :cond_20
    move v2, v0

    :goto_21
    const-string v3, "Looper cannot be null!"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 316
    if-eqz p3, :cond_29

    move v0, v1

    :cond_29
    const-string v1, "Connection cannot be null!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 318
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLocalCallbackHandler:Landroid/os/Handler;

    .line 319
    iput-object p3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 320
    iput p1, p0, Landroid/app/UiAutomation;->mDisplayId:I

    .line 322
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Initialized for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " on display "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/IUiAutomationConnection;)V
    .registers 4

    .line 291
    invoke-static {p1}, Landroid/app/UiAutomation;->getDisplayId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroid/app/UiAutomation;-><init>(ILandroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    .line 292
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/UiAutomation;-><init>(ILandroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    .line 310
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Created with deprecatead constructor, assumes DEFAULT_DISPLAY"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method private blacklist executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;
    .registers 14

    .line 1801
    invoke-direct {p0, p1}, Landroid/app/UiAutomation;->warnIfBetterCommand(Ljava/lang/String;)V

    .line 1803
    nop

    .line 1804
    nop

    .line 1806
    nop

    .line 1807
    nop

    .line 1809
    nop

    .line 1810
    nop

    .line 1813
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_c
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1814
    aget-object v4, v3, v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_84
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_12} :catch_71
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_12} :catch_71
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_12} :catch_71
    .catchall {:try_start_c .. :try_end_12} :catchall_6d

    .line 1815
    :try_start_12
    aget-object v3, v3, v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_14} :catch_69
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_14} :catch_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_14} :catch_64
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_14} :catch_64
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_14} :catch_64
    .catchall {:try_start_12 .. :try_end_14} :catchall_6d

    .line 1817
    :try_start_14
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1818
    aget-object v6, v5, v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1a} :catch_59
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1a} :catch_59
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1a} :catch_59
    .catchall {:try_start_14 .. :try_end_1a} :catchall_55

    .line 1819
    :try_start_1a
    aget-object v5, v5, v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1c} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1c} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1c} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1c} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1c} :catch_4d
    .catchall {:try_start_1a .. :try_end_1c} :catchall_4a

    .line 1821
    if-eqz p2, :cond_2e

    .line 1822
    :try_start_1e
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 1823
    aget-object v8, v7, v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_24} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_24} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_24} :catch_27
    .catchall {:try_start_1e .. :try_end_24} :catchall_4a

    .line 1824
    :try_start_24
    aget-object v2, v7, v0

    goto :goto_2f

    .line 1832
    :catch_27
    move-exception p1

    move-object p2, v2

    move-object v8, p2

    goto :goto_41

    .line 1830
    :catch_2b
    move-exception p1

    move-object v8, v2

    goto :goto_61

    .line 1821
    :cond_2e
    move-object v8, v2

    .line 1828
    :goto_2f
    iget-object v7, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v7, p1, v3, v6, v2}, Landroid/app/IUiAutomationConnection;->executeShellCommandWithStderr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_34} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_34} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_34} :catch_3f
    .catchall {:try_start_24 .. :try_end_34} :catchall_4a

    .line 1840
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1841
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1842
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_9a

    .line 1832
    :catch_3f
    move-exception p1

    move-object p2, v2

    :goto_41
    move-object v2, v5

    goto/16 :goto_77

    .line 1830
    :catch_44
    move-exception p1

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_8a

    .line 1840
    :catchall_4a
    move-exception p1

    move-object p2, v2

    goto :goto_82

    .line 1832
    :catch_4d
    move-exception p1

    move-object p2, v2

    move-object v8, p2

    goto :goto_77

    .line 1830
    :catch_51
    move-exception p1

    move-object v5, v2

    move-object v8, v5

    goto :goto_61

    .line 1840
    :catchall_55
    move-exception p1

    move-object p2, v2

    move-object v6, p2

    goto :goto_82

    .line 1832
    :catch_59
    move-exception p1

    move-object p2, v2

    move-object v6, p2

    goto :goto_76

    .line 1830
    :catch_5d
    move-exception p1

    move-object v5, v2

    move-object v6, v5

    move-object v8, v6

    :goto_61
    move-object v2, v3

    move-object v3, v8

    goto :goto_8a

    .line 1832
    :catch_64
    move-exception p1

    move-object p2, v2

    move-object v3, p2

    move-object v6, v3

    goto :goto_76

    .line 1830
    :catch_69
    move-exception p1

    move-object v3, v2

    move-object v5, v3

    goto :goto_88

    .line 1840
    :catchall_6d
    move-exception p1

    move-object p2, v2

    move-object v6, p2

    goto :goto_ae

    .line 1832
    :catch_71
    move-exception p1

    move-object p2, v2

    move-object v3, p2

    move-object v4, v3

    move-object v6, v4

    :goto_76
    move-object v8, v6

    .line 1835
    :goto_77
    :try_start_77
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1836
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1837
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1838
    throw p1
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_81

    .line 1840
    :catchall_81
    move-exception p1

    :goto_82
    move-object v2, v3

    goto :goto_ae

    .line 1830
    :catch_84
    move-exception p1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_88
    move-object v6, v5

    move-object v8, v6

    .line 1831
    :goto_8a
    :try_start_8a
    sget-object v7, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error executing shell command!"

    invoke-static {v7, v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_ac

    .line 1840
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1841
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1842
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1843
    :goto_9a
    nop

    .line 1845
    const/4 p1, 0x2

    if-eqz p2, :cond_a0

    const/4 v2, 0x3

    goto :goto_a1

    :cond_a0
    move v2, p1

    :goto_a1
    new-array v2, v2, [Landroid/os/ParcelFileDescriptor;

    .line 1846
    aput-object v4, v2, v1

    .line 1847
    aput-object v5, v2, v0

    .line 1848
    if-eqz p2, :cond_ab

    .line 1849
    aput-object v8, v2, p1

    .line 1851
    :cond_ab
    return-object v2

    .line 1840
    :catchall_ac
    move-exception p1

    move-object p2, v3

    :goto_ae
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1841
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1842
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1843
    throw p1
.end method

.method private static blacklist getDisplayId(Landroid/content/Context;)I
    .registers 4

    .line 1905
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string v2, "Context cannot be null!"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1907
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1910
    invoke-virtual {v1}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1911
    return v0

    .line 1914
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1915
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2d

    .line 1917
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "UiAutomation created UI context with invalid display id, assuming it\'s running in the display assigned to the user"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-static {p0, v1}, Landroid/app/UiAutomation;->getMainDisplayIdAssignedToUser(Landroid/content/Context;Landroid/os/UserManager;)I

    move-result p0

    return p0

    .line 1922
    :cond_2d
    if-eqz v0, :cond_30

    .line 1927
    return v0

    .line 1930
    :cond_30
    invoke-static {p0, v1}, Landroid/app/UiAutomation;->getMainDisplayIdAssignedToUser(Landroid/content/Context;Landroid/os/UserManager;)I

    move-result p0

    .line 1934
    return p0
.end method

.method private static blacklist getDisplayId$ravenwood(Landroid/content/Context;)I
    .registers 1

    .line 1938
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getMainDisplayIdAssignedToUser(Landroid/content/Context;Landroid/os/UserManager;)I
    .registers 4

    .line 1942
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserVisible()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1944
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") is not visible, using DEFAULT_DISPLAY"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 p0, 0x0

    return p0

    .line 1948
    :cond_2a
    invoke-virtual {p1}, Landroid/os/UserManager;->getMainDisplayIdAssignedToUser()I

    move-result p0

    return p0
.end method

.method private greylist-max-o throwIfConnectedLocked()V
    .registers 4

    .line 1867
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 1870
    return-void

    .line 1868
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiAutomation connected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfNotConnectedLocked()V
    .registers 4

    .line 1874
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    .line 1875
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1876
    const-string v0, "UiAutomation not connected, "

    goto :goto_10

    .line 1877
    :cond_e
    const-string v0, "UiAutomation not connected: Accessibility-dependent method called with FLAG_DONT_USE_ACCESSIBILITY set, "

    .line 1879
    :goto_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1881
    :cond_27
    return-void
.end method

.method private blacklist useAccessibility()Z
    .registers 2

    .line 1894
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o warnIfBetterCommand(Ljava/lang/String;)V
    .registers 3

    .line 1884
    const-string/jumbo v0, "pm grant "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1885
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "UiAutomation.grantRuntimePermission() is more robust and should be used instead of \'pm grant\'"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1887
    :cond_11
    const-string/jumbo v0, "pm revoke "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1888
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v0, "UiAutomation.revokeRuntimePermission() is more robust and should be used instead of \'pm revoke\'"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public blacklist addOverridePermissionState(ILjava/lang/String;I)V
    .registers 5

    .line 683
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiAutomationConnection;->addOverridePermissionState(ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 686
    goto :goto_a

    .line 684
    :catch_6
    move-exception p1

    .line 685
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 687
    :goto_a
    return-void
.end method

.method public whitelist adoptShellPermissionIdentity()V
    .registers 4

    .line 597
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IUiAutomationConnection;->adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 600
    nop

    .line 601
    return-void

    .line 598
    :catch_c
    move-exception v0

    .line 599
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public varargs whitelist adoptShellPermissionIdentity([Ljava/lang/String;)V
    .registers 4

    .line 623
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/IUiAutomationConnection;->adoptShellPermissionIdentity(I[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 626
    nop

    .line 627
    return-void

    .line 624
    :catch_b
    move-exception p1

    .line 625
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist clearAllOverridePermissionStates()V
    .registers 2

    .line 734
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->clearAllOverridePermissionStates()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 737
    goto :goto_a

    .line 735
    :catch_6
    move-exception v0

    .line 736
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 738
    :goto_a
    return-void
.end method

.method public whitelist clearCache()Z
    .registers 3

    .line 530
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 532
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 533
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 534
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 535
    if-nez v0, :cond_11

    .line 536
    const/4 v0, 0x0

    return v0

    .line 538
    :cond_11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 539
    const/4 v0, 0x1

    return v0

    .line 533
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist clearOverridePermissionStates(I)V
    .registers 3

    .line 719
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->clearOverridePermissionStates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 722
    goto :goto_a

    .line 720
    :catch_6
    move-exception p1

    .line 721
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 723
    :goto_a
    return-void
.end method

.method public whitelist clearWindowAnimationFrameStats()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1567
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1570
    goto :goto_e

    .line 1568
    :catch_6
    move-exception v0

    .line 1569
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error clearing window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1571
    :goto_e
    return-void
.end method

.method public whitelist clearWindowContentFrameStats(I)Z
    .registers 4

    .line 1486
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1488
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 1494
    :try_start_7
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return p1

    .line 1495
    :catch_e
    move-exception p1

    .line 1496
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error clearing window content frame stats!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1498
    const/4 p1, 0x0

    return p1

    .line 1488
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public greylist-max-p connect()V
    .registers 4

    .line 335
    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    :try_start_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    .line 338
    nop

    .line 339
    return-void

    .line 336
    :catch_8
    move-exception v0

    .line 337
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o connect(I)V
    .registers 4

    .line 348
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/UiAutomation;->connectWithTimeout(IJ)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_5} :catch_7

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catch_7
    move-exception p1

    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist connectWithTimeout(IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    .line 375
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 377
    monitor-exit v0

    return-void

    .line 380
    :cond_d
    iput v2, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 381
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "UiAutomation"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 382
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 384
    new-instance v1, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    iget-object v3, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 385
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Landroid/app/UiAutomation;->mGenerationId:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/app/UiAutomation;->mGenerationId:I

    invoke-direct {v1, p0, v3, v4}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;I)V

    iput-object v1, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 386
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_a1

    .line 390
    :try_start_30
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v1, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v1, p1}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 391
    iput p1, p0, Landroid/app/UiAutomation;->mFlags:I

    .line 394
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result p1

    if-nez p1, :cond_43

    .line 396
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionState:I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_42} :catch_87

    .line 397
    return-void

    .line 401
    :cond_43
    nop

    .line 403
    iget-object p1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 404
    :try_start_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 406
    :goto_4b
    iget v2, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_53

    .line 407
    nop

    .line 422
    monitor-exit p1

    .line 423
    return-void

    .line 409
    :cond_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_84

    sub-long/2addr v2, v0

    .line 410
    sub-long v2, p2, v2

    .line 411
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_68

    .line 417
    :try_start_60
    iget-object v4, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_65} :catch_66
    .catchall {:try_start_60 .. :try_end_65} :catchall_84

    .line 420
    goto :goto_67

    .line 418
    :catch_66
    move-exception v2

    .line 421
    :goto_67
    goto :goto_4b

    .line 413
    :cond_68
    const/4 p2, 0x3

    :try_start_69
    iput p2, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 414
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timeout while connecting "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 422
    :catchall_84
    move-exception p2

    monitor-exit p1
    :try_end_86
    .catchall {:try_start_69 .. :try_end_86} :catchall_84

    throw p2

    .line 399
    :catch_87
    move-exception p1

    .line 400
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while connecting "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 386
    :catchall_a1
    move-exception p1

    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p1
.end method

.method public blacklist destroy()V
    .registers 2

    .line 518
    invoke-virtual {p0}, Landroid/app/UiAutomation;->disconnect()V

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    .line 520
    return-void
.end method

.method public greylist-max-p disconnect()V
    .registers 6

    .line 443
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5a

    .line 448
    invoke-direct {p0}, Landroid/app/UiAutomation;->useAccessibility()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    if-nez v1, :cond_14

    .line 449
    monitor-exit v0

    return-void

    .line 451
    :cond_14
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionState:I

    .line 452
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 454
    iget v1, p0, Landroid/app/UiAutomation;->mGenerationId:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/app/UiAutomation;->mGenerationId:I

    .line 455
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_73

    .line 458
    const/4 v0, 0x0

    :try_start_21
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_34
    .catchall {:try_start_21 .. :try_end_26} :catchall_32

    .line 462
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_31

    .line 463
    iget-object v1, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 464
    iput-object v0, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 467
    :cond_31
    return-void

    .line 462
    :catchall_32
    move-exception v1

    goto :goto_4e

    .line 459
    :catch_34
    move-exception v1

    .line 460
    :try_start_35
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while disconnecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_32

    .line 462
    :goto_4e
    iget-object v2, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_59

    .line 463
    iget-object v2, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 464
    iput-object v0, p0, Landroid/app/UiAutomation;->mRemoteCallbackThread:Landroid/os/HandlerThread;

    .line 466
    :cond_59
    throw v1

    .line 445
    :cond_5a
    :try_start_5a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call disconnect() while connecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_73

    throw v1
.end method

.method public whitelist dropShellPermissionIdentity()V
    .registers 2

    .line 640
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->dropShellPermissionIdentity()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 643
    nop

    .line 644
    return-void

    .line 641
    :catch_7
    move-exception v0

    .line 642
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1162
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1163
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1164
    iget v0, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    .line 1165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1166
    iget-object v4, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1167
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_fa

    .line 1175
    :try_start_17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1176
    iget-object p1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_dd

    .line 1177
    :try_start_1d
    iget v1, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    if-ne v0, v1, :cond_b5

    .line 1181
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_da

    .line 1182
    :try_start_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    nop

    .line 1185
    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    .line 1186
    :goto_2f
    cmp-long v8, p3, v0

    if-lez v8, :cond_93

    .line 1187
    nop

    .line 1188
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_dd

    .line 1189
    :try_start_37
    iget-object v8, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1190
    if-ge v4, v8, :cond_4b

    .line 1191
    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_8f

    move v4, v1

    goto :goto_55

    .line 1194
    :cond_4b
    :try_start_4b
    iget-object v9, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    sub-long v0, p3, v0

    invoke-virtual {v9, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_52} :catch_53
    .catchall {:try_start_4b .. :try_end_52} :catchall_8f

    .line 1197
    goto :goto_54

    .line 1195
    :catch_53
    move-exception v0

    .line 1199
    :goto_54
    const/4 v0, 0x0

    :goto_55
    :try_start_55
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_8f

    .line 1200
    :try_start_56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 1201
    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v11

    cmp-long v1, v11, v2

    if-gez v1, :cond_66

    .line 1202
    goto :goto_8c

    .line 1204
    :cond_66
    invoke-interface {p2, v0}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v7
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_dd

    if-eqz v7, :cond_88

    .line 1205
    nop

    .line 1215
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1216
    :try_start_70
    iget p1, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    if-nez p1, :cond_7d

    .line 1217
    iget-object p1, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1219
    :cond_7d
    iget-object p1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1220
    monitor-exit v7

    .line 1205
    return-object v0

    .line 1220
    :catchall_84
    move-exception v0

    move-object p1, v0

    monitor-exit v7
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_84

    throw p1

    .line 1207
    :cond_88
    :try_start_88
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_dd

    .line 1208
    nop

    .line 1186
    :cond_8c
    :goto_8c
    move v7, v8

    move-wide v0, v9

    goto :goto_2f

    .line 1199
    :catchall_8f
    move-exception v0

    move-object p1, v0

    :try_start_91
    monitor-exit v7
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_8f

    :try_start_92
    throw p1

    .line 1209
    :cond_93
    if-ge v4, v7, :cond_9c

    .line 1210
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Timed out before reading all events from the queue"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_9c
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected event not received before timeout, events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b5
    .catchall {:try_start_92 .. :try_end_b5} :catchall_dd

    .line 1178
    :cond_b5
    :try_start_b5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event watchers count, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", actual: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1181
    :catchall_da
    move-exception v0

    monitor-exit p1
    :try_end_dc
    .catchall {:try_start_b5 .. :try_end_dc} :catchall_da

    :try_start_dc
    throw v0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_dd

    .line 1215
    :catchall_dd
    move-exception v0

    move-object p1, v0

    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1216
    :try_start_e2
    iget v0, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mCurrentEventWatchersCount:I

    if-nez v0, :cond_ef

    .line 1217
    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1219
    :cond_ef
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1220
    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_e2 .. :try_end_f5} :catchall_f6

    .line 1224
    throw p1

    .line 1220
    :catchall_f6
    move-exception v0

    move-object p1, v0

    :try_start_f8
    monitor-exit v2
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f6

    throw p1

    .line 1167
    :catchall_fa
    move-exception v0

    move-object p1, v0

    :try_start_fc
    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fa

    throw p1
.end method

.method public whitelist executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 1728
    invoke-direct {p0, p1}, Landroid/app/UiAutomation;->warnIfBetterCommand(Ljava/lang/String;)V

    .line 1730
    nop

    .line 1731
    nop

    .line 1734
    const/4 v0, 0x0

    :try_start_6
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1735
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_d} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_d} :catch_26
    .catchall {:try_start_6 .. :try_end_d} :catchall_24

    .line 1736
    const/4 v3, 0x1

    :try_start_e
    aget-object v1, v1, v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_10} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_10} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_10} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_10} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_10} :catch_1e
    .catchall {:try_start_e .. :try_end_10} :catchall_24

    .line 1739
    :try_start_10
    iget-object v3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v3, p1, v1, v0}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_15} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_15} :catch_19
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_15} :catch_19
    .catchall {:try_start_10 .. :try_end_15} :catchall_2c

    .line 1748
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3b

    .line 1742
    :catch_19
    move-exception p1

    goto :goto_20

    .line 1740
    :catch_1b
    move-exception p1

    move-object v0, v1

    goto :goto_31

    .line 1742
    :catch_1e
    move-exception p1

    move-object v1, v0

    :goto_20
    move-object v0, v2

    goto :goto_28

    .line 1740
    :catch_22
    move-exception p1

    goto :goto_31

    .line 1748
    :catchall_24
    move-exception p1

    goto :goto_3d

    .line 1742
    :catch_26
    move-exception p1

    move-object v1, v0

    .line 1745
    :goto_28
    :try_start_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1746
    throw p1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    .line 1748
    :catchall_2c
    move-exception p1

    move-object v0, v1

    goto :goto_3d

    .line 1740
    :catch_2f
    move-exception p1

    move-object v2, v0

    .line 1741
    :goto_31
    :try_start_31
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error executing shell command!"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_24

    .line 1748
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1749
    :goto_3b
    nop

    .line 1751
    return-object v2

    .line 1748
    :goto_3d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1749
    throw p1
.end method

.method public whitelist executeShellCommandRw(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 1769
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/UiAutomation;->executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist executeShellCommandRwe(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 1788
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/UiAutomation;->executeShellCommandInternal(Ljava/lang/String;Z)[Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10

    .line 793
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 794
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 795
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    .line 796
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v4, -0x2

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 795
    :catchall_16
    move-exception v0

    move-object p1, v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_16

    throw p1
.end method

.method public blacklist getAdoptedShellPermissions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 658
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->getAdoptedShellPermissions()Ljava/util/List;

    move-result-object v0

    .line 659
    if-nez v0, :cond_b

    sget-object v0, Landroid/app/UiAutomation;->ALL_PERMISSIONS:Ljava/util/Set;

    goto :goto_11

    :cond_b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    move-object v0, v1

    :goto_11
    return-object v0

    .line 660
    :catch_12
    move-exception v0

    .line 661
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getCache()Landroid/view/accessibility/AccessibilityCache;
    .registers 3

    .line 572
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 574
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 575
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    .line 576
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    return-object v0

    .line 575
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o getConnectionId()I
    .registers 3

    .line 477
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 479
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    monitor-exit v0

    return v1

    .line 480
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 1796
    iget v0, p0, Landroid/app/UiAutomation;->mDisplayId:I

    return v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    return v0
.end method

.method public whitelist getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 933
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/UiAutomation;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .line 950
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 952
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 953
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 955
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 956
    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 955
    return-object p1

    .line 953
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final whitelist getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 4

    .line 813
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 815
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 816
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 817
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 819
    if-eqz v1, :cond_1f

    .line 821
    :try_start_12
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    .line 822
    :catch_17
    move-exception v0

    .line 823
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while getting AccessibilityServiceInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    :cond_1f
    const/4 v0, 0x0

    return-object v0

    .line 817
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1608
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1609
    :catch_7
    move-exception v0

    .line 1610
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .registers 4

    .line 1533
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1534
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1535
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 1541
    :try_start_7
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p1

    .line 1542
    :catch_e
    move-exception p1

    .line 1543
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error getting window content frame stats!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1545
    const/4 p1, 0x0

    return-object p1

    .line 1535
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public whitelist getWindows()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 886
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 887
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 888
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 890
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v2, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnDisplay(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 888
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 916
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 918
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 919
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 921
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 922
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 921
    return-object v0

    .line 919
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1623
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1624
    return-void
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1635
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/UiAutomation;->grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1636
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    .line 1654
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1655
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1654
    invoke-interface {v0, p1, p2, v1}, Landroid/app/IUiAutomationConnection;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 1665
    nop

    .line 1666
    return-void

    .line 1656
    :catch_b
    move-exception v0

    .line 1657
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error granting runtime permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " to package "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;Z)Z
    .registers 4

    .line 972
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->injectInputEvent(Landroid/view/InputEvent;ZZ)Z

    move-result p1

    return p1
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;ZZ)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1005
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;ZZ)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1006
    :catch_7
    move-exception p1

    .line 1007
    sget-object p2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Error while injecting input event!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist injectInputEventToInputFilter(Landroid/view/InputEvent;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1030
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->injectInputEventToInputFilter(Landroid/view/InputEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1033
    goto :goto_e

    .line 1031
    :catch_6
    move-exception p1

    .line 1032
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error while injecting input event to input filter"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1034
    :goto_e
    return-void
.end method

.method public greylist-max-o isDestroyed()Z
    .registers 2

    .line 491
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    return v0
.end method

.method public blacklist isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4

    .line 553
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 555
    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 556
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 557
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 558
    if-nez v0, :cond_11

    .line 559
    const/4 p1, 0x0

    return p1

    .line 561
    :cond_11
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    .line 556
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final whitelist performGlobalAction(I)Z
    .registers 4

    .line 757
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 759
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 760
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 761
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_21

    .line 763
    if-eqz v1, :cond_1f

    .line 765
    :try_start_12
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    return p1

    .line 766
    :catch_17
    move-exception p1

    .line 767
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error while calling performGlobalAction"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    :cond_1f
    const/4 p1, 0x0

    return p1

    .line 761
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public blacklist removeOverridePermissionState(ILjava/lang/String;)V
    .registers 4

    .line 701
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1, p2}, Landroid/app/IUiAutomationConnection;->removeOverridePermissionState(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 704
    goto :goto_a

    .line 702
    :catch_6
    move-exception p1

    .line 703
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 705
    :goto_a
    return-void
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1676
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/UiAutomation;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1677
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1688
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/UiAutomation;->revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1689
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    .line 1706
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1707
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 1706
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiAutomationConnection;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 1710
    nop

    .line 1711
    return-void

    .line 1708
    :catch_b
    move-exception p1

    .line 1709
    new-instance p2, Ljava/lang/SecurityException;

    const-string p3, "Error granting runtime permission"

    invoke-direct {p2, p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist setAnimationScale(F)V
    .registers 3

    .line 1053
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_16

    .line 1056
    :try_start_b
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAnimationScale(F)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 1059
    goto :goto_16

    .line 1057
    :catch_f
    move-exception p1

    .line 1058
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1061
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .registers 3

    .line 504
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 506
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 507
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist setRotation(I)Z
    .registers 4

    .line 1115
    packed-switch p1, :pswitch_data_1c

    .line 1131
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rotation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1124
    :pswitch_b
    :try_start_b
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 1125
    const/4 p1, 0x1

    return p1

    .line 1126
    :catch_12
    move-exception p1

    .line 1127
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error while setting rotation!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1129
    const/4 p1, 0x0

    return p1

    :pswitch_data_1c
    .packed-switch -0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist setRunAsMonkey(Z)V
    .registers 4

    .line 1463
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1466
    goto :goto_10

    .line 1464
    :catch_8
    move-exception p1

    .line 1465
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error while setting run as monkey!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1467
    :goto_10
    return-void
.end method

.method public final whitelist setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5

    .line 841
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 842
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 843
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 844
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 845
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 846
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_28

    .line 848
    if-eqz v1, :cond_27

    .line 850
    :try_start_1b
    invoke-interface {v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 853
    goto :goto_27

    .line 851
    :catch_1f
    move-exception p1

    .line 852
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error while setting AccessibilityServiceInfo"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    :cond_27
    :goto_27
    return-void

    .line 846
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist syncInputTransactions()V
    .registers 4

    .line 1073
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IUiAutomationConnection;->syncInputTransactions(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1076
    goto :goto_f

    .line 1074
    :catch_7
    move-exception v0

    .line 1075
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while syncing input transactions!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    :goto_f
    return-void
.end method

.method public blacklist syncInputTransactions(Z)V
    .registers 4

    .line 1092
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v0, p1}, Landroid/app/IUiAutomationConnection;->syncInputTransactions(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1095
    goto :goto_e

    .line 1093
    :catch_6
    move-exception p1

    .line 1094
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error while syncing input transactions!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    :goto_e
    return-void
.end method

.method public whitelist takeScreenshot()Landroid/graphics/Bitmap;
    .registers 8

    .line 1288
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iget v1, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1289
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1290
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1294
    invoke-static {}, Landroid/window/ScreenCaptureInternal;->createSyncCaptureListener()Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 1296
    const/4 v2, 0x0

    :try_start_17
    iget-object v3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-interface {v3, v4, v0, v1}, Landroid/app/IUiAutomationConnection;->takeScreenshot(Landroid/graphics/Rect;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;I)Z

    move-result v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_29} :catch_8f

    if-nez v1, :cond_2c

    .line 1298
    return-object v2

    .line 1303
    :cond_2c
    nop

    .line 1305
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 1306
    const-string v1, "Failed to take screenshot for display="

    if-nez v0, :cond_4e

    .line 1307
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return-object v2

    .line 1310
    :cond_4e
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1311
    if-nez v3, :cond_6d

    .line 1312
    sget-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-object v2

    .line 1316
    :cond_6d
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 1317
    :try_start_71
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v1, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_83

    .line 1318
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1319
    :cond_7c
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1322
    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1323
    return-object v1

    .line 1316
    :catchall_83
    move-exception v1

    if-eqz v0, :cond_8e

    :try_start_86
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw v1

    .line 1300
    :catch_8f
    move-exception v0

    .line 1301
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while taking screenshot of display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1302
    return-object v2
.end method

.method public blacklist takeScreenshot(I)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1345
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1346
    if-eqz v0, :cond_ac

    .line 1349
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1350
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1354
    invoke-static {}, Landroid/window/ScreenCaptureInternal;->createSyncCaptureListener()Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;

    move-result-object v0

    .line 1356
    const/4 v2, 0x0

    :try_start_17
    iget-object v3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v2, v2, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v4, v0, p1}, Landroid/app/IUiAutomationConnection;->takeScreenshot(Landroid/graphics/Rect;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1363
    goto :goto_4c

    .line 1358
    :cond_29
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to capture screenshot for display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to remote error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_48} :catch_48

    .line 1361
    :catch_48
    move-exception v1

    .line 1362
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1365
    :goto_4c
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 1366
    if-eqz v0, :cond_93

    .line 1369
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1370
    if-eqz v1, :cond_7a

    .line 1374
    invoke-virtual {v0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 1375
    :try_start_5c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_6e

    .line 1376
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1377
    :cond_67
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1380
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1381
    return-object v0

    .line 1374
    :catchall_6e
    move-exception v0

    if-eqz p1, :cond_79

    :try_start_71
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_79
    :goto_79
    throw v0

    .line 1371
    :cond_7a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to create screenshot bitmap for display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1367
    :cond_93
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty screenshot buffer for display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error finding the display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist takeScreenshot(Landroid/view/Window;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1396
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 1397
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Window is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return-object v0

    .line 1401
    :cond_b
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 1402
    if-nez v1, :cond_19

    .line 1403
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Decor view is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    return-object v0

    .line 1407
    :cond_19
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 1408
    if-nez v1, :cond_27

    .line 1409
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "View root is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-object v0

    .line 1413
    :cond_27
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1414
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1415
    sget-object p1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ViewRootImpl SurfaceControl is not valid"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-object v0

    .line 1421
    :cond_39
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 1423
    invoke-static {}, Landroid/window/ScreenCaptureInternal;->createSyncCaptureListener()Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;

    move-result-object v2

    .line 1425
    :try_start_46
    iget-object v3, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v3, v1, v2}, Landroid/app/IUiAutomationConnection;->takeSurfaceControlScreenshot(Landroid/view/SurfaceControl;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)Z

    move-result v1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_c3

    const-string v3, "Failed to take screenshot for window="

    if-nez v1, :cond_67

    .line 1426
    :try_start_50
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_66} :catch_c3

    .line 1427
    return-object v0

    .line 1432
    :cond_67
    nop

    .line 1433
    nop

    .line 1434
    invoke-virtual {v2}, Landroid/window/ScreenCaptureInternal$SynchronousScreenCaptureListener;->getBuffer()Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object v1

    .line 1435
    if-nez v1, :cond_86

    .line 1436
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    return-object v0

    .line 1439
    :cond_86
    invoke-virtual {v1}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1440
    if-nez v2, :cond_a3

    .line 1441
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return-object v0

    .line 1445
    :cond_a3
    invoke-virtual {v1}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 1446
    :try_start_a7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_b7

    .line 1447
    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1449
    :cond_b3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1450
    return-object v0

    .line 1445
    :catchall_b7
    move-exception v0

    if-eqz p1, :cond_c2

    :try_start_ba
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c2

    :catchall_be
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c2
    :goto_c2
    throw v0

    .line 1429
    :catch_c3
    move-exception p1

    .line 1430
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while taking screenshot!"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1857
    const-string v1, "UiAutomation@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1859
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1860
    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1861
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist waitForIdle(JJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1246
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 1248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1249
    iget-wide v3, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_14

    .line 1250
    iput-wide v1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 1254
    :cond_14
    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1256
    sub-long v7, v3, v1

    .line 1257
    sub-long v7, p3, v7

    .line 1259
    cmp-long v7, v7, v5

    if-lez v7, :cond_33

    .line 1265
    iget-wide v7, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    sub-long/2addr v3, v7

    .line 1266
    sub-long v3, p1, v3

    .line 1267
    cmp-long v7, v3, v5

    if-gtz v7, :cond_2b

    .line 1268
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_56

    return-void

    .line 1271
    :cond_2b
    :try_start_2b
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v7, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_56

    .line 1274
    goto :goto_32

    .line 1272
    :catch_31
    move-exception v3

    .line 1275
    :goto_32
    goto :goto_14

    .line 1260
    :cond_33
    :try_start_33
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No idle state with idle timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " within global timeout: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1276
    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_33 .. :try_end_58} :catchall_56

    throw p1
.end method
