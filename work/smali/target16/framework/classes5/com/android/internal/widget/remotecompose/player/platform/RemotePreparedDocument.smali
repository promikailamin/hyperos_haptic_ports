.class public Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;
.super Ljava/lang/Object;
.source "RemotePreparedDocument.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;


# instance fields
.field private final blacklist mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

.field private final blacklist mOriginalDoc:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

.field private final blacklist mResolvedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResolvedData(Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->mResolvedData:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .registers 6

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->mResolvedData:Ljava/util/HashMap;

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 324
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->mOriginalDoc:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 325
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getBitmapDataSet()[Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    move-result-object p1

    .line 326
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_29

    aget-object v2, p1, v1

    .line 327
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 329
    :cond_29
    return-void
.end method


# virtual methods
.method public blacklist getOriginalDoc()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->mOriginalDoc:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    return-object v0
.end method

.method public blacklist getResolvedData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemotePreparedDocument;->mResolvedData:Ljava/util/HashMap;

    return-object v0
.end method
