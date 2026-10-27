.class public abstract Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.super Ljava/lang/Object;
.source "PackageManagerLocalImpl.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mClosed:Z

.field public mSnapshot:Lcom/android/server/pm/Computer;

.field public final mUnowned:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Z)V
    .registers 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    check-cast p1, Lcom/android/server/pm/Computer;

    iput-object p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 148
    iput-boolean p2, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mUnowned:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ZLcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Z)V

    return-void
.end method


# virtual methods
.method public checkClosed()V
    .registers 2

    .line 170
    iget-boolean p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mClosed:Z

    if-nez p0, :cond_5

    return-void

    .line 171
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Snapshot already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mClosed:Z

    .line 155
    iget-boolean v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mUnowned:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    return-void
.end method
