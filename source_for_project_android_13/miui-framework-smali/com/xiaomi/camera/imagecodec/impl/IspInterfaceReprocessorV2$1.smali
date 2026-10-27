.class Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2$1;
.super Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
.source "IspInterfaceReprocessorV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
        "Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;
    .registers 2

    .line 35
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2$1;->create()Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessorV2;

    move-result-object v0

    return-object v0
.end method
