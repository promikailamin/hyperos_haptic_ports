.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private greylist-max-o mCachedWallpaper:Landroid/graphics/Bitmap;

.field private greylist-max-o mCachedWallpaperUserId:I

.field private greylist-max-o mColorCallbackRegistered:Z

.field private final greylist-max-o mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/WallpaperManager$OnColorsChangedListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private blacklist mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

.field private blacklist mLocalColorCallbackAreas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mMainLooperHandler:Landroid/os/Handler;

.field private final greylist-max-o mService:Landroid/app/IWallpaperManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLocalColorCallbackAreas(Landroid/app/WallpaperManager$Globals;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 1

    iget-object p0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .registers 4
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 393
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    .line 379
    new-instance v0, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    .line 394
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 395
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    .line 396
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 397
    return-void
.end method

.method private blacklist getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "hardware"    # Z
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 695
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 696
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-object v1

    .line 701
    :cond_f
    :try_start_f
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 702
    .local v8, "params":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 703
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 702
    move-object v6, p0

    move v9, p2

    invoke-interface/range {v3 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_25} :catch_6d

    .line 706
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_6b

    .line 707
    :try_start_27
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_31} :catch_61
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_61
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_27 .. :try_end_31} :catch_61
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_31} :catch_6d

    .line 709
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_31
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 711
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_36
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "data":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_42

    .line 712
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_36

    .line 714
    :cond_42
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v4

    .line 715
    .local v4, "src":Landroid/graphics/ImageDecoder$Source;
    new-instance v6, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v6, p3, p4}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;-><init>(ZLandroid/app/WallpaperManager$ColorManagementProxy;)V

    invoke-static {v4, v6}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_57

    .line 723
    :try_start_53
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_56} :catch_61
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_61
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_53 .. :try_end_56} :catch_61
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_6d

    .line 715
    return-object v6

    .line 707
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local v5    # "data":I
    :catchall_57
    move-exception v3

    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v4

    :try_start_5d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "params":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "userId":I
    .end local p3    # "hardware":Z
    .end local p4    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :goto_60
    throw v3
    :try_end_61
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5d .. :try_end_61} :catch_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_61
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5d .. :try_end_61} :catch_61
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_61} :catch_6d

    .line 723
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "params":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "userId":I
    .restart local p3    # "hardware":Z
    .restart local p4    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :catch_61
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_62
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t decode file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_6d

    .line 729
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v8    # "params":Landroid/os/Bundle;
    :cond_6b
    nop

    .line 730
    return-object v1

    .line 727
    :catch_6d
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 734
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    .line 735
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 737
    :try_start_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 738
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_10} :catch_16
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 742
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 738
    return-object v1

    .line 742
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_14
    move-exception v1

    goto :goto_25

    .line 739
    :catch_16
    move-exception v2

    .line 740
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_17
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t decode stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_14

    .line 742
    nop

    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 743
    goto :goto_29

    .line 742
    :goto_25
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 743
    throw v1

    .line 745
    :cond_29
    :goto_29
    return-object v1
.end method

