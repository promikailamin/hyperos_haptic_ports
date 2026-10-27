.class Landroid/media/MediaCas$2;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist serviceDied(J)V
    .registers 5

    .line 320
    const-wide/16 v0, 0x18a

    cmp-long p1, p1, v0

    if-nez p1, :cond_14

    .line 321
    invoke-static {}, Landroid/media/MediaCas;->-$$Nest$sfgetsHidlLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 322
    const/4 p2, 0x0

    :try_start_c
    invoke-static {p2}, Landroid/media/MediaCas;->-$$Nest$sfputsServiceHidl(Landroid/hardware/cas/V1_0/IMediaCasService;)V

    .line 323
    monitor-exit p1

    goto :goto_14

    :catchall_11
    move-exception p2

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw p2

    .line 325
    :cond_14
    :goto_14
    return-void
.end method
