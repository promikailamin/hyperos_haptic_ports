.class Lmiui/view/MiuiKeyBoardView$1;
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

    .line 245
    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 248
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-static {v0}, Lmiui/view/MiuiKeyBoardView;->-$$Nest$monKeyBoardDelete(Lmiui/view/MiuiKeyBoardView;)V

    .line 249
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void
.end method
