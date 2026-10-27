.class public final Landroid/media/quality/MediaQualityManager;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$PictureProfileCallback;,
        Landroid/media/quality/MediaQualityManager$ProfileQueryParams;,
        Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$SoundProfileCallback;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;,
        Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightEventTypes;
    }
.end annotation


# static fields
.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_DISABLED:I = 0x2

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_ENABLED:I = 0x1

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_INTERRUPTED:I = 0x4

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_METADATA:I = 0x3

.field public static final blacklist OPTION_INCLUDE_PARAMETERS:Ljava/lang/String; = "include_parameters"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaQualityManager"


# instance fields
.field private final blacklist mAbCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAbLock:Ljava/lang/Object;

.field private final blacklist mApListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mApLock:Ljava/lang/Object;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPpCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPpLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/media/quality/IMediaQualityManager;

.field private final blacklist mSpCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSpLock:Ljava/lang/Object;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAbCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAbLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApListenerRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V
    .registers 6

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    .line 117
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 119
    iput-object p2, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    .line 120
    new-instance p1, Landroid/media/quality/MediaQualityManager$1;

    invoke-direct {p1, p0}, Landroid/media/quality/MediaQualityManager$1;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 163
    new-instance p2, Landroid/media/quality/MediaQualityManager$2;

    invoke-direct {p2, p0}, Landroid/media/quality/MediaQualityManager$2;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 206
    new-instance v0, Landroid/media/quality/MediaQualityManager$3;

    invoke-direct {v0, p0}, Landroid/media/quality/MediaQualityManager$3;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 217
    new-instance v1, Landroid/media/quality/MediaQualityManager$4;

    invoke-direct {v1, p0}, Landroid/media/quality/MediaQualityManager$4;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 237
    :try_start_59
    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    if-eqz v2, :cond_71

    .line 238
    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v2, p1}, Landroid/media/quality/IMediaQualityManager;->registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V

    .line 239
    iget-object p1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {p1, p2}, Landroid/media/quality/IMediaQualityManager;->registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V

    .line 240
    iget-object p1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {p1, v0}, Landroid/media/quality/IMediaQualityManager;->registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V

    .line 241
    iget-object p1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {p1, v1}, Landroid/media/quality/IMediaQualityManager;->registerActiveProcessingPictureListener(Landroid/media/quality/IActiveProcessingPictureListener;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_71} :catch_73

    .line 245
    :cond_71
    nop

    .line 246
    return-void

    .line 243
    :catch_73
    move-exception p1

    .line 244
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public whitelist addActiveProcessingPictureListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1244
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p1, v3}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    monitor-exit v0

    .line 1250
    return-void

    .line 1249
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist addGlobalActiveProcessingPictureListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1263
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1266
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p1, v3}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist changeStreamStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 522
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->changeStreamStatus(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 525
    nop

    .line 526
    return-void

    .line 523
    :catch_d
    move-exception p1

    .line 524
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist createPictureProfile(Landroid/media/quality/PictureProfile;)V
    .registers 4

    .line 480
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->createPictureProfile(Landroid/media/quality/PictureProfile;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 483
    nop

    .line 484
    return-void

    .line 481
    :catch_d
    move-exception p1

    .line 482
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist createSoundProfile(Landroid/media/quality/SoundProfile;)V
    .registers 4

    .line 679
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->createSoundProfile(Landroid/media/quality/SoundProfile;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 682
    nop

    .line 683
    return-void

    .line 680
    :catch_d
    move-exception p1

    .line 681
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAllPictureProfilesForTvInput(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 451
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 452
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 451
    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getAllPictureProfilesForTvInput(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 453
    :catch_d
    move-exception p1

    .line 454
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAvailablePictureProfiles(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 343
    if-eqz p1, :cond_b

    :try_start_2
    invoke-static {p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    .line 344
    :goto_c
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getAvailablePictureProfiles(ZI)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    .line 345
    :catch_19
    move-exception p1

    .line 346
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAvailableSoundProfiles(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 622
    if-eqz p1, :cond_b

    :try_start_2
    invoke-static {p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    .line 623
    :goto_c
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getAvailableSoundProfiles(ZI)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    .line 624
    :catch_19
    move-exception p1

    .line 625
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getCurrentPictureProfileForTvInput(Ljava/lang/String;)Landroid/media/quality/PictureProfile;
    .registers 4

    .line 438
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 439
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 438
    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getCurrentPictureProfileForTvInput(Ljava/lang/String;I)Landroid/media/quality/PictureProfile;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 440
    :catch_d
    move-exception p1

    .line 441
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getDefaultPictureProfile()Landroid/media/quality/PictureProfile;
    .registers 2

    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v0}, Landroid/media/quality/IMediaQualityManager;->getDefaultPictureProfile()Landroid/media/quality/PictureProfile;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 364
    :catch_7
    move-exception v0

    .line 365
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getParameterCapabilities(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;"
        }
    .end annotation

    .line 726
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getParameterCapabilities(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 727
    :catch_d
    move-exception p1

    .line 728
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getPictureProfile(ILjava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/media/quality/PictureProfile;
    .registers 6

    .line 297
    if-eqz p3, :cond_b

    :try_start_2
    invoke-static {p3}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_b

    :cond_9
    const/4 p3, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p3, 0x1

    .line 298
    :goto_c
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 299
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 298
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfile(ILjava/lang/String;ZI)Landroid/media/quality/PictureProfile;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    .line 300
    :catch_19
    move-exception p1

    .line 301
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getPictureProfileAllowList()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileAllowList(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 745
    :catch_d
    move-exception v0

    .line 746
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getPictureProfileForTvInput(Ljava/lang/String;)J
    .registers 4

    .line 426
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileForTvInput(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 427
    :catch_d
    move-exception p1

    .line 428
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getPictureProfileHandle([Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfileHandle;",
            ">;"
        }
    .end annotation

    .line 414
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 415
    :catch_d
    move-exception p1

    .line 416
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getPictureProfilePackageNames()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfilePackageNames(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 403
    :catch_d
    move-exception v0

    .line 404
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getPictureProfilesByPackage(Ljava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 322
    if-eqz p2, :cond_b

    :try_start_2
    invoke-static {p2}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 p2, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p2, 0x1

    .line 323
    :goto_c
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 324
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 323
    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    .line 325
    :catch_19
    move-exception p1

    .line 326
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getSoundProfile(ILjava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/media/quality/SoundProfile;
    .registers 6

    .line 576
    if-eqz p3, :cond_b

    :try_start_2
    invoke-static {p3}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_b

    :cond_9
    const/4 p3, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p3, 0x1

    .line 577
    :goto_c
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfile(ILjava/lang/String;ZI)Landroid/media/quality/SoundProfile;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    .line 578
    :catch_19
    move-exception p1

    .line 579
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getSoundProfileAllowList()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 776
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfileAllowList(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 777
    :catch_d
    move-exception v0

    .line 778
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getSoundProfileHandle([Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfileHandle;",
            ">;"
        }
    .end annotation

    .line 464
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfileHandle([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 465
    :catch_d
    move-exception p1

    .line 466
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getSoundProfilePackageNames()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 662
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfilePackageNames(I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 663
    :catch_d
    move-exception v0

    .line 664
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSoundProfilesByPackage(Ljava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 601
    if-eqz p2, :cond_b

    :try_start_2
    invoke-static {p2}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$fgetmParametersIncluded(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 p2, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p2, 0x1

    .line 602
    :goto_c
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 603
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 602
    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfilesByPackage(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p1

    .line 604
    :catch_19
    move-exception p1

    .line 605
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isAmbientBacklightEnabled()Z
    .registers 3

    .line 948
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAmbientBacklightEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 949
    :catch_d
    move-exception v0

    .line 950
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isAutoPictureQualityEnabled()Z
    .registers 3

    .line 831
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAutoPictureQualityEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 832
    :catch_d
    move-exception v0

    .line 833
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isAutoSoundQualityEnabled()Z
    .registers 3

    .line 888
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAutoSoundQualityEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 889
    :catch_d
    move-exception v0

    .line 890
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isSuperResolutionEnabled()Z
    .registers 3

    .line 859
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isSuperResolutionEnabled(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 860
    :catch_d
    move-exception v0

    .line 861
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isSupported()Z
    .registers 3

    .line 802
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isSupported(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 803
    :catch_d
    move-exception v0

    .line 804
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist registerAmbientBacklightCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;)V
    .registers 6

    .line 901
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist registerPictureProfileCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$PictureProfileCallback;)V
    .registers 6

    .line 254
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist registerSoundProfileCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$SoundProfileCallback;)V
    .registers 6

    .line 534
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_9
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public whitelist removeActiveProcessingPictureListener(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1277
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1279
    :try_start_6
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1280
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    .line 1282
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->getListener()Ljava/util/function/Consumer;

    move-result-object v2

    if-ne v2, p1, :cond_22

    .line 1283
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1284
    goto :goto_23

    .line 1286
    :cond_22
    goto :goto_c

    .line 1287
    :cond_23
    :goto_23
    monitor-exit v0

    .line 1288
    return-void

    .line 1287
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public whitelist removePictureProfile(Ljava/lang/String;)V
    .registers 4

    .line 509
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->removePictureProfile(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 512
    nop

    .line 513
    return-void

    .line 510
    :catch_d
    move-exception p1

    .line 511
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeSoundProfile(Ljava/lang/String;)V
    .registers 4

    .line 708
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->removeSoundProfile(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 711
    nop

    .line 712
    return-void

    .line 709
    :catch_d
    move-exception p1

    .line 710
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAmbientBacklightEnabled(Z)V
    .registers 4

    .line 962
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAmbientBacklightEnabled(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 965
    nop

    .line 966
    return-void

    .line 963
    :catch_d
    move-exception p1

    .line 964
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;)V
    .registers 4

    .line 935
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :try_start_3
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    .line 940
    nop

    .line 941
    return-void

    .line 938
    :catch_10
    move-exception p1

    .line 939
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAutoPictureQualityEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 820
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAutoPictureQualityEnabled(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 823
    nop

    .line 824
    return-void

    .line 821
    :catch_d
    move-exception p1

    .line 822
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAutoSoundQualityEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAutoSoundQualityEnabled(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 880
    nop

    .line 881
    return-void

    .line 878
    :catch_d
    move-exception p1

    .line 879
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setDefaultPictureProfile(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setDefaultPictureProfile(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 386
    :catch_d
    move-exception p1

    .line 387
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setDefaultSoundProfile(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 644
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setDefaultSoundProfile(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 645
    :catch_d
    move-exception p1

    .line 646
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setPictureProfileAllowList(Ljava/util/List;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 758
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setPictureProfileAllowList(Ljava/util/List;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 761
    nop

    .line 762
    return-void

    .line 759
    :catch_d
    move-exception p1

    .line 760
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setSoundProfileAllowList(Ljava/util/List;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 790
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setSoundProfileAllowList(Ljava/util/List;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 793
    nop

    .line 794
    return-void

    .line 791
    :catch_d
    move-exception p1

    .line 792
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setSuperResolutionEnabled(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 848
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setSuperResolutionEnabled(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 851
    nop

    .line 852
    return-void

    .line 849
    :catch_d
    move-exception p1

    .line 850
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterAmbientBacklightCallback(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;)V
    .registers 5

    .line 914
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_6
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 917
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 918
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    .line 919
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    move-result-object v2

    if-ne v2, p1, :cond_22

    .line 920
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 921
    goto :goto_23

    .line 923
    :cond_22
    goto :goto_c

    .line 924
    :cond_23
    :goto_23
    monitor-exit v0

    .line 925
    return-void

    .line 924
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public whitelist unregisterPictureProfileCallback(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;)V
    .registers 5

    .line 265
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_6
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 268
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    .line 270
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    move-result-object v2

    if-ne v2, p1, :cond_22

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 272
    goto :goto_23

    .line 274
    :cond_22
    goto :goto_c

    .line 275
    :cond_23
    :goto_23
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public whitelist unregisterSoundProfileCallback(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;)V
    .registers 5

    .line 545
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_6
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 548
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 549
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    .line 550
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    move-result-object v2

    if-ne v2, p1, :cond_22

    .line 551
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 552
    goto :goto_23

    .line 554
    :cond_22
    goto :goto_c

    .line 555
    :cond_23
    :goto_23
    monitor-exit v0

    .line 556
    return-void

    .line 555
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public whitelist updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 5

    .line 495
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 498
    nop

    .line 499
    return-void

    .line 496
    :catch_d
    move-exception p1

    .line 497
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .registers 5

    .line 694
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 697
    nop

    .line 698
    return-void

    .line 695
    :catch_d
    move-exception p1

    .line 696
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
