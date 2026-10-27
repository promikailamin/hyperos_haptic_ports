.class Landroid/app/Presentation$1;
.super Ljava/lang/Object;
.source "Presentation.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Presentation;


# direct methods
.method constructor blacklist <init>(Landroid/app/Presentation;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2

    .line 349
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 3

    .line 360
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 361
    iget-object p1, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {p1}, Landroid/app/Presentation;->-$$Nest$mhandleDisplayChanged(Landroid/app/Presentation;)V

    .line 363
    :cond_11
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 3

    .line 353
    iget-object v0, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {v0}, Landroid/app/Presentation;->-$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 354
    iget-object p1, p0, Landroid/app/Presentation$1;->this$0:Landroid/app/Presentation;

    invoke-static {p1}, Landroid/app/Presentation;->-$$Nest$mhandleDisplayRemoved(Landroid/app/Presentation;)V

    .line 356
    :cond_11
    return-void
.end method
