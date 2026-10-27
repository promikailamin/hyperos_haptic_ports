.class Landroid/view/PointerIcon$2;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PointerIcon;->registerDisplayListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 614
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 623
    invoke-static {}, Landroid/view/PointerIcon;->-$$Nest$sfgetgSystemIconsByDisplay()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 624
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 618
    invoke-static {}, Landroid/view/PointerIcon;->-$$Nest$sfgetgSystemIconsByDisplay()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 619
    return-void
.end method
