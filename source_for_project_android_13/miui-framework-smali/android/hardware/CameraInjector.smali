.class public Landroid/hardware/CameraInjector;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/CameraInjector$CameraOrientationEventListener;,
        Landroid/hardware/CameraInjector$CameraExInfo;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_CAMERA_STATE_TO_POWER_KEEPER:Ljava/lang/String; = "com.miui.powerkeeper.CAMERA_STATE"

.field private static final blacklist CAMERA_ACTIVE_SEND_BROADCAST_DEVICES_LIST:Ljava/lang/String; = "atom,bomb,apricot,banana,cannon,cannong"

.field private static final blacklist CAMERA_BROADCAST_ACTION:Ljava/lang/String; = "android.intent.action.ANT_FORCE"

.field private static final blacklist CAMERA_CONFIG_KEY:Ljava/lang/String; = "camera"

.field private static final blacklist CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CAMERA_ROLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist CAMERA_STATE_INIT:I = 0x1

.field public static final blacklist CAMERA_STATE_RELEASE:I = 0x2

.field private static final blacklist EXTRA_BEAUTIFY_VALUE:Ljava/lang/String; = "extra_still_beautify_value"

.field private static final blacklist EXTRA_MIN_PREVIEW_SIZE:Ljava/lang/String; = "extra_min_preview_size"

.field private static final blacklist KEY_BEAUTIFY:Ljava/lang/String; = "xiaomi-still-beautify-values"

.field private static final blacklist KEY_CAMERA_ID:Ljava/lang/String; = "camera-id"

.field private static final blacklist KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final blacklist KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final blacklist MAX_UPDATE_CLOUD_DATA_TIME:I = 0x15e

.field private static final blacklist MIN_VIRTUAL_CAMERA_ROLE_ID:I = 0x64

.field private static final blacklist SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final blacklist TAG:Ljava/lang/String; = "CameraInjector"

.field private static blacklist sCameraIdRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCameraInfoMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/hardware/Camera;",
            "Landroid/hardware/CameraInjector$CameraExInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sCloudCameraAuxPackageList:[Ljava/lang/String;

