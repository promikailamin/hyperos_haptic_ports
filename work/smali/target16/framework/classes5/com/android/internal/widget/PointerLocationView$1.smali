.class Lcom/android/internal/widget/PointerLocationView$1;
.super Ljava/lang/Object;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/PointerLocationView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/PointerLocationView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView$1;->onDisplayChanged(I)V

    .line 180
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    # getter for: Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView;->access$000(Lcom/android/internal/widget/PointerLocationView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_d

    .line 190
    return-void

    .line 194
    :cond_d
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView$1;->this$0:Lcom/android/internal/widget/PointerLocationView;

    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->-$$Nest$mconfigureTraceBitmap(Lcom/android/internal/widget/PointerLocationView;)V

    .line 195
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2

    .line 185
    return-void
.end method
