.class public Landroid/hardware/Camera$Coordinate;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Coordinate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/Camera;

.field public blacklist xCoordinate:I

.field public blacklist yCoordinate:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/Camera;II)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 2406
    iput-object p1, p0, Landroid/hardware/Camera$Coordinate;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2407
    iput p2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    .line 2408
    iput p3, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    .line 2409
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2419
    instance-of v0, p1, Landroid/hardware/Camera$Coordinate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2420
    return v1

    .line 2422
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Coordinate;

    .line 2423
    .local v0, "c":Landroid/hardware/Camera$Coordinate;
    iget v2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    iget v3, v0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    if-ne v2, v3, :cond_16

    iget v2, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    iget v3, v0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method
