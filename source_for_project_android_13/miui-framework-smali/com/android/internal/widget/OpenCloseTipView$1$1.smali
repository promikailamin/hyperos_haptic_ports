.class Lcom/android/internal/widget/OpenCloseTipView$1$1;
.super Ljava/lang/Object;
.source "OpenCloseTipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/OpenCloseTipView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/widget/OpenCloseTipView$1;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/OpenCloseTipView$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/internal/widget/OpenCloseTipView$1;

    .line 56
    iput-object p1, p0, Lcom/android/internal/widget/OpenCloseTipView$1$1;->this$1:Lcom/android/internal/widget/OpenCloseTipView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 59
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getFirstUseTipConfirmTimes()I

    move-result v0

    .line 60
    .local v0, "confirmTimes":I
    add-int/lit8 v0, v0, 0x1

    .line 61
    const/4 v1, 0x3

    if-ge v0, v1, :cond_c

    .line 62
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->setFirstUseTipConfirmTimes(I)V

    .line 64
    :cond_c
    return-void
.end method
