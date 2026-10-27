.class public Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
.super Ljava/lang/Object;
.source "AppSnapshotLoader.java"


# instance fields
.field public final mForceLoadReducedJpeg:Z

.field public final mScale:F


# direct methods
.method public constructor <init>(FZ)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    .line 73
    iput-boolean p2, p0, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    return-void
.end method
