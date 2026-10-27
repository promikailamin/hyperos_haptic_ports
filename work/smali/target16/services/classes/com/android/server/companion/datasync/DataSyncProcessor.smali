.class public Lcom/android/server/companion/datasync/DataSyncProcessor;
.super Ljava/lang/Object;
.source "DataSyncProcessor.java"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mAssociationsWithTransport:Ljava/util/Set;

.field public final mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public static synthetic $r8$lambda$K4rmVdTz_yqD6rjTGJrrBGmBNWo(Lcom/android/server/companion/datasync/DataSyncProcessor;Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/DataSyncProcessor;->lambda$broadcastMetadata$1(Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lTMyu0QOr_vIo4vw913Uk6zN8ww(ILandroid/companion/AssociationInfo;)Z
    .registers 2

    .line 111
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$u7RrHK4ak1H-Ju9dET--knr9MFE(Lcom/android/server/companion/datasync/DataSyncProcessor;ILjava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datasync/DataSyncProcessor;->sendMetadataUpdate(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastMetadata(Lcom/android/server/companion/datasync/DataSyncProcessor;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/DataSyncProcessor;->broadcastMetadata(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monReceiveMetadataUpdate(Lcom/android/server/companion/datasync/DataSyncProcessor;I[B)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datasync/DataSyncProcessor;->onReceiveMetadataUpdate(I[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/datasync/LocalMetadataStore;Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mAssociationsWithTransport:Ljava/util/Set;

    .line 62
    iput-object p1, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 63
    iput-object p2, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    .line 64
    iput-object p3, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 67
    new-instance p1, Lcom/android/server/companion/datasync/DataSyncProcessor$1;

    invoke-direct {p1, p0}, Lcom/android/server/companion/datasync/DataSyncProcessor$1;-><init>(Lcom/android/server/companion/datasync/DataSyncProcessor;)V

    const p2, 0x63776885

    invoke-virtual {p3, p2, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 74
    new-instance p1, Lcom/android/server/companion/datasync/DataSyncProcessor$2;

    invoke-direct {p1, p0}, Lcom/android/server/companion/datasync/DataSyncProcessor$2;-><init>(Lcom/android/server/companion/datasync/DataSyncProcessor;)V

    invoke-virtual {p3, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method


# virtual methods
.method public final broadcastMetadata(Ljava/util/List;)V
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mAssociationsWithTransport:Ljava/util/Set;

    monitor-enter v0

    .line 119
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/datasync/DataSyncProcessor;)V

    .line 120
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda1;-><init>()V

    .line 122
    invoke-static {v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/datasync/DataSyncProcessor;)V

    .line 123
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 126
    iget-object v1, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mAssociationsWithTransport:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 127
    iget-object p0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mAssociationsWithTransport:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda0;-><init>()V

    .line 128
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 129
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 127
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 130
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public getLocalMetadata(I)Landroid/os/PersistableBundle;
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->getMetadataForUser(I)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$broadcastMetadata$1(Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mAssociationsWithTransport:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onReceiveMetadataUpdate(I[B)V
    .registers 6

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received metadata update for associationId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DataSyncProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_1b
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object p2
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_46

    .line 142
    const-string v0, "_timestamp_"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 144
    iget-object v0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 145
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 146
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 147
    invoke-virtual {v0, p2}, Landroid/companion/AssociationInfo$Builder;->setMetadata(Landroid/os/PersistableBundle;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 149
    iget-object p0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    return-void

    :catch_46
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to parse received metadata"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final sendMetadataUpdate(ILjava/util/List;)V
    .registers 5

    .line 154
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 157
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda4;-><init>()V

    .line 158
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    .line 159
    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending metadata update to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " associations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DataSyncProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_34
    iget-object v0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->getMetadataForUser(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const v0, 0x63776885

    .line 169
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)Landroid/util/SparseArray;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p0

    .line 174
    const-string p1, "Failed to send metadata update"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setLocalMetadata(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting local metadata for user=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] feature=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] value=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DataSyncProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->getMetadataForUser(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez p3, :cond_37

    .line 102
    invoke-virtual {v0, p2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    goto :goto_3a

    .line 104
    :cond_37
    invoke-virtual {v0, p2, p3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 106
    :goto_3a
    iget-object p2, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/companion/datasync/LocalMetadataStore;->setMetadataForUser(ILandroid/os/PersistableBundle;)V

    .line 109
    iget-object p2, p0, Lcom/android/server/companion/datasync/DataSyncProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    move-result-object p2

    .line 110
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/server/companion/datasync/DataSyncProcessor$$ExternalSyntheticLambda3;-><init>(I)V

    .line 111
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 112
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datasync/DataSyncProcessor;->sendMetadataUpdate(ILjava/util/List;)V

    return-void
.end method
