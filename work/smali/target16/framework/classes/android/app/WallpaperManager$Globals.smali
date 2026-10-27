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
.field private blacklist mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

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
.method public static synthetic blacklist $r8$lambda$Ng8UFjjVrgNJHwlYbAWyESmpli0(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperManager$Globals;->lambda$onWallpaperColorsChanged$1(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    return-void
.end method

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

    .line 594
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    .line 578
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    .line 580
    new-instance v0, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;)V

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    .line 595
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 596
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;

    .line 597
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 598
    return-void
.end method

.method private blacklist getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 16

    .line 878
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 879
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return-object v1

    .line 884
    :cond_f
    :try_start_f
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPMS.getWallpaperWithFeature_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 886
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 887
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 886
    const/4 v9, 0x1

    move-object v5, p0

    move v6, p2

    move v8, p3

    invoke-interface/range {v2 .. v9}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 889
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3f} :catch_87

    .line 891
    if-nez p2, :cond_42

    .line 892
    return-object v1

    .line 894
    :cond_42
    :try_start_42
    new-instance p3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_47
    .catch Ljava/lang/OutOfMemoryError; {:try_start_42 .. :try_end_47} :catch_7a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_7a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_42 .. :try_end_47} :catch_7a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_87

    .line 896
    :try_start_47
    sget-object p2, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_WALLPAPER:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 897
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    goto :goto_61

    .line 900
    :cond_59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 902
    :goto_61
    new-instance p2, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4, p5}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda0;-><init>(ZLandroid/app/WallpaperManager$ColorManagementProxy;)V

    invoke-static {p1, p2}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_6a
    .catchall {:try_start_47 .. :try_end_6a} :catchall_6e

    .line 910
    :try_start_6a
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6a .. :try_end_6d} :catch_7a
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_7a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6a .. :try_end_6d} :catch_7a
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6d} :catch_87

    .line 902
    return-object p1

    .line 894
    :catchall_6e
    move-exception v0

    move-object p1, v0

    :try_start_70
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_79

    :catchall_74
    move-exception v0

    move-object p2, v0

    :try_start_76
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_79
    throw p1
    :try_end_7a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_76 .. :try_end_7a} :catch_7a
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7a} :catch_7a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_76 .. :try_end_7a} :catch_7a
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7a} :catch_87

    .line 910
    :catch_7a
    move-exception v0

    move-object p1, v0

    .line 911
    :try_start_7c
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can\'t decode file"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_85} :catch_87

    .line 915
    nop

    .line 916
    return-object v1

    .line 913
    :catch_87
    move-exception v0

    move-object p1, v0

    .line 914
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private greylist-max-o getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPMS.getDefaultWallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 922
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 923
    :cond_20
    nop

    .line 924
    const-string v0, "WPMS.openDefaultWallpaper"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 925
    const/4 v0, 0x0

    :try_start_27
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_2b} :catch_53
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_53

    .line 926
    :try_start_2b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 927
    if-eqz p1, :cond_41

    .line 928
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 929
    const-string v1, "WPMS.decodeStream"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 930
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 931
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_47

    .line 933
    :cond_41
    if-eqz p1, :cond_46

    :try_start_43
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_46} :catch_53
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_53

    .line 935
    :cond_46
    goto :goto_5d

    .line 925
    :catchall_47
    move-exception p2

    if-eqz p1, :cond_52

    :try_start_4a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception p1

    :try_start_4f
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    throw p2
    :try_end_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f .. :try_end_53} :catch_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_53

    .line 933
    :catch_53
    move-exception p1

    .line 934
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Can\'t decode stream"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    :cond_5d
    :goto_5d
    monitor-enter p0

    .line 938
    :try_start_5e
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 939
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_65

    .line 940
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 941
    return-object v0

    .line 939
    :catchall_65
    move-exception p1

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1
.end method

