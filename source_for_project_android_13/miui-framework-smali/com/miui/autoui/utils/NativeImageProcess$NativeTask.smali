.class Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;
.super Ljava/lang/Object;
.source "NativeImageProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/utils/NativeImageProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist _bitmapOut:Landroid/graphics/Bitmap;

.field private final blacklist _coreIndex:I

.field private final blacklist _radius:I

.field private final blacklist _round:I

.field private final blacklist _totalCores:I


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;IIII)V
    .registers 6
    .param p1, "bitmapOut"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "totalCores"    # I
    .param p4, "coreIndex"    # I
    .param p5, "round"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_bitmapOut:Landroid/graphics/Bitmap;

    .line 111
    iput p2, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_radius:I

    .line 112
    iput p3, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_totalCores:I

    .line 113
    iput p4, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_coreIndex:I

    .line 114
    iput p5, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_round:I

    .line 115
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_bitmapOut:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_radius:I

    iget v2, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_totalCores:I

    iget v3, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_coreIndex:I

    iget v4, p0, Lcom/miui/autoui/utils/NativeImageProcess$NativeTask;->_round:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/autoui/utils/NativeImageProcess;->-$$Nest$smfunctionToBlur(Landroid/graphics/Bitmap;IIII)V

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method
