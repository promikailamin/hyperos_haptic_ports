.class public final Lcom/android/server/tv/watchdogservice/PerformanceDump$IoOveruseStats;
.super Ljava/lang/Object;
.source "PerformanceDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/watchdogservice/PerformanceDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IoOveruseStats"
.end annotation


# static fields
.field public static final blacklist DURATION:J = 0x10300000004L

.field public static final blacklist KILLABLE_ON_OVERUSE:J = 0x10800000001L

.field public static final blacklist REMAINING_WRITE_BYTES:J = 0x10b00000002L

.field public static final blacklist START_TIME:J = 0x10300000003L

.field public static final blacklist TOTAL_OVERUSES:J = 0x10300000006L

.field public static final blacklist WRITTEN_BYTES:J = 0x10b00000005L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/tv/watchdogservice/PerformanceDump;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
