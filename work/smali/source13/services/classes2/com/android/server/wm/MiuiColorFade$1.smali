.class Lcom/android/server/wm/MiuiColorFade$1;
.super Ljava/lang/Object;
.source "MiuiColorFade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiColorFade;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiColorFade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiColorFade;

    .line 171
    iput-object p1, p0, Lcom/android/server/wm/MiuiColorFade$1;->this$0:Lcom/android/server/wm/MiuiColorFade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade$1;->this$0:Lcom/android/server/wm/MiuiColorFade;

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->-$$Nest$fgetmPrepared(Lcom/android/server/wm/MiuiColorFade;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/MiuiColorFade$1;->this$0:Lcom/android/server/wm/MiuiColorFade;

    invoke-static {v0}, Lcom/android/server/wm/MiuiColorFade;->-$$Nest$fgetmColorFadeLevel(Lcom/android/server/wm/MiuiColorFade;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiColorFade;->draw(F)Z

    .line 177
    :cond_11
    return-void
.end method
