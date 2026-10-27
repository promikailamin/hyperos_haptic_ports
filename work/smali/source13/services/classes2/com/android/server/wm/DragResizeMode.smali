.class Lcom/android/server/wm/DragResizeMode;
.super Ljava/lang/Object;
.source "DragResizeMode.java"


# static fields
.field static final DRAG_RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field static final DRAG_RESIZE_MODE_FREEFORM:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isModeAllowedForRootTask(Lcom/android/server/wm/Task;I)Z
    .registers 5
    .param p0, "rootTask"    # Lcom/android/server/wm/Task;
    .param p1, "mode"    # I

    .line 40
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_e

    .line 44
    return v0

    .line 42
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
