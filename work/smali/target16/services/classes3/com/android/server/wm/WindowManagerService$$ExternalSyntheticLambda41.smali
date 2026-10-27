.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda41;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda41;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    check-cast p2, Landroid/os/Message;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$RAy_L4Ygm2_OX2ZhJeJN5aCG1qo(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowContainer;Landroid/os/Message;)V

    return-void
.end method
