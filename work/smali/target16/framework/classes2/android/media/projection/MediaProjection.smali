.class public final Landroid/media/projection/MediaProjection;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjection$MediaProjectionCallback;,
        Landroid/media/projection/MediaProjection$Callback;,
        Landroid/media/projection/MediaProjection$CallbackRecord;
    }
.end annotation


# static fields
.field static final blacklist MEDIA_PROJECTION_REQUIRES_CALLBACK:J = 0x101592aaL

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaProjection"


# instance fields
.field private final greylist-max-o mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjection$Callback;",
            "Landroid/media/projection/MediaProjection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDisplayId:I

.field private final blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final greylist-max-o mImpl:Landroid/media/projection/IMediaProjection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/media/projection/MediaProjection;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V
    .registers 4

    .line 82
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-direct {p0, p1, p2, v0}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;Landroid/hardware/display/DisplayManager;)V

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;Landroid/hardware/display/DisplayManager;)V
    .registers 6

    .line 87
    const-string v0, "MediaProjection"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    .line 88
    iput-object p1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    .line 90
    iput-object p3, p0, Landroid/media/projection/MediaProjection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 93
    :try_start_12
    iget-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    new-instance p3, Landroid/media/projection/MediaProjection$MediaProjectionCallback;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection-IA;)V

    invoke-interface {p2, p3}, Landroid/media/projection/IMediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 95
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->mediaProjectionConnectedDisplay()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 96
    iget-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {p2}, Landroid/media/projection/IMediaProjection;->getDisplayId()I

    move-result p2

    .line 97
    if-eqz p2, :cond_46

    .line 98
    iput p2, p0, Landroid/media/projection/MediaProjection;->mDisplayId:I

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created MediaProjection for display "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/media/projection/MediaProjection;->mDisplayId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_45} :catch_5e

    .line 100
    return-void

    .line 106
    :cond_46
    nop

    .line 108
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 109
    invoke-virtual {p1}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 110
    invoke-virtual {p1}, Landroid/os/UserManager;->getMainDisplayIdAssignedToUser()I

    move-result p1

    goto :goto_5b

    .line 111
    :cond_5a
    const/4 p1, 0x0

    :goto_5b
    iput p1, p0, Landroid/media/projection/MediaProjection;->mDisplayId:I

    .line 112
    return-void

    .line 103
    :catch_5e
    move-exception p1

    .line 104
    const-string p2, "Content Recording: Failed to start media projection"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failed to start media projection"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private blacklist shouldMediaProjectionRequireCallback()Z
    .registers 3

    .line 311
    const-wide/32 v0, 0x101592aa

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 5

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setWindowManagerMirroringEnabled(Z)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 291
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 292
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p1

    .line 291
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    .line 293
    if-nez p1, :cond_19

    .line 298
    const-string p1, "MediaProjection"

    const-string p2, "Failed to create virtual display."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 p1, 0x0

    return-object p1

    .line 301
    :cond_19
    return-object p1
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 10

    .line 245
    invoke-direct {p0}, Landroid/media/projection/MediaProjection;->shouldMediaProjectionRequireCallback()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 246
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1e

    .line 247
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must register a callback before starting capture, to manage resources in response to MediaProjection states."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 250
    const-string p2, "MediaProjection"

    const-string p3, "Content Recording: no callback registered for virtual display"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    throw p1

    .line 254
    :cond_1e
    :goto_1e
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 255
    invoke-virtual {v0, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p1

    .line 256
    if-eqz p6, :cond_2c

    .line 257
    invoke-virtual {p1, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 259
    :cond_2c
    iget p2, p0, Landroid/media/projection/MediaProjection;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 260
    invoke-virtual {p0, p1, p7, p8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o createVirtualDisplay(Ljava/lang/String;IIIZLandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 10

    .line 170
    nop

    .line 172
    if-eqz p5, :cond_6

    .line 173
    const/16 p5, 0x16

    goto :goto_8

    .line 172
    :cond_6
    const/16 p5, 0x12

    .line 175
    :goto_8
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 176
    invoke-virtual {v0, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p1

    .line 177
    if-eqz p6, :cond_16

    .line 178
    invoke-virtual {p1, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 180
    :cond_16
    iget p2, p0, Landroid/media/projection/MediaProjection;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 181
    invoke-virtual {p0, p1, p7, p8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig$Builder;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getProjection()Landroid/media/projection/IMediaProjection;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    return-object v0
.end method

.method public whitelist registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .registers 6

    .line 133
    const-string v0, "MediaProjection"

    :try_start_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjection$Callback;

    .line 134
    if-nez p2, :cond_15

    .line 135
    new-instance p2, Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    :cond_15
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    new-instance v2, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-direct {v2, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;-><init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1f} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_1f} :catch_20

    .line 143
    goto :goto_26

    .line 141
    :catch_20
    move-exception p1

    .line 142
    const-string p2, "Content Recording: failed to create new Handler to register Callback"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :goto_26
    return-void

    .line 138
    :catch_27
    move-exception p1

    .line 139
    const-string p2, "Content Recording: cannot register null Callback"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    throw p1
.end method

.method public whitelist stop()V
    .registers 4

    .line 319
    const-string v0, "MediaProjection"

    :try_start_2
    const-string v1, "Content Recording: stopping projection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/media/projection/IMediaProjection;->stop(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_e

    .line 323
    goto :goto_14

    .line 321
    :catch_e
    move-exception v1

    .line 322
    const-string v2, "Unable to stop projection"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :goto_14
    return-void
.end method

.method public blacklist stop(I)V
    .registers 4

    .line 332
    const-string v0, "MediaProjection"

    :try_start_2
    const-string v1, "Content Recording: stopping projection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {v1, p1}, Landroid/media/projection/IMediaProjection;->stop(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 336
    goto :goto_13

    .line 334
    :catch_d
    move-exception p1

    .line 335
    const-string v1, "Unable to stop projection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    :goto_13
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V
    .registers 4

    .line 155
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjection$Callback;

    .line 156
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_d

    .line 160
    nop

    .line 161
    return-void

    .line 157
    :catch_d
    move-exception p1

    .line 158
    const-string v0, "MediaProjection"

    const-string v1, "Content Recording: cannot unregister null Callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    throw p1
.end method
