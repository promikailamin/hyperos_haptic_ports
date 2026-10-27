.class public Landroid/content/pm/dex/ArtManager;
.super Ljava/lang/Object;
.source "ArtManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;,
        Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;,
        Landroid/content/pm/dex/ArtManager$ProfileType;
    }
.end annotation


# static fields
.field public static final whitelist PROFILE_APPS:I = 0x0

.field public static final whitelist PROFILE_BOOT_IMAGE:I = 0x1

.field public static final whitelist SNAPSHOT_FAILED_CODE_PATH_NOT_FOUND:I = 0x1

.field public static final whitelist SNAPSHOT_FAILED_INTERNAL_ERROR:I = 0x2

.field public static final whitelist SNAPSHOT_FAILED_PACKAGE_NOT_FOUND:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArtManager"


# instance fields
.field private final greylist-max-o mArtManager:Landroid/content/pm/dex/IArtManager;

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/dex/IArtManager;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    .line 78
    return-void
.end method

.method public static greylist-max-o getCurrentProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 199
    invoke-static {p1, p0}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 200
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 190
    if-nez p0, :cond_6

    const-string/jumbo p0, "primary.prof"

    goto :goto_19

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".split.prof"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method public static blacklist getReferenceProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 209
    invoke-static {p0}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 210
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist isRuntimeProfilingEnabled(I)Z
    .registers 4

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    iget-object v1, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 135
    :catch_d
    move-exception p1

    .line 136
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;)V
    .registers 8

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting profile snapshot for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object v0, p4

    new-instance p4, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    const/4 v1, 0x0

    invoke-direct {p4, p5, v0, v1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;Landroid/content/pm/dex/ArtManager-IA;)V

    .line 116
    :try_start_29
    iget-object p5, p0, Landroid/content/pm/dex/ArtManager;->mArtManager:Landroid/content/pm/dex/IArtManager;

    iget-object v0, p0, Landroid/content/pm/dex/ArtManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 116
    move-object p0, p5

    move-object p5, v0

    invoke-interface/range {p0 .. p5}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_38

    .line 120
    nop

    .line 121
    return-void

    .line 118
    :catch_38
    move-exception v0

    move-object p1, v0

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
