.class Lmiui/app/ToggleManager$15;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$QuietModeEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor blacklist <init>(Lmiui/app/ToggleManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/app/ToggleManager;

    .line 1230
    iput-object p1, p0, Lmiui/app/ToggleManager$15;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onQuietModeEnableChange(Z)V
    .registers 3
    .param p1, "isMode"    # Z

    .line 1233
    iget-object v0, p0, Lmiui/app/ToggleManager$15;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-$$Nest$mupdateQuietModeToggle(Lmiui/app/ToggleManager;)V

    .line 1234
    return-void
.end method
