.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$2:Z

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$dump$21(Ljava/io/PrintWriter;Ljava/lang/String;ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method
