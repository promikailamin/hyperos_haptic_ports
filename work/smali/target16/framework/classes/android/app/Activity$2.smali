.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/window/ObserverOnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1932
    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBackCancelled()V
    .registers 1

    .line 1944
    return-void
.end method

.method public whitelist onBackInvoked()V
    .registers 2

    .line 1940
    iget-object v0, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1941
    return-void
.end method

.method public whitelist onBackStarted(Landroid/window/BackEvent;)V
    .registers 2

    .line 1935
    iget-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onUserInteraction()V

    .line 1936
    return-void
.end method
