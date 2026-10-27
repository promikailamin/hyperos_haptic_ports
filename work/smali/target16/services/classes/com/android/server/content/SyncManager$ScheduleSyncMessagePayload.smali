.class public Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
.super Ljava/lang/Object;
.source "SyncManager.java"


# instance fields
.field public final minDelayMillis:J

.field public final syncOperation:Lcom/android/server/content/SyncOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncOperation;J)V
    .registers 4

    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1550
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 1551
    iput-wide p2, p0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    return-void
.end method
