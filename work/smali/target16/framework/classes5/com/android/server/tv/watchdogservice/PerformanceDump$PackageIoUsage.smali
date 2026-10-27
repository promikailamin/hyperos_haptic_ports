.class public final Lcom/android/server/tv/watchdogservice/PerformanceDump$PackageIoUsage;
.super Ljava/lang/Object;
.source "PerformanceDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/watchdogservice/PerformanceDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageIoUsage"
.end annotation


# static fields
.field public static final blacklist FORGIVEN_OVERUSES:J = 0x10300000003L

.field public static final blacklist FORGIVEN_WRITE_BYTES:J = 0x10b00000002L

.field public static final blacklist HISTORICAL_NOT_FORGIVEN_OVERUSES:J = 0x10300000004L

.field public static final blacklist IO_OVERUSE_STATS:J = 0x10b00000001L

.field public static final blacklist TOTAL_TIMES_KILLED:J = 0x10300000005L


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

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
