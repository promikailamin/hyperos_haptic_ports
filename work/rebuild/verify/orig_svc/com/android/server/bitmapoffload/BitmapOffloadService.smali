.class public Lcom/android/server/bitmapoffload/BitmapOffloadService;
.super Lcom/android/server/SystemService;
.source "BitmapOffloadService.java"


# instance fields
.field mBitmapDir:Ljava/io/File;

.field mInternalService:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mLowBytes:J

.field mOffloadThread:Landroid/os/HandlerThread;

.field public final mPermissionHandlers:Landroid/util/SparseArray;

.field public final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowBytes(Lcom/android/server/bitmapoffload/BitmapOffloadService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mLowBytes:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionHandlers(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mPermissionHandlers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/bitmapoffload/BitmapOffloadService;)Landroid/content/ContentResolver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;

    invoke-direct {v0, p0}, Lcom/android/server/bitmapoffload/BitmapOffloadService$BitmapOffloadInternalImpl;-><init>(Lcom/android/server/bitmapoffload/BitmapOffloadService;)V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mInternalService:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mPermissionHandlers:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mResolver:Landroid/content/ContentResolver;

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "offloaded-bitmaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mBitmapDir:Ljava/io/File;

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_42

    .line 90
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mBitmapDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_47

    .line 92
    const-string v0, "BitmapOffloader"

    const-string v1, "Failed to create bitmap directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 96
    :cond_42
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mBitmapDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 98
    :cond_47
    :goto_47
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    if-eqz p1, :cond_5a

    .line 100
    iget-object v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mBitmapDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mLowBytes:J

    goto :goto_64

    .line 103
    :cond_5a
    sget-object p1, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v0, 0x100

    invoke-virtual {p1, v0, v1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mLowBytes:J

    .line 106
    :goto_64
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "BitmapOffloadThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mOffloadThread:Landroid/os/HandlerThread;

    .line 107
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 2

    .line 112
    const-class v0, Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    iget-object p0, p0, Lcom/android/server/bitmapoffload/BitmapOffloadService;->mInternalService:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
