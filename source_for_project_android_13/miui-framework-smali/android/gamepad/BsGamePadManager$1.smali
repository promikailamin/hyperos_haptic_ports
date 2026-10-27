.class Landroid/gamepad/BsGamePadManager$1;
.super Landroid/gamepad/IExtraTouchIdListener$Stub;
.source "BsGamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/BsGamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/gamepad/BsGamePadManager;


# direct methods
.method constructor blacklist <init>(Landroid/gamepad/BsGamePadManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/gamepad/BsGamePadManager;

    .line 35
    iput-object p1, p0, Landroid/gamepad/BsGamePadManager$1;->this$0:Landroid/gamepad/BsGamePadManager;

    invoke-direct {p0}, Landroid/gamepad/IExtraTouchIdListener$Stub;-><init>()V

    return-void
.end method
