.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;,
        Landroid/drm/DrmManagerClient$OnErrorListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final greylist-max-o ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final whitelist ERROR_NONE:I = 0x0

.field public static final whitelist ERROR_UNKNOWN:I = -0x7d0

.field public static final greylist-max-o INVALID_SESSION:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DrmManagerClient"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field greylist-max-o mEventThread:Landroid/os/HandlerThread;

.field private greylist-max-o mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field greylist-max-o mInfoThread:Landroid/os/HandlerThread;

.field private greylist-max-o mNativeContext:J

.field private greylist-max-o mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private greylist-max-o mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private greylist-max-o mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private greylist-max-o mUniqueId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .registers 1

    iget-object p0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnEventListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .registers 1

    iget-object p0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .registers 1

    iget-object p0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I
    .registers 1

    iget p0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$m_processDrmInfo(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$m_removeAllRights(Landroid/drm/DrmManagerClient;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetErrorType(Landroid/drm/DrmManagerClient;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getErrorType(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetEventType(Landroid/drm/DrmManagerClient;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const-string v0, "drmframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 259
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 260
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    .line 263
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    move-result p1

    iput p1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 264
    iget-object p1, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v0, "release"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private native greylist-max-o _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native greylist-max-o _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native greylist-max-o _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native greylist-max-o _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native greylist-max-o _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native greylist-max-o _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native greylist-max-o _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native greylist-max-o _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native greylist-max-o _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native greylist-max-o _getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native greylist-max-o _initialize()I
.end method

.method private native greylist-max-o _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native greylist-max-o _openConvertSession(ILjava/lang/String;)I
.end method

.method private native greylist-max-o _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native greylist-max-o _release(I)V
.end method

.method private native greylist-max-o _removeAllRights(I)I
.end method

.method private native greylist-max-o _removeRights(ILjava/lang/String;)I
.end method

.method private native greylist-max-o _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native greylist-max-o _setListeners(ILjava/lang/Object;)V
.end method

.method private greylist-max-o convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    .line 856
    nop

    .line 857
    const/4 v1, 0x0

    if-eqz p1, :cond_96

    .line 858
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_91

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 860
    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v3, p1

    goto/16 :goto_92

    .line 863
    :cond_1d
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object v3, p1

    goto :goto_8c

    .line 866
    :cond_2f
    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 867
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 868
    nop

    .line 870
    :try_start_3e
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 872
    if-eqz v1, :cond_69

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-eqz p1, :cond_69

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 876
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 877
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_62
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_62} :catch_74
    .catchall {:try_start_3e .. :try_end_62} :catchall_71

    .line 882
    if-eqz v1, :cond_67

    .line 883
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_67
    move-object v1, p1

    goto :goto_96

    .line 873
    :cond_69
    :try_start_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given Uri could not be found in media store"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_71} :catch_74
    .catchall {:try_start_69 .. :try_end_71} :catchall_71

    .line 882
    :catchall_71
    move-exception v0

    move-object p1, v0

    goto :goto_7d

    .line 878
    :catch_74
    move-exception v0

    .line 879
    :try_start_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_71

    .line 882
    :goto_7d
    if-eqz v1, :cond_82

    .line 883
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 885
    :cond_82
    throw p1

    .line 887
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given Uri scheme is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 863
    :cond_8b
    move-object v3, p1

    .line 864
    :goto_8c
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_96

    .line 859
    :cond_91
    move-object v3, p1

    .line 861
    :goto_92
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 890
    :cond_96
    :goto_96
    return-object v1
.end method

.method private greylist-max-o createEventThreads()V
    .registers 3

    .line 935
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-nez v0, :cond_3e

    .line 936
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.InfoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 937
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 938
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 940
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 941
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 942
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 944
    :cond_3e
    return-void
.end method

.method private greylist-max-o createListeners()V
    .registers 3

    .line 947
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    .line 948
    return-void
.end method

.method private greylist-max-o getErrorType(I)I
    .registers 2

    .line 833
    nop

    .line 835
    packed-switch p1, :pswitch_data_a

    const/4 p1, -0x1

    goto :goto_8

    .line 839
    :pswitch_6
    const/16 p1, 0x7d6

    .line 842
    :goto_8
    return p1

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private greylist-max-o getEventType(I)I
    .registers 2

    .line 820
    nop

    .line 822
    packed-switch p1, :pswitch_data_a

    const/4 p1, -0x1

    goto :goto_8

    .line 826
    :pswitch_6
    const/16 p1, 0x3ea

    .line 829
    :goto_8
    return p1

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o notify(Ljava/lang/Object;IILjava/lang/String;)V
    .registers 6

    .line 190
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/drm/DrmManagerClient;

    .line 192
    if-eqz p0, :cond_1a

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_1a

    .line 193
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 195
    iget-object p0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .registers 3

    .line 549
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 552
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object p1

    return-object p1

    .line 550
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given drmInfoRequest is invalid/null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist acquireRights(Landroid/drm/DrmInfoRequest;)I
    .registers 2

    .line 570
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object p1

    .line 571
    if-nez p1, :cond_9

    .line 572
    const/16 p1, -0x7d0

    return p1

    .line 574
    :cond_9
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result p1

    return p1
.end method

.method public whitelist canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 4

    .line 516
    if-eqz p1, :cond_6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_10

    :cond_6
    if-eqz p2, :cond_19

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 519
    :cond_10
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 517
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Uri or the mimetype should be non null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 501
    const-string v0, ""

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_a
    if-eqz p2, :cond_19

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 504
    :cond_12
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 502
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Path or the mimetype should be non null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist checkRightsStatus(Landroid/net/Uri;)I
    .registers 3

    .line 686
    if-eqz p1, :cond_f

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_f

    .line 689
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 687
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given uri is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist checkRightsStatus(Landroid/net/Uri;I)I
    .registers 4

    .line 718
    if-eqz p1, :cond_f

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_f

    .line 721
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 719
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given uri is not valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist checkRightsStatus(Ljava/lang/String;)I
    .registers 3

    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist checkRightsStatus(Ljava/lang/String;I)I
    .registers 4

    .line 702
    if-eqz p1, :cond_17

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 705
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result p1

    return p1

    .line 703
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given path or action is not valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 293
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 294
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 295
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 296
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 297
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 299
    :cond_1b
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_26

    .line 300
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 301
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 303
    :cond_26
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 304
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 305
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 306
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 307
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 308
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    .line 310
    :cond_35
    return-void
.end method

.method public whitelist closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .registers 3

    .line 816
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object p1

    return-object p1
.end method

.method public whitelist convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .registers 4

    .line 798
    if-eqz p2, :cond_c

    array-length v0, p2

    if-lez v0, :cond_c

    .line 801
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object p1

    return-object p1

    .line 799
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given inputData should be non null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 270
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 274
    :cond_9
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 276
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 277
    nop

    .line 278
    return-void

    .line 276
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 277
    throw v0
.end method

.method public whitelist getAvailableDrmEngines()[Ljava/lang/String;
    .registers 5

    .line 366
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v0

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    const/4 v2, 0x0

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_1b

    .line 370
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 373
    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 374
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAvailableDrmSupportInfo()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/drm/DrmSupportInfo;",
            ">;"
        }
    .end annotation

    .line 385
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .registers 4

    .line 430
    if-eqz p1, :cond_f

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_f

    .line 433
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1

    .line 431
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Uri should be non null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 4

    .line 399
    if-eqz p1, :cond_17

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 402
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1

    .line 400
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given usage or path is invalid/null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 5

    .line 605
    const-string v0, ""

    if-eqz p1, :cond_8

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v1, p1, :cond_10

    :cond_8
    if-eqz p2, :cond_23

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 608
    :cond_10
    nop

    .line 610
    :try_start_11
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    .line 614
    goto :goto_1e

    .line 611
    :catch_16
    move-exception p1

    .line 613
    const-string p1, "DrmManagerClient"

    const-string v1, "Given Uri could not be found in media store"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_1e
    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 606
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Uri or the mimetype should be non null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 588
    const-string v0, ""

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_a
    if-eqz p2, :cond_19

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 591
    :cond_12
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 589
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Path or the mimetype should be non null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .registers 3

    .line 445
    if-eqz p1, :cond_f

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_f

    .line 448
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1

    .line 446
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uri should be non null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 3

    .line 414
    if-eqz p1, :cond_11

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 417
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1

    .line 415
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given path is invalid/null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 661
    if-eqz p1, :cond_f

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_f

    .line 664
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 662
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given uri is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 626
    if-eqz p1, :cond_48

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 630
    nop

    .line 632
    nop

    .line 634
    nop

    .line 635
    const/4 v0, 0x0

    :try_start_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 637
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_42
    .catchall {:try_start_e .. :try_end_1e} :catchall_38

    .line 638
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    goto :goto_25

    .line 636
    :cond_23
    move-object v1, v0

    move-object v2, v1

    .line 640
    :goto_25
    iget v3, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v3, p1, v1}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2b} :catch_36
    .catchall {:try_start_1e .. :try_end_2b} :catchall_33

    .line 643
    if-eqz v2, :cond_47

    .line 645
    :goto_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 646
    :goto_30
    goto :goto_47

    :catch_31
    move-exception p1

    goto :goto_30

    .line 643
    :catchall_33
    move-exception p1

    move-object v0, v2

    goto :goto_39

    .line 641
    :catch_36
    move-exception p1

    goto :goto_44

    .line 643
    :catchall_38
    move-exception p1

    :goto_39
    if-eqz v0, :cond_41

    .line 645
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 646
    :goto_3e
    goto :goto_41

    :catch_3f
    move-exception v0

    goto :goto_3e

    .line 648
    :cond_41
    :goto_41
    throw p1

    .line 641
    :catch_42
    move-exception p1

    move-object v2, v0

    .line 643
    :goto_44
    if-eqz v2, :cond_47

    .line 645
    goto :goto_2d

    .line 650
    :cond_47
    :goto_47
    return-object v0

    .line 627
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given path should be non null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o installDrmEngine(Ljava/lang/String;)V
    .registers 5

    .line 485
    if-eqz p1, :cond_10

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 489
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 490
    return-void

    .line 486
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "is not valid"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openConvertSession(Ljava/lang/String;)I
    .registers 3

    .line 778
    if-eqz p1, :cond_11

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 781
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result p1

    return p1

    .line 779
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path or the mimeType should be non null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist processDrmInfo(Landroid/drm/DrmInfo;)I
    .registers 5

    .line 529
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 532
    nop

    .line 533
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v1, -0x7d0

    if-eqz v0, :cond_20

    .line 534
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 535
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 v1, 0x0

    .line 537
    :cond_20
    return v1

    .line 530
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given drmInfo is invalid/null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist release()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->close()V

    .line 318
    return-void
.end method

.method public whitelist removeAllRights()I
    .registers 4

    .line 759
    nop

    .line 760
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v1, -0x7d0

    if-eqz v0, :cond_18

    .line 761
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 762
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 764
    :cond_18
    return v1
.end method

.method public whitelist removeRights(Landroid/net/Uri;)I
    .registers 3

    .line 746
    if-eqz p1, :cond_f

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, p1, :cond_f

    .line 749
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 747
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given uri is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist removeRights(Ljava/lang/String;)I
    .registers 3

    .line 732
    if-eqz p1, :cond_11

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 735
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result p1

    return p1

    .line 733
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given path should be non null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 471
    if-eqz p2, :cond_19

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 472
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    .line 474
    :cond_19
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 469
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given drmRights or contentPath is not valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized whitelist setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .registers 2

    monitor-enter p0

    .line 353
    :try_start_1
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 354
    if-eqz p1, :cond_8

    .line 355
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 357
    :cond_8
    monitor-exit p0

    return-void

    .line 352
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public declared-synchronized whitelist setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .registers 2

    monitor-enter p0

    .line 340
    :try_start_1
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 341
    if-eqz p1, :cond_8

    .line 342
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 344
    :cond_8
    monitor-exit p0

    return-void

    .line 339
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public declared-synchronized whitelist setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .registers 2

    monitor-enter p0

    .line 327
    :try_start_1
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 328
    if-eqz p1, :cond_8

    .line 329
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 331
    :cond_8
    monitor-exit p0

    return-void

    .line 326
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method