.field private static volatile blacklist sCloudExposedRoleIdList:[Ljava/lang/String;

.field private static blacklist sUpdateCloudCameraInfoLatch:Ljava/util/concurrent/CountDownLatch;

.field private static volatile blacklist sUpdatedCloudCameraControllInfo:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsCameraInfoMap()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smroundOrientation(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/CameraInjector;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    .line 73
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "com.xiaomi.cameraid.role.cameraId"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 76
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [I

    const-string v2, "com.xiaomi.cameraid.role.cameraIds"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/CameraInjector;->sUpdatedCloudCameraControllInfo:Z

    .line 91
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Landroid/hardware/CameraInjector;->sUpdateCloudCameraInfoLatch:Ljava/util/concurrent/CountDownLatch;

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .line 765
    if-eqz p0, :cond_1d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_1d

    .line 768
    :cond_6
    if-eqz p1, :cond_1c

    array-length v0, p1

    if-nez v0, :cond_c

    goto :goto_1c

    .line 771
    :cond_c
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 772
    .local v0, "c":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    return-object v0

    .line 769
    .end local v0    # "c":[Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-object p0

    .line 766
    :cond_1d
    :goto_1d
    return-object p1
.end method

.method protected static blacklist convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .registers 3
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .line 173
    if-eqz p0, :cond_1e

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_1e
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist createOrientationListener(Landroid/hardware/Camera;)V
    .registers 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .line 617
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 618
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    invoke-static {}, Landroid/hardware/CameraInjector;->isInRotateWhiteList()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 619
    const-string v1, "CameraInjector"

    const-string v2, "Listener orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v1, Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    .line 622
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;-><init>(Landroid/hardware/Camera;Landroid/content/Context;)V

    .line 623
    .local v1, "cameraOrientationEventListener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    invoke-virtual {v1}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->enable()V

    .line 624
    invoke-static {v0, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->-$$Nest$fputmCameraOrientationEventListener(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)V

    .line 626
    .end local v1    # "cameraOrientationEventListener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    :cond_2a
    return-void
.end method

.method private static blacklist destoryOrientationListener(Landroid/hardware/Camera;)V
    .registers 5
    .param p0, "camera"    # Landroid/hardware/Camera;

    .line 629
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 630
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_1e

    .line 631
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-$$Nest$fgetmCameraOrientationEventListener(Landroid/hardware/CameraInjector$CameraExInfo;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    move-result-object v1

    .line 632
    .local v1, "listener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    if-eqz v1, :cond_1e

    .line 633
    const-string v2, "CameraInjector"

    const-string v3, "release orientation listener"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {v1}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->disable()V

    .line 635
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/hardware/CameraInjector$CameraExInfo;->-$$Nest$fputmCameraOrientationEventListener(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)V

    .line 638
    .end local v1    # "listener":Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    :cond_1e
    return-void
.end method

.method private static blacklist getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;
    .registers 3
    .param p0, "camera"    # Landroid/hardware/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 674
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 675
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_f

    .line 676
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-$$Nest$fgetmCameraParameterInfo(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1

    .line 678
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 609
    if-nez p0, :cond_4

    .line 610
    const/4 v0, 0x0

    return-object v0

    .line 613
    :cond_4
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNumberOfCameras(I)I
    .registers 2
    .param p0, "numberOfCameras"    # I

    .line 248
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    if-le p0, v0, :cond_a

    .line 249
    const/4 p0, 0x2

    .line 254
    :cond_a
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    if-le p0, v0, :cond_14

    .line 255
    const/4 p0, 0x1

    .line 258
    :cond_14
    return p0
.end method

.method public static blacklist getParametersEx(Landroid/hardware/Camera$Parameters;)V
    .registers 8
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .line 156
    const-string v0, "remove_lower_perview_size_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 157
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v1, "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v2, 0xe1000

    const-string v3, "extra_min_preview_size"

    invoke-static {v3, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, "minSize":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 161
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v2, v5, :cond_38

    .line 162
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_38
    goto :goto_22

    .line 165
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_4d

    .line 166
    nop

    .line 167
    invoke-static {v1}, Landroid/hardware/CameraInjector;->getValueString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 166
    const-string v4, "preview-size-values"

    invoke-virtual {p0, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v0    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v1    # "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "minSize":I
    :cond_4d
    return-void
.end method

.method public static blacklist getResultFromProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerUri"    # Landroid/net/Uri;
    .param p2, "callMethod"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "provider":Landroid/content/ContentProviderClient;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_21
    .catchall {:try_start_2 .. :try_end_a} :catchall_1f

    move-object v0, v2

    .line 782
    if-nez v0, :cond_14

    .line 783
    nop

    .line 791
    if-eqz v0, :cond_13

    .line 792
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 783
    :cond_13
    return-object v1

    .line 785
    :cond_14
    :try_start_14
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_21
    .catchall {:try_start_14 .. :try_end_18} :catchall_1f

    .line 786
    .local v1, "result":Landroid/os/Bundle;
    nop

    .line 791
    if-eqz v0, :cond_1e

    .line 792
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 786
    :cond_1e
    return-object v1

    .line 791
    .end local v1    # "result":Landroid/os/Bundle;
    :catchall_1f
    move-exception v1

    goto :goto_45

    .line 787
    :catch_21
    move-exception v2

    .line 788
    .local v2, "e":Ljava/lang/Exception;
    :try_start_22
    const-string v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResultFromProvider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_1f

    .line 789
    nop

    .line 791
    if-eqz v0, :cond_44

    .line 792
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 789
    :cond_44
    return-object v1

    .line 791
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_45
    if-eqz v0, :cond_4a

    .line 792
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 794
    :cond_4a
    throw v1
.end method

.method private static blacklist getValueString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 229
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p0, :cond_38

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 232
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 233
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_30

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 238
    .end local v1    # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 240
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_38
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist hideCamera()Z
    .registers 2

    .line 326
    const-string v0, "camera_hide_logical_package_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 327
    return v1

    .line 330
    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Landroid/hardware/CameraInjector;->isInCloudCameraAuxPackageList()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 331
    return v1

    .line 333
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist hideTipViewForCamera(Ljava/lang/String;)V
    .registers 3
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 823
    invoke-static {}, Lmiui/tipclose/TipHelperProxy;->getInstance()Lmiui/tipclose/TipHelperProxy;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/tipclose/TipHelperProxy;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 824
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 825
    .local v0, "isFacingFornt":Z
    if-eqz v0, :cond_1c

    .line 826
    invoke-static {}, Lmiui/tipclose/TipHelperProxy;->getInstance()Lmiui/tipclose/TipHelperProxy;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/tipclose/TipHelperProxy;->hideTipForCamera()V

    .line 829
    .end local v0    # "isFacingFornt":Z
    :cond_1c
    return-void
.end method

.method public static blacklist initCamera(Landroid/hardware/Camera;I)V
    .registers 5
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraId"    # I

    .line 132
    invoke-static {}, Landroid/hardware/CameraInjector;->setCoveredPackageName()V

    .line 133
    new-instance v0, Landroid/hardware/CameraInjector$CameraExInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/CameraInjector$CameraExInfo;-><init>(ILandroid/hardware/CameraInjector$CameraExInfo-IA;)V

    .line 134
    .local v0, "info":Landroid/hardware/CameraInjector$CameraExInfo;
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "atom,bomb,apricot,banana,cannon,cannong"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/hardware/CameraInjector;->initCameraRoleIdApi1(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 138
    :cond_23
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    .line 139
    return-void
.end method

.method public static blacklist initCameraRoleIdApi1(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .registers 6
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .line 581
    sget-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "cameraRoleId":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 583
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 585
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_2e
    return-void
.end method

.method public static blacklist initCameraRoleIdApi2(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 5
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 591
    :try_start_0
    sget-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 592
    .local v0, "cameraRoleId":Ljava/lang/Integer;
    if-eqz v0, :cond_13

    .line 593
    sget-object v1, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_13} :catch_14

    .line 597
    .end local v0    # "cameraRoleId":Ljava/lang/Integer;
    :cond_13
    goto :goto_33

    .line 595
    :catch_14
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_33
    return-void
.end method

.method public static blacklist isCameraSoundEnforced()Z
    .registers 3

    .line 126
    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_global"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 127
    .local v0, "isGlobalBuild":Z
    const-string v2, "ro.miui.region"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "sRegion":Ljava/lang/String;
    if-eqz v0, :cond_28

    const-string v2, "JP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "KR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_26
    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    return v2
.end method

.method private static blacklist isContainString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "listString"    # Ljava/lang/String;
    .param p1, "compareString"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "limit":Z
    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    if-eqz p1, :cond_34

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 297
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 298
    .local v1, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v1, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 299
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 301
    const/4 v0, 0x1

    .line 302
    goto :goto_34

    .line 304
    .end local v3    # "str":Ljava/lang/String;
    :cond_33
    goto :goto_1f

    .line 307
    .end local v1    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_34
    :goto_34
    return v0
.end method

.method public static blacklist isExposeAuxCamera()Z
    .registers 2

    .line 311
    const-string v0, "camera_aux_package_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    .line 312
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_22

    .line 315
    :cond_10
    invoke-static {}, Landroid/hardware/CameraInjector;->isInCloudCameraAuxPackageList()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 316
    return v1

    .line 318
    :cond_17
    const-string v0, "camera.aux.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 313
    :cond_22
    :goto_22
    return v1
.end method

.method public static blacklist isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 13
    .param p0, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 351
    const/4 v0, 0x0

    if-eqz p0, :cond_ab

    .line 353
    :try_start_3
    sget-object v1, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 354
    .local v1, "roleId":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/CameraInjector;->CAMERA_ROLE_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 355
    .local v2, "roleIds":[I
    const/4 v3, 0x1

    if-eqz v2, :cond_19

    array-length v4, v2

    if-nez v4, :cond_24

    :cond_19
    if-eqz v1, :cond_24

    .line 356
    new-array v4, v3, [I

    move-object v2, v4

    .line 357
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    .line 359
    :cond_24
    if-nez v2, :cond_27

    .line 360
    return v0

    .line 362
    :cond_27
    const-string v4, "camera_exposable_role_id"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "exposableList":[Ljava/lang/String;
    sget-object v5, Landroid/hardware/CameraInjector;->sCloudExposedRoleIdList:[Ljava/lang/String;

    if-nez v5, :cond_34

    .line 364
    invoke-static {}, Landroid/hardware/CameraInjector;->updateCloudCameraControllerInfoAsync()V

    .line 366
    :cond_34
    sget-object v5, Landroid/hardware/CameraInjector;->sCloudExposedRoleIdList:[Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/hardware/CameraInjector;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 367
    if-eqz v4, :cond_62

    array-length v5, v4

    if-lez v5, :cond_62

    .line 368
    array-length v5, v4

    move v6, v0

    :goto_42
    if-ge v6, v5, :cond_62

    aget-object v7, v4, v6

    .line 369
    .local v7, "str":Ljava/lang/String;
    if-eqz v2, :cond_5f

    array-length v8, v2

    if-lez v8, :cond_5f

    .line 370
    array-length v8, v2

    move v9, v0

    :goto_4d
    if-ge v9, v8, :cond_5f

    aget v10, v2, v9

    .line 371
    .local v10, "id":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 372
    return v3

    .line 370
    .end local v10    # "id":I
    :cond_5c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 368
    .end local v7    # "str":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 379
    :cond_62
    const-string v5, "camera.exposable.role.list"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, "exposableRoleList":Ljava/lang/String;
    if-eqz v5, :cond_8b

    if-eqz v2, :cond_8b

    array-length v6, v2

    if-lez v6, :cond_8b

    .line 381
    array-length v6, v2

    move v7, v0

    :goto_71
    if-ge v7, v6, :cond_8b

    aget v8, v2, v7

    .line 382
    .local v8, "id":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/hardware/CameraInjector;->isContainString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 383
    .local v9, "isContainId":Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_85} :catch_8c

    if-eqz v10, :cond_88

    .line 384
    return v3

    .line 381
    .end local v8    # "id":I
    .end local v9    # "isContainId":Ljava/lang/Boolean;
    :cond_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    .line 390
    .end local v1    # "roleId":Ljava/lang/Integer;
    .end local v2    # "roleIds":[I
    .end local v4    # "exposableList":[Ljava/lang/String;
    .end local v5    # "exposableRoleList":Ljava/lang/String;
    :cond_8b
    goto :goto_ab

    .line 388
    :catch_8c
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExposableLogicalCamera: invalid tag > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_ab
    :goto_ab
    return v0
.end method

.method private static blacklist isInCloudCameraAuxPackageList()Z
    .registers 7

    .line 749
    invoke-static {}, Landroid/hardware/CameraInjector;->updateCloudCameraControllerInfoAsync()V

    .line 750
    sget-object v0, Landroid/hardware/CameraInjector;->sCloudCameraAuxPackageList:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    sget-object v0, Landroid/hardware/CameraInjector;->sCloudCameraAuxPackageList:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_e

    goto :goto_2e

    .line 753
    :cond_e
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "processName":Ljava/lang/String;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    .line 755
    sget-object v2, Landroid/hardware/CameraInjector;->sCloudCameraAuxPackageList:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_1e
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 756
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 757
    const/4 v1, 0x1

    return v1

    .line 755
    .end local v5    # "str":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 761
    :cond_2d
    return v1

    .line 751
    .end local v0    # "processName":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return v1
.end method

.method private static blacklist isInRotateWhiteList()Z
    .registers 7

    .line 481
    const-string v0, "camera_rotate_packagelist"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 482
    return v1

    .line 484
    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "processName":Ljava/lang/String;
    const-string v2, "camera.rotate.packagelist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "packageList":Ljava/lang/String;
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_22

    .line 488
    :cond_1c
    const-string v3, "vendor.camera.rotate.packagelist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 490
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInRotateWhiteList whiteList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " processName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraInjector"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6c

    .line 492
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 493
    .local v3, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v3, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 494
    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 495
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 496
    return v1

    .line 498
    .end local v5    # "str":Ljava/lang/String;
    :cond_6b
    goto :goto_58

    .line 500
    .end local v3    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_6c
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isInWhiteList(Ljava/lang/String;)Z
    .registers 8
    .param p0, "key"    # Ljava/lang/String;

    .line 110
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 112
    invoke-static {p0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "whitelist":[Ljava/lang/String;
    if-eqz v2, :cond_27

    array-length v3, v2

    if-lez v3, :cond_27

    .line 114
    array-length v3, v2

    move v4, v1

    :goto_18
    if-ge v4, v3, :cond_27

    aget-object v5, v2, v4

    .line 115
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 116
    const/4 v1, 0x1

    return v1

    .line 114
    .end local v5    # "str":Ljava/lang/String;
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 121
    .end local v2    # "whitelist":[Ljava/lang/String;
    :cond_27
    return v1
.end method

.method public static blacklist isLogicalCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 7
    .param p0, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 337
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 338
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 339
    .local v1, "caps":[I
    if-eqz v1, :cond_1c

    .line 340
    array-length v2, v1

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_1c

    aget v4, v1, v3

    .line 341
    .local v4, "cap":I
    const/16 v5, 0xb

    if-ne v5, v4, :cond_19

    .line 342
    const/4 v0, 0x1

    return v0

    .line 340
    .end local v4    # "cap":I
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 347
    .end local v1    # "caps":[I
    :cond_1c
    return v0
.end method

.method public static blacklist isPad()Z
    .registers 2

    .line 833
    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 4
    .param p0, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 406
    if-eqz p0, :cond_36

    .line 408
    :try_start_2
    sget-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 409
    .local v0, "cameraRoleId":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_10} :catch_17

    const/16 v2, 0x64

    if-ge v1, v2, :cond_16

    .line 410
    const/4 v1, 0x0

    return v1

    .line 414
    .end local v0    # "cameraRoleId":Ljava/lang/Integer;
    :cond_16
    goto :goto_36

    .line 412
    :catch_17
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_36
    :goto_36
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$updateCloudCameraControllerInfoAsync$0()V
    .registers 9

    .line 706
    const-string v0, "updateCloudCameraControllerInfoAsync: X"

    const-string v1, "CameraInjector"

    :try_start_4
    const-string v2, "updateCloudCameraControllerInfoAsync: E"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 708
    .local v2, "context":Landroid/content/Context;
    const-string v3, "content://com.android.camera.miviInfoProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "getCameraControllerInfo"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Landroid/hardware/CameraInjector;->getResultFromProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 709
    .local v3, "result":Landroid/os/Bundle;
    if-nez v3, :cond_2e

    .line 710
    const-string v4, "updateCloudCameraControllerInfoAsync: with null data"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_65
    .catchall {:try_start_4 .. :try_end_25} :catchall_63

    .line 729
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v0, Landroid/hardware/CameraInjector;->sUpdateCloudCameraInfoLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 711
    return-void

    .line 713
    :cond_2e
    :try_start_2e
    const-string v4, "CameraControllerInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_34} :catch_65
    .catchall {:try_start_2e .. :try_end_34} :catchall_63

    .line 714
    .local v4, "ojbStr":Ljava/lang/String;
    if-nez v4, :cond_3f

    .line 729
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v0, Landroid/hardware/CameraInjector;->sUpdateCloudCameraInfoLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 715
    return-void

    .line 717
    :cond_3f
    :try_start_3f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 718
    .local v5, "object":Lorg/json/JSONObject;
    const-string v6, "camera_aux_package_list"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4a} :catch_65
    .catchall {:try_start_3f .. :try_end_4a} :catchall_63

    .line 719
    .local v6, "packageList":Ljava/lang/String;
    const-string v7, "#"

    if-eqz v6, :cond_54

    .line 720
    :try_start_4e
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/hardware/CameraInjector;->sCloudCameraAuxPackageList:[Ljava/lang/String;

    .line 722
    :cond_54
    const-string v8, "camera_exposed_role_id_list"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 723
    .local v8, "roleIdList":Ljava/lang/String;
    if-eqz v8, :cond_62

    .line 724
    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/hardware/CameraInjector;->sCloudExposedRoleIdList:[Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_62} :catch_65
    .catchall {:try_start_4e .. :try_end_62} :catchall_63

    .line 729
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "result":Landroid/os/Bundle;
    .end local v4    # "ojbStr":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "packageList":Ljava/lang/String;
    .end local v8    # "roleIdList":Ljava/lang/String;
    :cond_62
    goto :goto_81

    :catchall_63
    move-exception v2

    goto :goto_8b

    .line 726
    :catch_65
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    :try_start_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCloudCameraControllerInfoAsync fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_63

    .line 729
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_81
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v0, Landroid/hardware/CameraInjector;->sUpdateCloudCameraInfoLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 731
    nop

    .line 732
    return-void

    .line 729
    :goto_8b
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v0, Landroid/hardware/CameraInjector;->sUpdateCloudCameraInfoLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 731
    throw v2
.end method

.method public static blacklist limitByCameraId(Ljava/lang/String;)Z
    .registers 4
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "limit":Z
    if-nez p0, :cond_4

    .line 270
    const/4 v0, 0x1

    .line 275
    :cond_4
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_12

    .line 276
    const/4 v0, 0x1

    .line 281
    :cond_12
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_20

    .line 282
    const/4 v0, 0x1

    .line 285
    :cond_20
    return v0
.end method

.method private static blacklist limitByPackageName(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageList"    # Ljava/lang/String;

    .line 289
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->isContainString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist limitCamera()Z
    .registers 1

    .line 322
    const-string v0, "camera.limit.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist notifyCameraStateChange(Ljava/lang/String;Z)V
    .registers 12
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "active"    # Z

    .line 540
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 541
    .local v0, "app":Landroid/app/Application;
    const-string v1, "CameraInjector"

    if-nez v0, :cond_e

    .line 542
    const-string v2, "Current application is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 546
    :cond_e
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "callingPackage":Ljava/lang/String;
    invoke-static {p0, p1, v2}, Lmiui/process/ProcessManager;->notifyCameraForegroundState(Ljava/lang/String;ZLjava/lang/String;)V

    .line 549
    const-string v3, "fpsList"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 550
    .local v3, "fpsList":[I
    const-string v4, "camera_state"

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_53

    array-length v7, v3

    if-lez v7, :cond_53

    .line 551
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.miui.powerkeeper.CAMERA_STATE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "com.miui.powerkeeper"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "package_name"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v9, "application_uid"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    if-eqz p1, :cond_48

    move v8, v5

    goto :goto_49

    :cond_48
    move v8, v6

    :goto_49
    invoke-virtual {v7, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 559
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_53
    if-eqz p0, :cond_bf

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "atom,bomb,apricot,banana,cannon,cannong"

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 560
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBroadcast device id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", active:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_cc

    :cond_87
    goto :goto_a5

    :sswitch_88
    const-string v7, "60"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    move v1, v5

    goto :goto_a5

    :sswitch_92
    const-string v7, "21"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    move v1, v6

    goto :goto_a5

    :sswitch_9c
    const-string v7, "1"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    const/4 v1, 0x0

    :goto_a5
    packed-switch v1, :pswitch_data_da

    goto :goto_bf

    .line 565
    :pswitch_a9
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.ANT_FORCE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "com.android.phone"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 576
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_bf
    :goto_bf
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 577
    if-eqz p1, :cond_c6

    goto :goto_c7

    :cond_c6
    move v5, v6

    .line 576
    :goto_c7
    invoke-static {v1, v5}, Lmiui/app/MiuiFreeFormManager;->notifyCameraStateChanged(Ljava/lang/String;I)V

    .line 578
    return-void

    nop

    :sswitch_data_cc
    .sparse-switch
        0x31 -> :sswitch_9c
        0x63f -> :sswitch_92
        0x6ba -> :sswitch_88
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_a9
        :pswitch_a9
    .end packed-switch
.end method

.method public static blacklist notifyCameraStateChange(Z)V
    .registers 2
    .param p0, "active"    # Z

    .line 536
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    .line 537
    return-void
.end method

.method private static blacklist notifyPcOpenCamera(Ljava/lang/String;)V
    .registers 1
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 848
    return-void
.end method

.method private static blacklist onCameraStateChange(Landroid/hardware/Camera;Z)V
    .registers 5
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "active"    # Z

    .line 510
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "camera-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .local v0, "cameraId":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "atom,bomb,apricot,banana,cannon,cannong"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 512
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 513
    invoke-static {v0}, Landroid/hardware/CameraInjector;->getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "roleid":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    .line 515
    .end local v1    # "roleid":Ljava/lang/String;
    goto :goto_28

    .line 517
    :cond_24
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    .line 521
    :cond_28
    :goto_28
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "chiron"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 522
    const-string v2, "lithium"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 523
    const-string v2, "polaris"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 524
    :cond_46
    if-eqz p1, :cond_4c

    .line 525
    invoke-static {p0}, Landroid/hardware/CameraInjector;->createOrientationListener(Landroid/hardware/Camera;)V

    goto :goto_4f

    .line 527
    :cond_4c
    invoke-static {p0}, Landroid/hardware/CameraInjector;->destoryOrientationListener(Landroid/hardware/Camera;)V

    .line 530
    :cond_4f
    :goto_4f
    if-eqz v0, :cond_54

    .line 531
    invoke-static {v0, p1}, Landroid/hardware/CameraInjector;->switchToFrontCameraTip(Ljava/lang/String;Z)V

    .line 533
    :cond_54
    return-void
.end method

.method public static blacklist processPreviewFrame(Landroid/hardware/Camera;[B)V
    .registers 4
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "data"    # [B

    .line 222
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    .line 223
    .local v0, "cameraExInfo":Landroid/hardware/CameraInjector$CameraExInfo;
    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-$$Nest$fgetmReverseFrameData(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 224
    invoke-static {p1}, Landroid/hardware/CameraInjector;->reversePreviewFrame([B)V

    .line 226
    :cond_13
    return-void
.end method

.method public static blacklist releaseCamera(Landroid/hardware/Camera;)V
    .registers 3
    .param p0, "camera"    # Landroid/hardware/Camera;

    .line 142
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    .line 144
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "atom,bomb,apricot,banana,cannon,cannong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 145
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    .line 146
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_27

    .line 147
    const-string v1, "camera-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/hardware/CameraInjector;->releaseCameraRoleId(Ljava/lang/String;)V

    .line 150
    .end local v0    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_27
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2c
    return-void
.end method

.method public static blacklist releaseCameraRoleId(Ljava/lang/String;)V
    .registers 2
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 601
    if-nez p0, :cond_3

    .line 602
    return-void

    .line 605
    :cond_3
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    return-void
.end method

.method private static blacklist reverse([BII)V
    .registers 5
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 448
    if-eqz p0, :cond_21

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_21

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_21

    if-ltz p1, :cond_21

    if-gez p2, :cond_11

    goto :goto_21

    .line 453
    :cond_11
    :goto_11
    if-le p2, p1, :cond_20

    .line 454
    aget-byte v0, p0, p2

    .line 455
    .local v0, "tmp":B
    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    .line 456
    aput-byte v0, p0, p1

    .line 457
    add-int/lit8 p2, p2, -0x1

    .line 458
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 460
    .end local v0    # "tmp":B
    :cond_20
    return-void

    .line 450
    :cond_21
    :goto_21
    return-void
.end method

.method private static blacklist reversePreviewFrame([B)V
    .registers 3
    .param p0, "array"    # [B

    .line 436
    if-nez p0, :cond_3

    .line 437
    return-void

    .line 440
    :cond_3
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 442
    .local v0, "totalYNum":I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/hardware/CameraInjector;->reverse([BII)V

    .line 444
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/hardware/CameraInjector;->reverseUV([BII)V

    .line 445
    return-void
.end method

.method private static blacklist reverseUV([BII)V
    .registers 7
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 463
    if-eqz p0, :cond_31

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_31

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_31

    if-ltz p1, :cond_31

    if-gez p2, :cond_11

    goto :goto_31

    .line 468
    :cond_11
    :goto_11
    if-le p2, p1, :cond_30

    .line 469
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    .line 470
    .local v0, "tmpU":B
    aget-byte v1, p0, p2

    .line 471
    .local v1, "tmpV":B
    add-int/lit8 v2, p2, -0x1

    aget-byte v3, p0, p1

    aput-byte v3, p0, v2

    .line 472
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, p2

    .line 473
    aput-byte v0, p0, p1

    .line 474
    add-int/lit8 v2, p1, 0x1

    aput-byte v1, p0, v2

    .line 475
    add-int/lit8 p2, p2, -0x2

    .line 476
    add-int/lit8 p1, p1, 0x2

    goto :goto_11

    .line 478
    .end local v0    # "tmpU":B
    .end local v1    # "tmpV":B
    :cond_30
    return-void

    .line 465
    :cond_31
    :goto_31
    return-void
.end method

.method private static blacklist roundOrientation(II)I
    .registers 5
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "changeOrientation":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 423
    const/4 v0, 0x1

    goto :goto_1a

    .line 425
    :cond_6
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 426
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 427
    const/16 v2, 0x32

    if-lt v1, v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    move v0, v2

    .line 429
    .end local v1    # "dist":I
    :goto_1a
    if-eqz v0, :cond_25

    .line 430
    add-int/lit8 v1, p0, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    return v1

    .line 432
    :cond_25
    return p1
.end method

.method public static blacklist setCoveredPackageName()V
    .registers 1

    .line 684
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/cameracovered/MiuiCameraCoveredManager;->setCoveredPackageName(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public static blacklist setParametersEx(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .registers 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .line 181
    const-string v0, "add_still_beautify_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 182
    const-string v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 183
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 184
    .local v1, "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_2a

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x2d0

    if-le v2, v3, :cond_20

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, v3, :cond_2a

    .line 185
    :cond_20
    nop

    .line 186
    const-string v2, "extra_still_beautify_value"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {p1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_2a
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    .line 191
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_4b

    .line 192
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preview-size"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "picture-size"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 195
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParametersEx: Lost camera info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_63
    return-void
.end method

.method public static blacklist setTorchMode(Ljava/lang/String;)V
    .registers 3
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 262
    invoke-static {p0}, Landroid/hardware/CameraInjector;->limitByCameraId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 265
    return-void

    .line 263
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid cameraId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist showTipViewForCamera(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "clientPackageId"    # Ljava/lang/String;

    .line 813
    invoke-static {}, Lmiui/tipclose/TipHelperProxy;->getInstance()Lmiui/tipclose/TipHelperProxy;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/tipclose/TipHelperProxy;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 814
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 815
    .local v0, "isFacingFornt":Z
    if-eqz v0, :cond_1c

    .line 816
    invoke-static {}, Lmiui/tipclose/TipHelperProxy;->getInstance()Lmiui/tipclose/TipHelperProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/tipclose/TipHelperProxy;->showTipForCamera(Ljava/lang/String;)V

    .line 819
    .end local v0    # "isFacingFornt":Z
    :cond_1c
    return-void
.end method

.method public static blacklist startPreview(Landroid/hardware/Camera;)V
    .registers 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .line 200
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    .line 201
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_17

    .line 203
    const-string v1, "camera-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "cameraId":Ljava/lang/String;
    const-string v2, "preview-size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .end local v1    # "cameraId":Ljava/lang/String;
    goto :goto_2f

    .line 206
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Lost camera info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_2f
    return-void
.end method

.method public static blacklist switchToFrontCameraTip(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "active"    # Z

    .line 810
    return-void
.end method

.method public static blacklist takePicture(Landroid/hardware/Camera;)V
    .registers 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .line 211
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    .line 212
    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_17

    .line 214
    const-string v1, "camera-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, "cameraId":Ljava/lang/String;
    const-string v2, "picture-size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .end local v1    # "cameraId":Ljava/lang/String;
    goto :goto_2f

    .line 217
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture: Lost camera info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_2f
    return-void
.end method

.method public static blacklist updateCloudCameraControllerInfoAsync()V
    .registers 2

    .line 695
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 696
    return-void

    .line 698
    :cond_7
    sget-boolean v0, Landroid/hardware/CameraInjector;->sUpdatedCloudCameraControllInfo:Z

    if-eqz v0, :cond_16

    .line 699
    const-string v0, "CameraInjector"

    const-string v1, "updateCloudCameraControllerInfoAsync: has aleardy start update task."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {}, Landroid/hardware/CameraInjector;->waitForResult()V

    .line 701
    return-void

    .line 703
    :cond_16
    const/4 v0, 0x1

    sput-boolean v0, Landroid/hardware/CameraInjector;->sUpdatedCloudCameraControllInfo:Z

    .line 704
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/hardware/CameraInjector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/hardware/CameraInjector$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 732
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 733
    invoke-static {}, Landroid/hardware/CameraInjector;->waitForResult()V

    .line 734
    return-void
.end method

.method private static blacklist waitForResult()V
    .registers 5

    .line 737
    const-string v0, "CameraInjector"

    const-string v1, "waitForResult: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :try_start_7
    sget-object v1, Landroid/hardware/CameraInjector;->sUpdateCloudCameraInfoLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x15e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 741
    const-string v1, "waitForResult: time out waiting for sUpdateCloudCameraInfoLatch isInCloudCameraAuxPackageList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_18} :catch_19

    .line 745
    :cond_18
    goto :goto_34

    .line 743
    :catch_19
    move-exception v1

    .line 744
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForResult occurs InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_34
    return-void
.end method
