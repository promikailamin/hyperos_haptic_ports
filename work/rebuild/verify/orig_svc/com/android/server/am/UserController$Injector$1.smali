.class public Lcom/android/server/am/UserController$Injector$1;
.super Lcom/android/server/am/PreBootBroadcaster;
.source "UserController.java"


# instance fields
.field public final synthetic val$onFinish:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLjava/lang/Runnable;)V
    .registers 7

    .line 4611
    iput-object p6, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/am/PreBootBroadcaster;-><init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Z)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .registers 1

    .line 4614
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
