.class public Lcom/android/server/people/data/ConversationStore;
.super Ljava/lang/Object;
.source "ConversationStore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ConversationStore"


# instance fields
.field public final mContactUriToShortcutIdMap:Ljava/util/Map;

.field public final mConversationInfoMap:Ljava/util/Map;

.field public mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

.field public final mLocusIdToShortcutIdMap:Ljava/util/Map;

.field public final mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

.field public final mPackageDir:Ljava/io/File;

.field public final mPhoneNumberToShortcutIdMap:Ljava/util/Map;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$bbezRNjojDv1JpDhGUn462JKUkw(Ljava/io/DataOutputStream;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 3

    .line 221
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getBackupPayload()[B

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 226
    :cond_7
    :try_start_7
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 227
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 229
    sget-object p1, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v0, "Failed to write conversation info to backup payload."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    .line 84
    iput-object p2, p0, Lcom/android/server/people/data/ConversationStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 85
    iput-object p1, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V
    .registers 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    return-void
.end method

.method public deleteConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 4

    .line 136
    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    .line 139
    monitor-exit p0

    return-object p1

    :catchall_e
    move-exception p1

    goto :goto_41

    .line 142
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 144
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 149
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 154
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 159
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_e

    .line 162
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    return-object p1

    .line 161
    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_e

    throw p1
.end method

.method public forAllConversations(Ljava/util/function/Consumer;)V
    .registers 5

    .line 168
    monitor-enter p0

    .line 169
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, p0, :cond_20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/people/data/ConversationInfo;

    .line 172
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_12

    :cond_20
    return-void

    :catchall_21
    move-exception p1

    .line 170
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public getBackupPayload()[B
    .registers 4

    .line 218
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 220
    new-instance v2, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;-><init>(Ljava/io/DataOutputStream;)V

    invoke-virtual {p0, v2}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    const/4 p0, -0x1

    .line 233
    :try_start_13
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_1b

    .line 238
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_1b
    move-exception p0

    .line 235
    sget-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write conversation infos end token to backup payload."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_f

    .line 178
    :try_start_3
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    goto :goto_10

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized getConversationByContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public final getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
    .registers 5

    .line 301
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_26

    .line 302
    sget-object v0, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package data directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 305
    :cond_26
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    if-nez v0, :cond_37

    .line 306
    new-instance v0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPackageDir:Ljava/io/File;

    const-string v2, "conversations"

    iget-object v3, p0, Lcom/android/server/people/data/ConversationStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    .line 309
    :cond_37
    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfosProtoDiskReadWriter:Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    return-object p0
.end method

.method public loadConversationsFromDisk()V
    .registers 3

    .line 95
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_26

    .line 99
    :cond_7
    const-string v1, "conversations"

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_12

    goto :goto_26

    .line 104
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/ConversationInfo;

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    goto :goto_16

    :cond_26
    :goto_26
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 205
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 207
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 209
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    .line 210
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 212
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->deleteConversationsFile()V

    :cond_24
    return-void

    :catchall_25
    move-exception v0

    .line 209
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public restore([B)V
    .registers 5

    .line 242
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 244
    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    :goto_e
    const/4 v1, -0x1

    if-eq p1, v1, :cond_25

    .line 247
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v0, v1, v2, p1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 249
    invoke-static {v1}, Lcom/android/server/people/data/ConversationInfo;->readFromBackupPayload([B)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 246
    :cond_20
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_24} :catch_26

    goto :goto_e

    :cond_25
    return-void

    :catch_26
    move-exception p0

    .line 256
    sget-object p1, Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;

    const-string v0, "Failed to read conversation info from payload."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public saveConversationsToDisk()V
    .registers 4

    .line 116
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 119
    monitor-enter p0

    .line 120
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->saveConversationsImmediately(Ljava/util/List;)V

    return-void

    :catchall_17
    move-exception v0

    .line 121
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    return-void
.end method

.method public final scheduleUpdateConversationsOnDisk()V
    .registers 4

    .line 289
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationStore;->getConversationInfosProtoDiskReadWriter()Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 292
    monitor-enter p0

    .line 293
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 295
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->scheduleConversationsSave(Ljava/util/List;)V

    return-void

    :catchall_17
    move-exception v0

    .line 294
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    return-void
.end method

.method public final declared-synchronized updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V
    .registers 5

    monitor-enter p0

    .line 262
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 266
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_4b

    .line 269
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 271
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 276
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 281
    iget-object v1, p0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_1a

    .line 283
    :cond_49
    monitor-exit p0

    return-void

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_1a

    throw p1
.end method
