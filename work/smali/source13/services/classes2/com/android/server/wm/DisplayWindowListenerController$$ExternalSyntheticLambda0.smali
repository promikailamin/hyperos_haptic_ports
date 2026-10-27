.class public final synthetic Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IntArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IntArray;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayWindowListenerController;->lambda$registerListener$0(Landroid/util/IntArray;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
