.class public Lcom/android/server/accessibility/autoclick/AutoclickController$4;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$4;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$4;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mhandleScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V

    .line 406
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$4;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmContinuousScrollHandler(Lcom/android/server/accessibility/autoclick/AutoclickController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
