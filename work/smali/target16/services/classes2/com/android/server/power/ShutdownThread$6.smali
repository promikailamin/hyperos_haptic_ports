.class public Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .registers 2

    .line 833
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .registers 6

    const/16 v0, 0x64

    if-ltz p1, :cond_25

    if-ge p1, v0, :cond_25

    int-to-double v0, p1

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x14

    .line 840
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x104094c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 842
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetsInstance()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/android/server/power/ShutdownThread;->-$$Nest$msetRebootProgress(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    return-void

    :cond_25
    if-ne p1, v0, :cond_3b

    .line 844
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x104094e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 846
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetsInstance()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/android/server/power/ShutdownThread;->-$$Nest$msetRebootProgress(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_3b
    return-void
.end method
