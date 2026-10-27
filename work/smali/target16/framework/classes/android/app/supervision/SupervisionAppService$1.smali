.class Landroid/app/supervision/SupervisionAppService$1;
.super Landroid/app/supervision/ISupervisionListener$Stub;
.source "SupervisionAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/SupervisionAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/supervision/SupervisionAppService;


# direct methods
.method constructor blacklist <init>(Landroid/app/supervision/SupervisionAppService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-direct {p0}, Landroid/app/supervision/ISupervisionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSetSupervisionEnabled(IZ)V
    .registers 3

    .line 62
    if-eqz p2, :cond_8

    .line 63
    iget-object p1, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-virtual {p1}, Landroid/app/supervision/SupervisionAppService;->onSupervisionEnabled()V

    goto :goto_d

    .line 65
    :cond_8
    iget-object p1, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-virtual {p1}, Landroid/app/supervision/SupervisionAppService;->onSupervisionDisabled()V

    .line 67
    :goto_d
    return-void
.end method
