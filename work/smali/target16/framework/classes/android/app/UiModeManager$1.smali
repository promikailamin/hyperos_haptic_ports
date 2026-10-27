.class Landroid/app/UiModeManager$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/UiModeManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/UiModeManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1077
    iput-object p1, p0, Landroid/app/UiModeManager$1;->this$0:Landroid/app/UiModeManager;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 1082
    iget-object v0, p0, Landroid/app/UiModeManager$1;->this$0:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/app/UiModeManager;->-$$Nest$mgetCurrentModeTypeFromServer(Landroid/app/UiModeManager;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1077
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/app/UiModeManager$1;->apply(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
