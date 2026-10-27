.class Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;
.super Lcom/xiaomi/camera/imagecodec/VendorTag;
.source "CaptureRequestVendorTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/xiaomi/camera/imagecodec/VendorTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/imagecodec/VendorTag<",
        "Landroid/hardware/camera2/CaptureRequest$Key<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$klass:Ljava/lang/Class;

.field final synthetic blacklist val$nameSupplier:Ljava/util/function/Supplier;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;Ljava/util/function/Supplier;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->val$klass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->val$nameSupplier:Ljava/util/function/Supplier;

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/VendorTag;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/hardware/camera2/CaptureRequest$Key;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->val$klass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->requestKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->create()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags$1;->val$nameSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
