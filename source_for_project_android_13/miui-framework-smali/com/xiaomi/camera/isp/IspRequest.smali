.class public Lcom/xiaomi/camera/isp/IspRequest;
.super Ljava/lang/Object;
.source "IspRequest.java"


# instance fields
.field public blacklist cropRegion:[I

.field public blacklist flipMode:I

.field public blacklist functionType:I

.field public blacklist inputBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist orientation:I

.field public blacklist remosaic:I

.field public blacklist requestNumber:I

.field public blacklist settings:Landroid/os/Parcelable;


# direct methods
.method public constructor blacklist <init>(IILandroid/os/Parcelable;Ljava/util/ArrayList;[IIII)V
    .registers 10
    .param p1, "requestNumber"    # I
    .param p2, "flipMode"    # I
    .param p3, "settings"    # Landroid/os/Parcelable;
    .param p5, "cropRegion"    # [I
    .param p6, "functionType"    # I
    .param p7, "orientation"    # I
    .param p8, "remosaic"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/camera/isp/IspBuffer;",
            ">;[IIII)V"
        }
    .end annotation

    .line 40
    .local p4, "inputBuffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/camera/isp/IspBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/camera/isp/IspRequest;->orientation:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/camera/isp/IspRequest;->remosaic:I

    .line 41
    iput p1, p0, Lcom/xiaomi/camera/isp/IspRequest;->requestNumber:I

    .line 42
    iput p2, p0, Lcom/xiaomi/camera/isp/IspRequest;->flipMode:I

    .line 43
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspRequest;->settings:Landroid/os/Parcelable;

    .line 44
    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspRequest;->inputBuffers:Ljava/util/ArrayList;

    .line 45
    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspRequest;->cropRegion:[I

    .line 46
    iput p6, p0, Lcom/xiaomi/camera/isp/IspRequest;->functionType:I

    .line 47
    iput p7, p0, Lcom/xiaomi/camera/isp/IspRequest;->orientation:I

    .line 48
    iput p8, p0, Lcom/xiaomi/camera/isp/IspRequest;->remosaic:I

    .line 49
    return-void
.end method
