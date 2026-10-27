.class Lmiui/view/AutoDisableScreenbuttonsFloatView$1;
.super Ljava/lang/Object;
.source "AutoDisableScreenbuttonsFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/AutoDisableScreenbuttonsFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/view/AutoDisableScreenbuttonsFloatView;


# direct methods
.method constructor blacklist <init>(Lmiui/view/AutoDisableScreenbuttonsFloatView;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/view/AutoDisableScreenbuttonsFloatView;

    .line 21
    iput-object p1, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;->this$0:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 23
    iget-object v0, p0, Lmiui/view/AutoDisableScreenbuttonsFloatView$1;->this$0:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    .line 24
    return-void
.end method
