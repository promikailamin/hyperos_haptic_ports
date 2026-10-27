.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
.super Ljava/lang/Object;
.source "RemoteComposeDocument.java"


# instance fields
.field private blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 46
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>(Ljava/io/InputStream;Ljava/time/Clock;)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Ljava/time/Clock;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>(Ljava/time/Clock;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 51
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->fromInputStream(Ljava/io/InputStream;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    .line 42
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>(Ljava/io/InputStream;Ljava/time/Clock;)V

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist canBeDisplayed(IIJ)Z
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->canBeDisplayed(IIJ)Z

    move-result p1

    return p1
.end method

.method public blacklist getClock()Ljava/time/Clock;
    .registers 2

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getClock()Ljava/time/Clock;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getStats()[Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    if-nez v0, :cond_8

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 182
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getStats()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist hasSensorListeners([I)I
    .registers 2

    .line 192
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public blacklist invalidate()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->invalidateMeasure()V

    .line 171
    return-void
.end method

.method public blacklist isUpdateDoc()Z
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->isUpdateDoc()Z

    move-result v0

    return v0
.end method

.method public blacklist needsRepaint()I
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    move-result v0

    return v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    .line 110
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 220
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 65
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
