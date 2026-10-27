.class Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointerDisplayIdChangedArgs"
.end annotation


# instance fields
.field final mPointerDisplayId:I

.field final mXPosition:F

.field final mYPosition:F


# direct methods
.method constructor <init>(IFF)V
    .registers 4
    .param p1, "pointerDisplayId"    # I
    .param p2, "xPosition"    # F
    .param p3, "yPosition"    # F

    .line 3383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3384
    iput p1, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mPointerDisplayId:I

    .line 3385
    iput p2, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mXPosition:F

    .line 3386
    iput p3, p0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mYPosition:F

    .line 3387
    return-void
.end method
