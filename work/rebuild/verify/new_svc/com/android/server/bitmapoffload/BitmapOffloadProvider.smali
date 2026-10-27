.class public Lcom/android/server/bitmapoffload/BitmapOffloadProvider;
.super Landroid/content/ContentProvider;
.source "BitmapOffloadProvider.java"


# instance fields
.field public mBitmapOffloadService:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

.field public final mEntries:Ljava/util/HashMap;

.field public final mId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mEntries:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 226
    invoke-virtual {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->enforceCallerSystem()V

    .line 228
    iget-object p2, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 229
    :try_start_6
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mEntries:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 230
    :goto_13
    monitor-exit p2

    return p0

    :catchall_15
    move-exception p0

    .line 231
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 261
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 262
    const-string p1, "Bitmap Offload Cache stats:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 265
    :try_start_b
    iget-object p3, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mEntries:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_16
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 266
    iget-object v2, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;

    if-eqz v1, :cond_4b

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_50

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 272
    :cond_4e
    monitor-exit p1

    return-void

    :goto_50
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_49

    throw p0
.end method

.method public final enforceCallerSystem()V
    .registers 3

    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 153
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v1, p0, :cond_15

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    if-ne p0, v0, :cond_15

    return-void

    .line 154
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only local calls are allowed"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePermissions(Landroid/net/Uri;Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;I)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mBitmapOffloadService:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    if-nez v0, :cond_e

    .line 139
    const-class v0, Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mBitmapOffloadService:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    .line 141
    :cond_e
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mBitmapOffloadService:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    invoke-static {p2}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->-$$Nest$fgetsource(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;)I

    move-result v0

    invoke-static {p2}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->-$$Nest$fgetownerUid(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;)I

    move-result p2

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/android/server/bitmapoffload/BitmapOffloadInternal;->checkPermission(ILandroid/net/Uri;II)Z

    move-result p0

    if-eqz p0, :cond_1f

    return-void

    .line 144
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Access to offloaded bitmap "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 195
    const-string p0, "image/webp"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11

    .line 200
    invoke-virtual {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->enforceCallerSystem()V

    if-eqz p2, :cond_5d

    .line 206
    sget-object p1, Lcom/android/server/bitmapoffload/BitmapOffloadContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 207
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    .line 206
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 209
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 211
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 212
    const-string/jumbo v0, "owner_uid"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 213
    const-string/jumbo v0, "source"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 215
    new-instance p2, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;

    new-instance v1, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;-><init>(IIIILjava/lang/String;Lcom/android/server/bitmapoffload/BitmapOffloadProvider-IA;)V

    const/4 v0, 0x0

    invoke-direct {p2, v1, v0}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;-><init>(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;Lcom/android/server/bitmapoffload/BitmapOffloadProvider-IA;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_52
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mEntries:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    monitor-exit v1

    return-object p1

    :catchall_59
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_59

    throw p0

    .line 203
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "values can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 9

    .line 163
    iget-object v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_3
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;

    const/4 v2, 0x0

    if-nez v0, :cond_29

    .line 166
    const-string p0, "BitmapOffloadProvider"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not retrieve bitmap for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    monitor-exit v1

    return-object v2

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    .line 169
    :cond_29
    iget-object v3, v0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mBitmapData:Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;

    .line 170
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_26

    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 173
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->enforcePermissions(Landroid/net/Uri;Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;I)V

    .line 175
    invoke-virtual {v0}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->waitForCompletion()Z

    move-result p0

    if-nez p0, :cond_3a

    return-object v2

    .line 179
    :cond_3a
    iget-object p0, v0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mNumOpens:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 181
    new-instance p0, Ljava/io/File;

    invoke-static {v3}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;->-$$Nest$fgetfilePath(Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapData;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    .line 181
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 183
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v0

    .line 170
    :goto_5a
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_26

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .line 237
    invoke-virtual {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->enforceCallerSystem()V

    if-eqz p2, :cond_56

    .line 244
    iget-object p3, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 245
    :try_start_8
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider;->mEntries:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;

    const/4 p4, 0x0

    if-nez p0, :cond_2d

    .line 247
    const-string p0, "BitmapOffloadProvider"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not retrieve bitmap for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    monitor-exit p3

    return p4

    :catchall_2b
    move-exception p0

    goto :goto_54

    .line 250
    :cond_2d
    const-string/jumbo p1, "status"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 251
    const-string v0, "filesize"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 252
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->mSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "filesize"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 254
    :cond_4f
    invoke-virtual {p0, p1}, Lcom/android/server/bitmapoffload/BitmapOffloadProvider$BitmapEntry;->updateStatus(I)V

    .line 255
    monitor-exit p3

    return p4

    :goto_54
    monitor-exit p3
    :try_end_55
    .catchall {:try_start_8 .. :try_end_55} :catchall_2b

    throw p0

    .line 240
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "values can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
