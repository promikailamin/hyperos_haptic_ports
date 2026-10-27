.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/server/am/UserController;->$r8$lambda$Kgm63PlLNBrz4db2R4J4MUaXruY(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    return-void
.end method
