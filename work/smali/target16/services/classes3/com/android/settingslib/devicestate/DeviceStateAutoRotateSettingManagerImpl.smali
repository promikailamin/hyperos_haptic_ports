.class public Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;
.super Ljava/lang/Object;
.source "DeviceStateAutoRotateSettingManagerImpl.java"

# interfaces
.implements Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;


# instance fields
.field public final mDefaultDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

.field public final mFallbackPostureMap:Landroid/util/SparseIntArray;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mPostureDeviceStateConverter:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

.field public final mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

.field public final mSettableDeviceState:Ljava/util/List;

.field public final mSettingListeners:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$-kghucSvegaqDoU4PqX9M0EDFLs(Landroid/util/SparseIntArray;I)Ljava/lang/String;
    .registers 4

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pb7f9VKPAup95VaVkUmRdKNZoxw(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/database/ContentObserver;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->lambda$new$0(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmFallbackPostureMap(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mFallbackPostureMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->notifyListeners()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSetting(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/util/SparseIntArray;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->updateSetting(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetValueFromIntArray(ILandroid/util/SparseIntArray;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->getValueFromIntArray(ILandroid/util/SparseIntArray;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidDeviceStateAutoRotateSettingKey(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->isValidDeviceStateAutoRotateSettingKey(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisValidDeviceStateAutoRotateSettingValue(I)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->isValidDeviceStateAutoRotateSettingValue(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/settingslib/devicestate/SecureSettings;Landroid/os/Handler;Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;)V
    .registers 7

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSettingListeners:Ljava/util/List;

    .line 68
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mFallbackPostureMap:Landroid/util/SparseIntArray;

    .line 69
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mDefaultDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSettableDeviceState:Ljava/util/List;

    .line 82
    iput-object p3, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

    .line 83
    iput-object p4, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 84
    iput-object p5, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mPostureDeviceStateConverter:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->loadAutoRotateDeviceStates(Landroid/content/Context;)V

    .line 87
    new-instance p1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$1;

    invoke-direct {p1, p0, p4}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$1;-><init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/os/Handler;)V

    .line 93
    new-instance p3, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/database/ContentObserver;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static convertIntArrayToSerializedSetting(Landroid/util/SparseIntArray;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$$ExternalSyntheticLambda1;-><init>(Landroid/util/SparseIntArray;)V

    .line 352
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ":"

    .line 353
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getValueFromIntArray(ILandroid/util/SparseIntArray;)I
    .registers 5

    .line 341
    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 346
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    return p0

    .line 343
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found in SparseIntArray="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValidDeviceStateAutoRotateSettingKey(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_d

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x3

    if-eq p0, v1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    return v0
.end method

.method public static isValidDeviceStateAutoRotateSettingValue(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public static parsePostureEntry(Ljava/lang/String;)Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;
    .registers 8

    .line 241
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 242
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_57

    array-length v1, v0

    const/4 v3, 0x3

    if-gt v1, v3, :cond_57

    const/4 v1, 0x0

    .line 246
    :try_start_f
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    .line 247
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 248
    array-length v5, v0

    const/4 v6, 0x0

    if-ne v5, v3, :cond_2d

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2e

    :catch_2b
    move-exception v0

    goto :goto_34

    :cond_2d
    move-object v0, v6

    .line 251
    :goto_2e
    new-instance v2, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;

    invoke-direct {v2, v1, v4, v0, v6}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;-><init>(IILjava/lang/Integer;Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl-IA;)V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_33} :catch_2b

    return-object v2

    .line 254
    :goto_34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number format in \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of values in entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final deserializeSettingString(Ljava/lang/String;)Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_ee

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_ee

    .line 276
    :cond_b
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 277
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x2

    const-string v4, "DSAutoRotateMngr"

    if-eqz v3, :cond_32

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid format in serializedSetting="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nOdd number of elements in the list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 283
    :cond_32
    new-instance v3, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;

    iget-object v5, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mDefaultDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-direct {v3, p0, v5, v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;-><init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/util/SparseIntArray;Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl-IA;)V

    .line 285
    iget-object v5, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mDefaultDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    .line 286
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 288
    :goto_41
    array-length v8, v2

    const-string v9, "Invalid serializedSetting="

    const/4 v10, -0x1

    if-ge v7, v8, :cond_bf

    .line 290
    :try_start_47
    aget-object v8, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v11, v7, 0x1

    .line 291
    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_55} :catch_88

    .line 294
    :try_start_55
    invoke-interface {v3, v8, v11}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;->set(II)V
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_58} :catch_8d

    .line 300
    :try_start_58
    invoke-virtual {v5, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 302
    iget-object v10, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mDefaultDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-static {v8, v10}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->getValueFromIntArray(ILandroid/util/SparseIntArray;)I

    move-result v10

    if-nez v10, :cond_8a

    if-eqz v11, :cond_8a

    .line 305
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nThe value for devicePosture="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "should be IGNORED(0) but is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_88
    move-exception p0

    goto :goto_96

    :cond_8a
    add-int/lit8 v7, v7, 0x2

    goto :goto_41

    :catch_8d
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_95} :catch_88

    return-object v0

    .line 311
    :goto_96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number format in serializedSetting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nError parsing pair: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v2, v7

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    aget-object p1, v2, v7

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 319
    :cond_bf
    :goto_bf
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-ge v6, p0, :cond_ed

    .line 320
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    if-eq p0, v10, :cond_ea

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n One or more device postures missing including devicePosture="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_ea
    add-int/lit8 v6, v6, 0x1

    goto :goto_bf

    :cond_ed
    return-object v3

    :cond_ee
    :goto_ee
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 166
    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 167
    const-string p1, "DeviceStateAutoRotateSettingManagerImpl"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fallbackPostureMap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mFallbackPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "settableDeviceState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSettableDeviceState:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getDefaultRotationLockSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;
    .registers 4

    .line 177
    new-instance v0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;

    iget-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mDefaultDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$DeviceStateAutoRotateSettingImpl;-><init>(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;Landroid/util/SparseIntArray;Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl-IA;)V

    return-object v0
.end method

.method public getRotationLockSetting()Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

    const-string v1, "device_state_rotation_lock"

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Lcom/android/settingslib/devicestate/SecureSettings;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->deserializeSettingString(Ljava/lang/String;)Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$0(Landroid/database/ContentObserver;)V
    .registers 5

    .line 94
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "device_state_rotation_lock"

    invoke-interface {p0, v2, v0, p1, v1}, Lcom/android/settingslib/devicestate/SecureSettings;->registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final loadAutoRotateDeviceStates(Landroid/content/Context;)V
    .registers 12

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 202
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_e1

    aget-object v3, p1, v2

    .line 203
    invoke-static {v3}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->parsePostureEntry(Ljava/lang/String;)Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;

    move-result-object v3

    .line 205
    invoke-static {v3}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->-$$Nest$fgetposture(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;)I

    move-result v4

    .line 206
    invoke-static {v3}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->-$$Nest$fgetautoRotateValue(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;)I

    move-result v5

    .line 207
    invoke-static {v3}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;->-$$Nest$fgetfallbackPosture(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl$PostureEntry;)Ljava/lang/Integer;

    move-result-object v3

    .line 208
    iget-object v6, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mPostureDeviceStateConverter:Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    invoke-virtual {v6, v4}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;->postureToDeviceState(I)Ljava/lang/Integer;

    move-result-object v6

    .line 209
    invoke-static {v4}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->isValidDeviceStateAutoRotateSettingKey(I)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 210
    invoke-static {v5}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->isValidDeviceStateAutoRotateSettingValue(I)Z

    move-result v7

    if-eqz v7, :cond_bd

    if-eqz v6, :cond_a6

    .line 219
    iget-object v7, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSettableDeviceState:Ljava/util/List;

    new-instance v8, Lcom/android/settingslib/devicestate/SettableDeviceState;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v5, :cond_42

    const/4 v9, 0x1

    goto :goto_43

    :cond_42
    move v9, v1

    :goto_43
    invoke-direct {v8, v6, v9}, Lcom/android/settingslib/devicestate/SettableDeviceState;-><init>(IZ)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_80

    if-eqz v3, :cond_80

    .line 224
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->isValidDeviceStateAutoRotateSettingKey(I)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 229
    iget-object v6, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mFallbackPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_82

    .line 225
    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Corrupted auto-rotate config. Invalid fallbackPosture="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "for devicePosture="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_80
    if-eqz v5, :cond_8a

    .line 235
    :goto_82
    iget-object v3, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mDefaultDeviceStateAutoRotateSetting:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 231
    :cond_8a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Auto rotate setting is IGNORED for posture="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but no fallback-posture defined"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_a6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matching device state for posture: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_bd
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Corrupted auto-rotate config. One or more values among devicePosture="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " autoRotateValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " are invalid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e1
    return-void
.end method

.method public final notifyListeners()V
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSettingListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSettingListener;

    .line 189
    invoke-interface {v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSettingListener;->onSettingsChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public registerListener(Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSettingListener;)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSettingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateSetting(Landroid/util/SparseIntArray;)V
    .registers 4

    .line 182
    invoke-static {p1}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->convertIntArrayToSerializedSetting(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;->mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

    const-string v0, "device_state_rotation_lock"

    const/4 v1, -0x2

    invoke-interface {p0, v0, p1, v1}, Lcom/android/settingslib/devicestate/SecureSettings;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