.method static synthetic blacklist lambda$getCurrentWallpaperLocked$2(ZLandroid/app/WallpaperManager$ColorManagementProxy;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6
    .param p0, "hardware"    # Z
    .param p1, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "source"    # Landroid/graphics/ImageDecoder$Source;

    .line 717
    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 719
    if-eqz p1, :cond_a

    .line 720
    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager$ColorManagementProxy;->doColorManagement(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;)V

    .line 722
    :cond_a
    return-void
.end method

.method static synthetic blacklist lambda$removeOnColorsChangedListener$0(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z
    .registers 3
    .param p0, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p1, "pair"    # Landroid/util/Pair;

    .line 492
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 13
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .line 436
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    monitor-enter p0

    .line 437
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 438
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 439
    .local v2, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-nez v2, :cond_26

    .line 440
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 441
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_26
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_43

    .line 444
    nop

    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    goto :goto_5

    .line 447
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_37
    .catchall {:try_start_2b .. :try_end_36} :catchall_43

    .line 452
    goto :goto_41

    .line 449
    :catch_37
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for local color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    monitor-exit p0

    .line 454
    return-void

    .line 453
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V
    .registers 8
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 419
    monitor-enter p0

    .line 420
    :try_start_1
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-nez v0, :cond_18

    .line 422
    :try_start_5
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e
    .catchall {:try_start_5 .. :try_end_d} :catchall_24

    .line 427
    goto :goto_18

    .line 424
    :catch_e
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t register for color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    monitor-exit p0

    .line 431
    return-void

    .line 430
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v0
.end method

.method greylist-max-o forgetLoadedWallpaper()V
    .registers 3

    .line 686
    monitor-enter p0

    .line 687
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 688
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 689
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 690
    monitor-exit p0

    .line 691
    return-void

    .line 690
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public blacklist getCurrentWallpaperSnapshot(III)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "displayId"    # I
    .param p3, "which"    # I

    .line 546
    const-wide/16 v0, 0x2

    const-string v2, "getCurrentWallpaperBitmap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 549
    .local v3, "buffer":Landroid/hardware/HardwareBuffer;
    new-instance v4, Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;-><init>()V

    .line 555
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;->setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;

    .line 556
    invoke-virtual {v4}, Landroid/view/SurfaceControl$WallpaperCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$WallpaperCaptureArgs;

    move-result-object v4

    .line 550
    invoke-static {v4}, Landroid/view/SurfaceControl;->captureWallpaperLayer(Landroid/view/SurfaceControl$WallpaperCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v4

    .line 557
    .local v4, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v4, :cond_31

    .line 558
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to screenshot wallpaper: screenshotBuffer is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    const/4 v0, 0x0

    return-object v0

    .line 562
    :cond_31
    invoke-virtual {v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    .line 563
    if-eqz v3, :cond_3f

    .line 564
    invoke-virtual {v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 566
    :cond_3f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 567
    return-object v2
.end method

.method blacklist getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 6
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 530
    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 531
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must request colors for exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_f
    :goto_f
    :try_start_f
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return-object v0

    .line 537
    :catch_16
    move-exception v0

    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic blacklist lambda$onWallpaperColorsChanged$1$android-app-WallpaperManager$Globals(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 7
    .param p1, "listener"    # Landroid/util/Pair;
    .param p2, "colors"    # Landroid/app/WallpaperColors;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 518
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 519
    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 520
    .local v1, "stillExists":Z
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_16

    .line 521
    if-eqz v1, :cond_15

    .line 522
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-interface {v0, p2, p3, p4}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 524
    :cond_15
    return-void

    .line 520
    .end local v1    # "stillExists":Z
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public greylist-max-o onWallpaperChanged()V
    .registers 1

    .line 405
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 406
    return-void
.end method

.method public greylist-max-o onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 14
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 508
    monitor-enter p0

    .line 509
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 510
    .local v1, "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 511
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_20

    .line 512
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    move-object v2, v3

    move-object v8, v2

    goto :goto_21

    .line 511
    :cond_20
    move-object v8, v2

    .line 514
    .end local v2    # "handler":Landroid/os/Handler;
    .local v8, "handler":Landroid/os/Handler;
    :goto_21
    new-instance v9, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    nop

    .end local v1    # "listener":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;>;"
    .end local v8    # "handler":Landroid/os/Handler;
    goto :goto_7

    .line 526
    :cond_31
    monitor-exit p0

    .line 527
    return-void

    .line 526
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "hardware"    # Z
    .param p6, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 580
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 582
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_11

    if-nez v0, :cond_10

    .line 583
    return-object v1

    .line 587
    :cond_10
    goto :goto_17

    .line 585
    :catch_11
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 589
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    monitor-enter p0

    .line 590
    :try_start_18
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    iget v2, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    if-ne v2, p4, :cond_2a

    .line 591
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 592
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    .line 594
    :cond_2a
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 596
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_8c

    .line 598
    :try_start_30
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 600
    .local v0, "currentWallpaper":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_40

    .line 601
    monitor-enter p0
    :try_end_37
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30 .. :try_end_37} :catch_57
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_37} :catch_41

    .line 602
    :try_start_37
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 603
    iput p4, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaperUserId:I

    .line 604
    monitor-exit p0

    return-object v0

    .line 605
    :catchall_3d
    move-exception v2

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3d

    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "hardware":Z
    .end local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :try_start_3f
    throw v2
    :try_end_40
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_40} :catch_57
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_40} :catch_41

    .line 600
    .end local v0    # "currentWallpaper":Landroid/graphics/Bitmap;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "hardware":Z
    .restart local p6    # "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    :cond_40
    goto :goto_72

    .line 609
    :catch_41
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_56

    .line 611
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 615
    :cond_56
    throw v0

    .line 607
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_57
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of memory loading the current wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_72
    nop

    .line 618
    :goto_73
    if-eqz p2, :cond_8b

    .line 619
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 620
    .local v0, "defaultWallpaper":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 621
    :cond_7f
    invoke-direct {p0, p1, p3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    monitor-enter p0

    .line 623
    :try_start_84
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 624
    monitor-exit p0

    .line 626
    :cond_87
    return-object v0

    .line 624
    :catchall_88
    move-exception v1

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_88

    throw v1

    .line 628
    .end local v0    # "defaultWallpaper":Landroid/graphics/Bitmap;
    :cond_8b
    return-object v1

    .line 596
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "which"    # I
    .param p4, "cmProxy"    # Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist peekWallpaperDimensions(Landroid/content/Context;ZI)Landroid/graphics/Rect;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z
    .param p3, "userId"    # I

    .line 632
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_1b

    .line 634
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 635
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_15

    return-object v0

    .line 639
    :cond_14
    goto :goto_1b

    .line 637
    :catch_15
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 642
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    .line 643
    .local v0, "dimensions":Landroid/graphics/Rect;
    monitor-enter p0

    .line 644
    const/4 v1, 0x0

    .line 646
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_21
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v10, "params":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    .line 647
    move-object v8, p0

    move v11, p3

    invoke-interface/range {v5 .. v11}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object v1, v5

    .line 650
    if-eqz v1, :cond_52

    .line 651
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 652
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 653
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v2, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 654
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_51} :catch_5c
    .catchall {:try_start_21 .. :try_end_51} :catchall_5a

    move-object v0, v6

    .line 659
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "params":Landroid/os/Bundle;
    :cond_52
    if-eqz v1, :cond_6e

    .line 661
    :try_start_54
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_ac

    .line 663
    :goto_57
    goto :goto_6e

    .line 662
    :catch_58
    move-exception v5

    goto :goto_57

    .line 659
    :catchall_5a
    move-exception v2

    goto :goto_a3

    .line 656
    :catch_5c
    move-exception v5

    .line 657
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_5d
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "peek wallpaper dimensions failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_5a

    .line 659
    nop

    .end local v5    # "ex":Landroid/os/RemoteException;
    if-eqz v1, :cond_6e

    .line 661
    :try_start_6a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_58
    .catchall {:try_start_6a .. :try_end_6d} :catchall_ac

    goto :goto_57

    .line 666
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_6e
    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_ac

    .line 668
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_a2

    :cond_7d
    if-eqz p2, :cond_a2

    .line 670
    invoke-static {p1, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1

    .line 671
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_a2

    .line 673
    :try_start_85
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 674
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 675
    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 676
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v4, v4, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_98
    .catchall {:try_start_85 .. :try_end_98} :catchall_9d

    move-object v0, v2

    .line 678
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 679
    goto :goto_a2

    .line 678
    :catchall_9d
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 679
    throw v2

    .line 682
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_a2
    :goto_a2
    return-object v0

    .line 659
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_a3
    if-eqz v1, :cond_aa

    .line 661
    :try_start_a5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_ac

    .line 663
    goto :goto_aa

    .line 662
    :catch_a9
    move-exception v3

    .line 665
    :cond_aa
    :goto_aa
    nop

    .end local v0    # "dimensions":Landroid/graphics/Rect;
    .end local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "returnDefault":Z
    .end local p3    # "userId":I
    :try_start_ab
    throw v2

    .line 666
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "dimensions":Landroid/graphics/Rect;
    .restart local p0    # "this":Landroid/app/WallpaperManager$Globals;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "returnDefault":Z
    .restart local p3    # "userId":I
    :catchall_ac
    move-exception v1

    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_ac

    throw v1
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V
    .registers 13
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 459
    monitor-enter p0

    .line 460
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 461
    .local v0, "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5a

    .line 464
    :cond_12
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 465
    .local v2, "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 466
    .local v3, "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    if-eqz v3, :cond_37

    if-eq v2, p1, :cond_37

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_5c

    .line 467
    .end local v2    # "cb":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .end local v3    # "areas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_37
    goto :goto_1c

    .line 469
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_4d

    .line 471
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IWallpaperManager;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4d} :catch_4e
    .catchall {:try_start_38 .. :try_end_4d} :catchall_5c

    .line 478
    :cond_4d
    goto :goto_58

    .line 475
    :catch_4e
    move-exception v1

    .line 477
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4f
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t unregister for local color updates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_58
    monitor-exit p0

    .line 480
    return-void

    .line 462
    .restart local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-void

    .line 479
    .end local v0    # "removeAreas":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/RectF;>;"
    :catchall_5c
    move-exception v0

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V
    .registers 7
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 491
    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;-><init>(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 494
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz v0, :cond_2a

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 497
    :try_start_1a
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2c

    .line 501
    goto :goto_2a

    .line 498
    :catch_20
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t unregister color updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 504
    return-void

    .line 503
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v0
.end method