.method private blacklist isStaticWallpaper(I)Z
    .registers 3

    .line 950
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_11

    .line 955
    :try_start_4
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->isStaticWallpaper(I)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p1

    .line 956
    :catch_b
    move-exception p1

    .line 957
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 951
    :cond_11
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperService not running"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Landroid/os/DeadSystemException;

    invoke-direct {v0}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic blacklist lambda$getCurrentWallpaperLocked$2(ZLandroid/app/WallpaperManager$ColorManagementProxy;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    .line 904
    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 906
    if-eqz p1, :cond_a

    .line 907
    invoke-virtual {p1, p2, p3}, Landroid/app/WallpaperManager$ColorManagementProxy;->doColorManagement(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;)V

    .line 909
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$onWallpaperColorsChanged$1(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 7

    .line 719
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    monitor-enter v0

    .line 720
    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 721
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_16

    .line 722
    if-eqz v1, :cond_15

    .line 723
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-interface {p1, p2, p3, p4}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 725
    :cond_15
    return-void

    .line 721
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method static synthetic blacklist lambda$removeOnColorsChangedListener$0(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z
    .registers 2

    .line 693
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .line 637
    monitor-enter p0

    .line 638
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 639
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 640
    if-nez v2, :cond_25

    .line 641
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 642
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_25
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_42

    .line 645
    goto :goto_5

    .line 648
    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IWallpaperManager;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_35
    .catchall {:try_start_29 .. :try_end_34} :catchall_42

    .line 653
    goto :goto_40

    .line 650
    :catch_35
    move-exception v0

    move-object p1, v0

    .line 652
    :try_start_37
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can\'t register for local color updates"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    :goto_40
    monitor-exit p0

    .line 655
    return-void

    .line 654
    :catchall_42
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_42

    throw p1
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V
    .registers 6

    .line 620
    monitor-enter p0

    .line 621
    :try_start_1
    iget-boolean v0, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-nez v0, :cond_18

    .line 623
    :try_start_5
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0, p3, p4}, Landroid/app/IWallpaperManager;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 624
    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e
    .catchall {:try_start_5 .. :try_end_d} :catchall_24

    .line 628
    goto :goto_18

    .line 625
    :catch_e
    move-exception p3

    .line 627
    :try_start_f
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p4

    const-string v0, "Can\'t register for color updates"

    invoke-static {p4, v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    :cond_18
    :goto_18
    iget-object p3, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance p4, Landroid/util/Pair;

    invoke-direct {p4, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    monitor-exit p0

    .line 632
    return-void

    .line 631
    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw p1
.end method

.method greylist-max-o forgetLoadedWallpaper()V
    .registers 2

    .line 870
    monitor-enter p0

    .line 871
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 872
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 873
    monitor-exit p0

    .line 874
    return-void

    .line 873
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method blacklist getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 5

    .line 731
    invoke-static {p1}, Landroid/app/WallpaperManager;->-$$Nest$smcheckExactlyOneWallpaperFlagSet(I)V

    .line 734
    :try_start_3
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object p1

    .line 735
    :catch_a
    move-exception p1

    .line 738
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o onWallpaperChanged()V
    .registers 1

    .line 606
    invoke-virtual {p0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 607
    return-void
.end method

.method public greylist-max-o onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 12

    .line 709
    monitor-enter p0

    .line 710
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/Pair;

    .line 711
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    .line 712
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_36

    if-nez v2, :cond_23

    .line 713
    :try_start_1c
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mMainLooperHandler:Landroid/os/Handler;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    goto :goto_23

    .line 727
    :catchall_1f
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_39

    .line 715
    :cond_23
    :goto_23
    :try_start_23
    new-instance v2, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_36

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    :try_start_29
    invoke-direct/range {v2 .. v7}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 726
    move-object p1, v5

    move p2, v6

    move p3, v7

    goto :goto_7

    .line 727
    :cond_33
    move-object v3, p0

    monitor-exit p0

    .line 728
    return-void

    .line 727
    :catchall_36
    move-exception v0

    move-object v3, p0

    :goto_38
    move-object p1, v0

    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_3b

    throw p1

    :catchall_3b
    move-exception v0

    goto :goto_38
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 15

    .line 759
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 761
    :try_start_5
    const-string v0, "WPMS.isWallpaperSupported"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_1f
    .catchall {:try_start_5 .. :try_end_14} :catchall_26

    if-nez v0, :cond_1b

    .line 763
    nop

    .line 768
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 763
    return-object v1

    .line 768
    :cond_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 769
    goto :goto_2c

    .line 765
    :catch_1f
    move-exception v0

    move-object p1, v0

    .line 766
    :try_start_21
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_26

    .line 768
    :catchall_26
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 769
    throw p1

    .line 771
    :cond_2c
    :goto_2c
    monitor-enter p0

    .line 772
    :try_start_2d
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_f6

    if-eqz v0, :cond_4c

    :try_start_31
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    invoke-virtual {v0, p4, p3}, Landroid/app/WallpaperManager$CachedWallpaper;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    .line 773
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4c

    .line 774
    iget-object p1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    iget-object p1, p1, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_47

    return-object p1

    .line 812
    :catchall_47
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_f9

    .line 776
    :cond_4c
    :try_start_4c
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_f6

    .line 777
    nop

    .line 779
    :try_start_4f
    const-string v0, "WPMS.getCurrentWallpaperLocked"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f .. :try_end_54} :catch_ac
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_54} :catch_6c
    .catchall {:try_start_4f .. :try_end_54} :catchall_67

    .line 780
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    :try_start_5a
    invoke-direct/range {v2 .. v7}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;IIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_5e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5a .. :try_end_5e} :catch_65
    .catch Ljava/lang/SecurityException; {:try_start_5a .. :try_end_5e} :catch_63
    .catchall {:try_start_5a .. :try_end_5e} :catchall_ef

    .line 806
    :try_start_5e
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_fb

    .line 807
    goto/16 :goto_d1

    .line 784
    :catch_63
    move-exception v0

    goto :goto_71

    .line 782
    :catch_65
    move-exception v0

    goto :goto_b1

    .line 806
    :catchall_67
    move-exception v0

    move-object v2, p0

    :goto_69
    move-object p1, v0

    goto/16 :goto_f2

    .line 784
    :catch_6c
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    :goto_71
    move-object p1, v0

    .line 791
    const-wide/32 p3, 0xe4ad173

    :try_start_75
    invoke-static {p3, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p3

    if-eqz p3, :cond_97

    .line 792
    const-wide/32 p3, 0xe2815da

    invoke-static {p3, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p3

    if-nez p3, :cond_97

    .line 793
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No permission to access wallpaper, returning default wallpaper to avoid crashing legacy app."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 p1, 0x1

    invoke-direct {p0, v3, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_92
    .catchall {:try_start_75 .. :try_end_92} :catchall_ef

    .line 806
    :try_start_92
    invoke-static {}, Landroid/os/Trace;->endSection()V

    monitor-exit p0
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_fb

    .line 795
    return-object p1

    .line 798
    :cond_97
    :try_start_97
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p4, 0x1b

    if-ge p3, p4, :cond_ab

    .line 799
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p3, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 803
    :cond_ab
    throw p1

    .line 782
    :catch_ac
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    :goto_b1
    move-object p1, v0

    .line 783
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Out of memory loading the current wallpaper: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_97 .. :try_end_cc} :catchall_ef

    .line 806
    :goto_cc
    :try_start_cc
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 807
    nop

    .line 808
    move-object p1, v1

    :goto_d1
    if-eqz p1, :cond_dc

    .line 809
    new-instance p2, Landroid/app/WallpaperManager$CachedWallpaper;

    invoke-direct {p2, p1, v5, v4}, Landroid/app/WallpaperManager$CachedWallpaper;-><init>(Landroid/graphics/Bitmap;II)V

    iput-object p2, v2, Landroid/app/WallpaperManager$Globals;->mCachedWallpaper:Landroid/app/WallpaperManager$CachedWallpaper;

    .line 810
    monitor-exit p0

    return-object p1

    .line 812
    :cond_dc
    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_cc .. :try_end_dd} :catchall_fb

    .line 813
    if-nez p2, :cond_ea

    const/4 p1, 0x2

    if-ne v4, p1, :cond_e9

    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->isStaticWallpaper(I)Z

    move-result p1

    if-eqz p1, :cond_e9

    goto :goto_ea

    .line 816
    :cond_e9
    return-object v1

    .line 814
    :cond_ea
    :goto_ea
    invoke-direct {p0, v3, v4}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 806
    :catchall_ef
    move-exception v0

    goto/16 :goto_69

    :goto_f2
    :try_start_f2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 807
    throw p1

    .line 812
    :catchall_f6
    move-exception v0

    move-object v2, p0

    :goto_f8
    move-object p1, v0

    :goto_f9
    monitor-exit p0
    :try_end_fa
    .catchall {:try_start_f2 .. :try_end_fa} :catchall_fb

    throw p1

    :catchall_fb
    move-exception v0

    goto :goto_f8
.end method

.method public blacklist peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;
    .registers 12

    .line 743
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist peekWallpaperDimensions(Landroid/content/Context;ZII)Landroid/graphics/Rect;
    .registers 16

    .line 822
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_1e

    .line 824
    :try_start_4
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 825
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_17

    return-object p1

    .line 829
    :cond_16
    goto :goto_1e

    .line 827
    :catch_17
    move-exception v0

    move-object p1, v0

    .line 828
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 832
    :cond_1e
    :goto_1e
    nop

    .line 833
    monitor-enter p0

    .line 834
    :try_start_20
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_c6

    .line 835
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_28
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 836
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_78
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_73
    .catchall {:try_start_28 .. :try_end_32} :catchall_c6

    .line 835
    const/4 v7, 0x1

    move-object v3, p0

    move v4, p3

    move v6, p4

    :try_start_36
    invoke-interface/range {v0 .. v7}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3a} :catch_71
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_6f
    .catchall {:try_start_36 .. :try_end_3a} :catchall_cb

    .line 839
    if-eqz p3, :cond_63

    .line 840
    :try_start_3c
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 841
    iput-boolean v8, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 842
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, v9, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 843
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p4, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v10, v10, v1, p4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_55

    move-object p4, v0

    goto :goto_64

    .line 835
    :catchall_55
    move-exception v0

    move-object p4, v0

    if-eqz p3, :cond_62

    :try_start_59
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_62

    :catchall_5d
    move-exception v0

    move-object p3, v0

    :try_start_5f
    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw p4
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_63} :catch_71
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_6f
    .catchall {:try_start_5f .. :try_end_63} :catchall_cb

    .line 839
    :cond_63
    move-object p4, v9

    .line 845
    :goto_64
    if-eqz p3, :cond_87

    :try_start_66
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_69} :catch_6c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a
    .catchall {:try_start_66 .. :try_end_69} :catchall_cb

    goto :goto_87

    .line 847
    :catch_6a
    move-exception v0

    goto :goto_88

    .line 845
    :catch_6c
    move-exception v0

    move-object p3, v0

    goto :goto_7d

    .line 847
    :catch_6f
    move-exception v0

    goto :goto_76

    .line 845
    :catch_71
    move-exception v0

    goto :goto_7b

    .line 847
    :catch_73
    move-exception v0

    move-object v3, p0

    move v4, p3

    :goto_76
    move-object p4, v9

    goto :goto_88

    .line 845
    :catch_78
    move-exception v0

    move-object v3, p0

    move v4, p3

    :goto_7b
    move-object p3, v0

    move-object p4, v9

    .line 846
    :goto_7d
    :try_start_7d
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "peek wallpaper dimensions failed"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    :cond_87
    :goto_87
    nop

    .line 850
    :goto_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_cb

    .line 852
    if-eqz p4, :cond_97

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-eqz p3, :cond_97

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-nez p3, :cond_c5

    :cond_97
    if-nez p2, :cond_a2

    const/4 p2, 0x2

    if-ne v4, p2, :cond_c5

    .line 853
    invoke-direct {p0, p2}, Landroid/app/WallpaperManager$Globals;->isStaticWallpaper(I)Z

    move-result p2

    if-eqz p2, :cond_c5

    .line 854
    :cond_a2
    invoke-static {p1, v4}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object p1

    .line 855
    if-eqz p1, :cond_c5

    .line 857
    :try_start_a8
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 858
    iput-boolean v8, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 859
    invoke-static {p1, v9, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 860
    new-instance p4, Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p4, v10, v10, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_bb
    .catchall {:try_start_a8 .. :try_end_bb} :catchall_bf

    .line 862
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 863
    goto :goto_c5

    .line 862
    :catchall_bf
    move-exception v0

    move-object p2, v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 863
    throw p2

    .line 866
    :cond_c5
    :goto_c5
    return-object p4

    .line 850
    :catchall_c6
    move-exception v0

    move-object v3, p0

    :goto_c8
    move-object p1, v0

    :try_start_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_cb

    throw p1

    :catchall_cb
    move-exception v0

    goto :goto_c8
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V
    .registers 12

    .line 660
    monitor-enter p0

    .line 661
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 662
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5b

    .line 665
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

    .line 666
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallbackAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 667
    if-eqz v3, :cond_37

    if-eq v2, p1, :cond_37

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_5d

    .line 668
    :cond_37
    goto :goto_1c

    .line 670
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_4d

    .line 672
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mLocalColorCallback:Landroid/app/ILocalWallpaperColorConsumer;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4d} :catch_4e
    .catchall {:try_start_38 .. :try_end_4d} :catchall_5d

    .line 679
    :cond_4d
    goto :goto_59

    .line 676
    :catch_4e
    move-exception v0

    move-object p1, v0

    .line 678
    :try_start_50
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can\'t unregister for local color updates"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    :goto_59
    monitor-exit p0

    .line 681
    return-void

    .line 663
    :cond_5b
    :goto_5b
    monitor-exit p0

    return-void

    .line 680
    :catchall_5d
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_5d

    throw p1
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V
    .registers 6

    .line 692
    monitor-enter p0

    .line 693
    :try_start_1
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;-><init>(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 695
    iget-object p1, p0, Landroid/app/WallpaperManager$Globals;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z

    if-eqz p1, :cond_2a

    .line 696
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/app/WallpaperManager$Globals;->mColorCallbackRegistered:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 698
    :try_start_1a
    iget-object p1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {p1, p0, p2, p3}, Landroid/app/IWallpaperManager;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2c

    .line 702
    goto :goto_2a

    .line 699
    :catch_20
    move-exception p1

    .line 701
    :try_start_21
    invoke-static {}, Landroid/app/WallpaperManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can\'t unregister color updates"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 705
    return-void

    .line 704
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw p1
.end method
