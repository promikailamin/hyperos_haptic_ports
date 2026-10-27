.class public Lcom/android/server/am/UserController$3;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# instance fields
.field public final synthetic val$initializeUser:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V
    .registers 3

    .line 1036
    iput-object p2, p0, Lcom/android/server/am/UserController$3;->val$initializeUser:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8

    .line 1042
    iget-object p0, p0, Lcom/android/server/am/UserController$3;->val$initializeUser:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
