.class Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WindowMagnificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 143
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 147
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->removeMagnificationButton(I)Z

    .line 148
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 149
    return-void
.end method
