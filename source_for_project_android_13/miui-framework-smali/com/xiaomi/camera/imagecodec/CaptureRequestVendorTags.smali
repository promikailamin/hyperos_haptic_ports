.class public Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;
.super Ljava/lang/Object;
.source "CaptureRequestVendorTags.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CaptureRequestVendorTags"

.field public static final blacklist XIAOMI_IMAGE_NAME:Lcom/xiaomi/camera/imagecodec/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist XIAOMI_JPEG_ORIENTATION:Lcom/xiaomi/camera/imagecodec/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist XIAOMI_SIQE_TYPE:Lcom/xiaomi/camera/imagecodec/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist requestConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/xiaomi/camera/imagecodec/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->XIAOMI_JPEG_ORIENTATION:Lcom/xiaomi/camera/imagecodec/VendorTag;

    .line 71
    new-instance v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$$ExternalSyntheticLambda1;-><init>()V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/xiaomi/camera/imagecodec/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->XIAOMI_IMAGE_NAME:Lcom/xiaomi/camera/imagecodec/VendorTag;

    .line 74
    new-instance v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$$ExternalSyntheticLambda2;-><init>()V

    const-class v1, Ljava/lang/Byte;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/xiaomi/camera/imagecodec/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->XIAOMI_SIQE_TYPE:Lcom/xiaomi/camera/imagecodec/VendorTag;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/xiaomi/camera/imagecodec/VendorTag;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/xiaomi/camera/imagecodec/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;>;"
        }
    .end annotation

    .line 33
    .local p0, "nameSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/String;
    .registers 1

    .line 69
    const-string v0, "xiaomi.jpeg.orientation"

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1()Ljava/lang/String;
    .registers 1

    .line 72
    const-string v0, "xiaomi.snapshot.imageName"

    return-object v0
.end method

.method static synthetic blacklist lambda$static$2()Ljava/lang/String;
    .registers 1

    .line 75
    const-string v0, "xiaomi.snapshotAlgo.algoMask"

    return-object v0
.end method

.method static blacklist requestKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;"
        }
    .end annotation

    .line 21
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->requestConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1e

    .line 22
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->requestConstructor:Ljava/lang/reflect/Constructor;

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 25
    :cond_1e
    sget-object v0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->requestConstructor:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object v0

    .line 26
    :catch_2d
    move-exception v0

    .line 27
    .local v0, "exc":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find/call Key constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CaptureRequestVendorTags"

    invoke-static {v2, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .end local v0    # "exc":Ljava/lang/ReflectiveOperationException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/xiaomi/camera/imagecodec/VendorTag;Ljava/lang/Object;)V
    .registers 7
    .param p0, "request"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Lcom/xiaomi/camera/imagecodec/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;>;TT;)V"
        }
    .end annotation

    .line 56
    .local p1, "key":Lcom/xiaomi/camera/imagecodec/VendorTag;, "Lcom/xiaomi/camera/imagecodec/VendorTag<Landroid/hardware/camera2/CaptureRequest$Key<TT;>;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "CaptureRequestVendorTags"

    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/VendorTag;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_33

    .line 62
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/VendorTag;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    .line 65
    goto :goto_32

    .line 63
    :catch_17
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caution: failed to update capture request: <VTNF>, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/VendorTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return-void

    .line 57
    :cond_33
    :goto_33
    const-string v1, "caution: failed to update capture request: <NULL>"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method
