.class Lmiui/view/ScreenView$1;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method constructor blacklist <init>(Lmiui/view/ScreenView;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/view/ScreenView;

    .line 249
    iput-object p1, p0, Lmiui/view/ScreenView$1;->this$0:Lmiui/view/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 251
    iget-object v0, p0, Lmiui/view/ScreenView$1;->this$0:Lmiui/view/ScreenView;

    invoke-static {v0}, Lmiui/view/ScreenView;->-$$Nest$mstartHideSlideBar(Lmiui/view/ScreenView;)V

    .line 252
    return-void
.end method
