.class public Lcom/android/server/companion/datasync/DataSyncProcessor$1;
.super Landroid/companion/IOnMessageReceivedListener$Stub;
.source "DataSyncProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datasync/DataSyncProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datasync/DataSyncProcessor;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/server/companion/datasync/DataSyncProcessor$1;->this$0:Lcom/android/server/companion/datasync/DataSyncProcessor;

    invoke-direct {p0}, Landroid/companion/IOnMessageReceivedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(I[B)V
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor$1;->this$0:Lcom/android/server/companion/datasync/DataSyncProcessor;

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/datasync/DataSyncProcessor;->-$$Nest$monReceiveMetadataUpdate(Lcom/android/server/companion/datasync/DataSyncProcessor;I[B)V

    return-void
.end method
