.class public final synthetic Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServerInitThreadPool;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServerInitThreadPool;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/SystemServerInitThreadPool;

    iput-object p2, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v1, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1, p0}, Lcom/android/server/SystemServerInitThreadPool;->$r8$lambda$pX73o5PM2Q_I4va9TP2zr55_hqQ(Lcom/android/server/SystemServerInitThreadPool;Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
