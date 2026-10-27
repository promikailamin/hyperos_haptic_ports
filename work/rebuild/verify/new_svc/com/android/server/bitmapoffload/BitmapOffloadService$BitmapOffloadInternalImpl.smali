.class public Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;
.super Lcom/android/server/bitmapoffload/BitmapOffloadInternal;
.source "BitmapOffloadService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;


# direct methods
.method public constructor <init>(Lcom/android/server/bitmapoffload/BitmapOffloadService;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-direct {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPermission(ILandroid/net/Uri;II)Z
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-static {v0}, Lcom/android/server/bitmapoffload/BitmapOffloadService;->-$$Nest$fgetmLock(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 208
    :try_start_7
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-static {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadService;->-$$Nest$fgetmPermissionHandlers(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/bitmapoffload/BitmapOffloadInternal$PermissionHandler;

    .line 209
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_23

    if-eqz p0, :cond_1b

    .line 213
    invoke-interface {p0, p2, p3, p4}, Lcom/android/server/bitmapoffload/BitmapOffloadInternal$PermissionHandler;->isAllowedToOpen(Landroid/net/Uri;II)Z

    move-result p0

    return p0

    .line 211
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No permission handler registered for bitmap source."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_23
    move-exception p0

    .line 209
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final generateFilePath()Ljava/lang/String;
    .registers 3

    .line 217
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mBitmapDir:Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasFreeSpace()Z
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    iget-object v0, v0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mBitmapDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-static {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadService;->-$$Nest$fgetmLowBytes(Lcom/android/server/bitmapoffload/BitmapOffloadService;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public offloadBitmap(ILandroid/graphics/Bitmap;)Landroid/net/Uri;
    .registers 8

    .line 166
    invoke-virtual {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->hasFreeSpace()Z

    move-result v0

    if-nez v0, :cond_f

    .line 167
    const-string p0, "BitmapOffloader"

    const-string p1, "Not offloading because storage space is limited."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->generateFilePath()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 173
    const-string v2, "filename"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "width"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "owner_uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string/jumbo v2, "source"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 182
    :try_start_54
    iget-object p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-static {p1}, Lcom/android/server/bitmapoffload/BitmapOffloadService;->-$$Nest$fgetmResolver(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v4, Lcom/android/server/bitmapoffload/BitmapOffloadContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 185
    iget-object v1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    iget-object v1, v1, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mOffloadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-direct {v4, p0, p2, v0, p1}, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadRunnable;-><init>(Lcom/android/server/bitmapoffload/BitmapOffloadService;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_74
    .catchall {:try_start_54 .. :try_end_74} :catchall_75

    goto :goto_77

    :catchall_75
    move-exception p0

    goto :goto_7b

    .line 191
    :cond_77
    :goto_77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :goto_7b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    throw p0
.end method

.method public registerPermissionHandler(ILcom/android/server/bitmapoffload/BitmapOffloadInternal$PermissionHandler;)V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-static {v0}, Lcom/android/server/bitmapoffload/BitmapOffloadService;->-$$Nest$fgetmLock(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 199
    :try_start_7
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;->this$0:Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-static {p0}, Lcom/android/server/bitmapoffload/BitmapOffloadService;->-$$Nest$fgetmPermissionHandlers(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
