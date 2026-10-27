.class public Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$6;
.super Ljava/lang/Object;
.source "SenseProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

.field public final synthetic val$targetUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V
    .registers 3

    .line 976
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$6;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$6;->val$targetUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    if-eqz p2, :cond_a

    .line 981
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$6;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$6;->val$targetUserId:I

    invoke-static {p1, p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V

    return-void

    .line 983
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to change user, still: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$6;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
