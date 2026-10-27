.class public final synthetic Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/pm/ActivityInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Landroid/content/pm/ActivityInfo;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/WindowProcessController;

    iput p2, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;->f$3:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/WindowProcessController;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda15;->f$3:Landroid/content/pm/ActivityInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/WindowProcessController;->$r8$lambda$5iTmt6a3B6nx6bydJqO8TlUE190(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method
