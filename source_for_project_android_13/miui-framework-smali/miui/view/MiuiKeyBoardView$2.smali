.class Lmiui/view/MiuiKeyBoardView$2;
.super Ljava/lang/Object;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/MiuiKeyBoardView;


# direct methods
.method constructor blacklist <init>(Lmiui/view/MiuiKeyBoardView;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/view/MiuiKeyBoardView;

    .line 381
    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView$2;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 383
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$2;->this$0:Lmiui/view/MiuiKeyBoardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/view/MiuiKeyBoardView;->-$$Nest$mshowPreviewAnim(Lmiui/view/MiuiKeyBoardView;Z)V

    .line 384
    return-void
.end method
