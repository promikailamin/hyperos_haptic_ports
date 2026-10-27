.class public Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$1;
.super Ljava/lang/Object;
.source "AutoclickIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->-$$Nest$fgetmPaint(Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x10602c6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
