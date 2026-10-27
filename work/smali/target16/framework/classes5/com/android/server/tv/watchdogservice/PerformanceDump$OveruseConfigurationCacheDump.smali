.class public final Lcom/android/server/tv/watchdogservice/PerformanceDump$OveruseConfigurationCacheDump;
.super Ljava/lang/Object;
.source "PerformanceDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/watchdogservice/PerformanceDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OveruseConfigurationCacheDump"
.end annotation


# static fields
.field public static final blacklist GENERIC_IO_THRESHOLDS_BY_COMPONENT:J = 0x20b00000005L

.field public static final blacklist IO_THRESHOLDS_BY_PACKAGE:J = 0x20b00000006L

.field public static final blacklist PACKAGES_BY_APP_CATEGORY:J = 0x20b00000004L

.field public static final blacklist SAFE_TO_KILL_SYSTEM_PACKAGES:J = 0x20900000001L

.field public static final blacklist SAFE_TO_KILL_VENDOR_PACKAGES:J = 0x20900000002L

.field public static final blacklist THRESHOLDS_BY_APP_CATEGORY:J = 0x20b00000007L

.field public static final blacklist VENDOR_PACKAGE_PREFIXES:J = 0x20900000003L


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
