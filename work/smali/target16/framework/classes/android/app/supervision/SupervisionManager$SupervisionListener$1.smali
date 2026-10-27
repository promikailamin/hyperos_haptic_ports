.class Landroid/app/supervision/SupervisionManager$SupervisionListener$1;
.super Landroid/app/supervision/ISupervisionListener$Stub;
.source "SupervisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/SupervisionManager$SupervisionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/supervision/SupervisionManager$SupervisionListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/supervision/SupervisionManager$SupervisionListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Landroid/app/supervision/SupervisionManager$SupervisionListener$1;->this$0:Landroid/app/supervision/SupervisionManager$SupervisionListener;

    invoke-direct {p0}, Landroid/app/supervision/ISupervisionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSetSupervisionEnabled(IZ)V
    .registers 3

    .line 60
    if-eqz p2, :cond_8

    .line 61
    iget-object p2, p0, Landroid/app/supervision/SupervisionManager$SupervisionListener$1;->this$0:Landroid/app/supervision/SupervisionManager$SupervisionListener;

    invoke-virtual {p2, p1}, Landroid/app/supervision/SupervisionManager$SupervisionListener;->onSupervisionEnabled(I)V

    goto :goto_d

    .line 63
    :cond_8
    iget-object p2, p0, Landroid/app/supervision/SupervisionManager$SupervisionListener$1;->this$0:Landroid/app/supervision/SupervisionManager$SupervisionListener;

    invoke-virtual {p2, p1}, Landroid/app/supervision/SupervisionManager$SupervisionListener;->onSupervisionDisabled(I)V

    .line 65
    :goto_d
    return-void
.end method
