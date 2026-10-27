.class public Lcom/android/server/companion/datasync/DataSyncProcessor$2;
.super Landroid/companion/IOnTransportsChangedListener$Stub;
.source "DataSyncProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datasync/DataSyncProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datasync/DataSyncProcessor;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/server/companion/datasync/DataSyncProcessor$2;->this$0:Lcom/android/server/companion/datasync/DataSyncProcessor;

    invoke-direct {p0}, Landroid/companion/IOnTransportsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransportsChanged(Ljava/util/List;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/android/server/companion/datasync/DataSyncProcessor$2;->this$0:Lcom/android/server/companion/datasync/DataSyncProcessor;

    invoke-static {p0, p1}, Lcom/android/server/companion/datasync/DataSyncProcessor;->-$$Nest$mbroadcastMetadata(Lcom/android/server/companion/datasync/DataSyncProcessor;Ljava/util/List;)V

    return-void
.end method
