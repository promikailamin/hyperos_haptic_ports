.class public Lcom/android/server/pm/StagingManager$2;
.super Landroid/content/BroadcastReceiver;
.source "StagingManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/StagingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/StagingManager;)V
    .registers 2

    .line 821
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$2;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 824
    iget-object p2, p0, Lcom/android/server/pm/StagingManager$2;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-virtual {p2}, Lcom/android/server/pm/StagingManager;->onBootCompletedBroadcastReceived()V

    .line 825
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
