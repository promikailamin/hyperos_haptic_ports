.class Lcom/android/server/app/GameServiceProviderInstanceImpl$3;
.super Ljava/lang/Object;
.source "GameServiceProviderInstanceImpl.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameServiceProviderInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 106
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransientSystemBarsVisibilityChanged(IZZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "visible"    # Z
    .param p3, "wereRevealedFromSwipeOnSystemBar"    # Z

    .line 112
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monTransientSystemBarsVisibilityChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZZ)V

    .line 114
    return-void
.end method
