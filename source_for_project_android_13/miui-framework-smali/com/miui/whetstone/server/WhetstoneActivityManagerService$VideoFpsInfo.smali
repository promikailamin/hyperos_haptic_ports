.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;
.super Ljava/lang/Object;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoFpsInfo"
.end annotation


# instance fields
.field blacklist fps:I

.field final synthetic blacklist this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

.field blacklist uid:I


# direct methods
.method public constructor blacklist <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;II)V
    .registers 4
    .param p2, "uid"    # I
    .param p3, "fps"    # I

    .line 1273
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    iput p2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;->uid:I

    .line 1275
    iput p3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$VideoFpsInfo;->fps:I

    .line 1276
    return-void
.end method
