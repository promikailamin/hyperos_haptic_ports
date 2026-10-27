.class public Lmiui/drm/DrmManager$TrialLimits;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrialLimits"
.end annotation


# instance fields
.field public whitelist endTime:J

.field public whitelist startTime:J


# direct methods
.method constructor blacklist <init>(JJ)V
    .registers 5
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide p1, p0, Lmiui/drm/DrmManager$TrialLimits;->startTime:J

    .line 146
    iput-wide p3, p0, Lmiui/drm/DrmManager$TrialLimits;->endTime:J

    .line 147
    return-void
.end method
